Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602B774BF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719602663; cv=none; b=feYy+GcrG0AUNVJGgYBmkENv9u3RsKdufok93xy03U8oyEIYsUKdXBkuRJ6VUl8vLpTm2FvMP+gT+Gbm9Td164tbyLJFYzOCROFCLdF81yhFHxObqhQ/jzzifSSkQrOSKh/j+Yw+OI+rjf4E/RTgju/7V3fTmD4Nja+ssa5GFOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719602663; c=relaxed/simple;
	bh=BM3F/IZisN/hky1Xy38agIF/ze2qL2S80szlm/nO0Us=;
	h=To:Subject:From:Message-Id:Date; b=ttyKatBl774KfeOum4mcvoP6qhRlt/ew+ux1UtIK2IZ9o2SeQFDZzcd9dwErrx/5Bqrn9i015t5NdOHFkEb/v/UeZ4a/H/bQjAkDvaOPaaoO1lFmysu8nQ3gWHBAzj6FXEwVmemvfxCYnId1cuueVQtTthjMTSZpbxFdIuvtAqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHtlNeAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHtlNeAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01E0C32789
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719602662;
	bh=BM3F/IZisN/hky1Xy38agIF/ze2qL2S80szlm/nO0Us=;
	h=To:Subject:From:Date:From;
	b=tHtlNeAfjYJEpOcY0lYk5jgsNFdKLRmZSdwD+rkBQPh3v3toVvOBjQenGGDGWuUvD
	 BVXdbZOd/uwAO1ab0ZWRPxYx0WwYwj51Ryfw17P1J9DolXIxCD8VnoIltdDkpD68jt
	 PBRxNW3SiUyT2NrFxCZceipVjIgxVDpPNMXx405biMFhIrn8G7dQ3jAjNvJqdQkXXY
	 PHJeOMPYTJ8LRersbeDua1zpwcSH0jjuxCo2v//VJPgiZruvkj65xzTo5U7KgvAN1S
	 Q6DcV05HX+sE7HkZaVlSWw8zAmBV0U2elCo9bIKREoqIWkQJcFe/yMPCNRk+A3ApWe
	 MUM6vMYfXzq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B11C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 19:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960266280.8273.17700524212836752213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eec375bf8a16a2ee8f7570d70c8ce827445580b0d3a554e3d8f1243e39bd2b3
Date: Fri, 28 Jun 2024 19:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719602662
