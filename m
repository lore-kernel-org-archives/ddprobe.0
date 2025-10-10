Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222F61DFE26
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760072394; cv=none; b=WbsxGba4DJNN9u9YcaP6R2MPL0jsdFK5ii8QhlmE/aH0lQAgquIysEDmvF5yWryb3L0u5WZi0nNAvO6qVIzZvNiuryBncLP3HR2BtbZyxVGdsMM4nkETZQzmSeNhy0lCO7r2wjZBR3EhSkpYvVUioKHUAoecdX4A1wSPCfZpOIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760072394; c=relaxed/simple;
	bh=dko0uZlXwptJAAH/q7tBi4tJR4cBbj3FDGAVtyW01UA=;
	h=To:Subject:From:Message-Id:Date; b=VhMOIPNd4ZyF2LR8XYyO4JJdpuW78CAxPmyYAC3Ngtpoy+/mukn3cUSYyFU+h303TZxv01KV/nh6aDQEz1bzr5KjKrFL03o0nGka2HDZTCmUXQqdzOqPH5KyFe3yoK8KzgszwN2j1oxgzf48cv4kCCDdVRrrYtX5O3Dw1eZ1Ad8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGGpfXcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGGpfXcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED5C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760072393;
	bh=dko0uZlXwptJAAH/q7tBi4tJR4cBbj3FDGAVtyW01UA=;
	h=To:Subject:From:Date:From;
	b=nGGpfXcuixzEWkSqy1/L7q/OS4Xygh86FDZMFY0i9ZfbG6+795/WVsVMxCKb4c0vD
	 d+xwRghuVU0+zGZnod079vX/FBFZhq+LHoPC/B4i1kEFxVijSZggvxSm9yW+LTH7Kp
	 gs54ZFWQnkXir6KzrlvkZiWuP+SOuugzcIR3ihzUbJsUXpCm2VxEpNvNDbIER04w6H
	 xnw6errEVS3eNEmqONZtRy7aB7RtU4gbXLwK2eSYeaSstZlyf8y6rfRfbMOTu0jxHA
	 6En1fNJR6E34Hm3RGuqF36lQcqHkxumAFctNSr3OpB1Rsr6nw0IPm1zB/oSX5pTqs5
	 LtiPZGRWKrJxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02FCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007239357.29335.15263365616806528232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234d99d800b669224ca693b36512a2e3e95e6d0b206ddef883c85aa939f204cd
Date: Fri, 10 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760072393
