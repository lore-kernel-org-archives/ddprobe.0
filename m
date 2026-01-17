Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B6B143C61
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768665234; cv=none; b=RZDc9sAoBgpf9VNNPPL6XMhPSDW7WULdcQ8apkS1Gx/aZYzE58oYn6etP6NNoKBskUpiPqmufZFSATpO3PEdo9UnBu+DV84QxVqFgETXmaRspKGnfXgbo1/6/SSVEez5eRfOdXCUW5rj7yukIQkLU5q1j87GTV51xbPckK8ua3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768665234; c=relaxed/simple;
	bh=iA9eAGn2YrDv/hsYOxAdOCBHsYGP6w93cT0UThQNvV8=;
	h=To:Subject:From:Message-Id:Date; b=YyR7a/LCSEo1fXnxRZ+TYvxBv4RK+7YKkMPEBT4532yZ7XIo017dY4aFNl+QoyJb9L+BmvfqFqdJ6SJTUIJNYLe/Nz/XLkm8eHdQbKbKgBLUSN6b4veFQzNu/YYd0/p6ufgJAD4GD+QUxMJdZ1Vqxlz08R/PQehO6BMlVDwFdr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSIqMPr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSIqMPr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9151C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768665233;
	bh=iA9eAGn2YrDv/hsYOxAdOCBHsYGP6w93cT0UThQNvV8=;
	h=To:Subject:From:Date:From;
	b=nSIqMPr8xcRmzuk274FQP/qdKZoo3qDQ6h/G6OtKKIyFNmUqjQI+pI6r3Flau79fp
	 0e1jlB6+0R+pY06jjRUANLY7m9wqi8BjUFkZRKh5rbLWceZQIJSnuf0w8y2epFUFYc
	 lcSSKdzcWb6Hhl19knBBB2sUgu8NF2XlICn25hAM5iqkYd6xmCP/6L35uRrHACDoUQ
	 eJreNGt5YZ4Sj55o9DBXKgVd8tbsYU7xZ/uujILtBWBDX8oc2Gt2/OoxEKzfYAstf8
	 m7gdCl6oHWdt6VVqSQz/X/tNTLY3/2HeRQfJpxU80QFTmA+WoVSSRt816OVmvg6FeQ
	 rJNVuwN0SjP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9719CC98316
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866523358.4667.13834731748897337935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a695a064a51f2e65c6c7c72aa03447a08fbf412fe52ffc8f7bbecfee43edb6b5
Date: Sat, 17 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768665233
