Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA8934D385
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761855594; cv=none; b=rHqT5kWVtD+vNIiwwATW81QzkV4IcqQTEohn75erWcBMrJQwifT1RcO/hx4v5VZHe+kbkzpS7tqW/0W8WdB3m5riQAedgJ7TMVUm8ruIxQlGZrMJQtwUcihn71EZWoe9ikImZ7Czx12Eg368bn0KbaJDJ3PAFdyFTPkCBRwaKDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761855594; c=relaxed/simple;
	bh=/5cOGvNCB2xKWf9/8A3iBMjiHWTPiAyS36lWERq48/M=;
	h=To:Subject:From:Message-Id:Date; b=kfXL8HjNwhMbH0GvO6kuG2dANSLzLCJMIna1SDGcbqXjA881dTB29xA+BmS7MmYGXbnUJz6lyWyQIKSHX663CyNM5XTllj+z2nAZy8gVVoI3jc1IL4PQ/DCswbMRP+SG/c8YsOs2wuY+1Sk93HWZ7Zt9/XxPMLJDhnPXIJChLFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR/2/9/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR/2/9/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A083EC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761855593;
	bh=/5cOGvNCB2xKWf9/8A3iBMjiHWTPiAyS36lWERq48/M=;
	h=To:Subject:From:Date:From;
	b=FR/2/9/FEQy2E2i6/p5TN1M98hs/dikHIm5VBOi/P3ATqnB/mWAXmoVAAbbqDSm7/
	 ggyWE7R0L2hvtyTzd66YRMA/QxKSI0Ud8rpd06EJZPI6DIWbhZP5MPKgrQA1rZrenv
	 p9wt7a0rcmTa457QJU9naSY4n4Lzv6ibvujJBI63gzi/Vf0bYkOUFFZa+dnZUoLvth
	 LuLxMfzLVDL4XZ5Jy9YBIE08dOiFkqkj1WgznTXpOIgjc5XOlGa2ORfEnwtIR5pGeT
	 t292xNR2/pUSG7aT2ZU/MgAfLkJPyxYOiD5SZLUUGRRTMozZ+j6KcwSuvRThBAXjVi
	 GirWDxnL6xK9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A32CCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185559358.16014.16231668850739642806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23710c0ad720d920804444888f11ce988826a8acac962f6a6936418fb0c9cde5
Date: Thu, 30 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761855593
