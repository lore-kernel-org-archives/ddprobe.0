Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519DB3BBE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738998954; cv=none; b=dFQfSGLkTzYtMH9dfXP9fmF1DGBBVz6/+ZAoARV9gbdapsCAWsbtEtHHz9Ih2ykYofRVhDkpMeX8hz+jvJDHvT8e8eNGmxdd28TV9qrBcZ+ES9twWhMOeaQJ6YKu41oIN+6wnzIoysFob2svWG2V8ShLqpMSHW3p79MGDiEwIjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738998954; c=relaxed/simple;
	bh=kKhchyfghKeuij/PPzy/IGE3AzaMBFbbl8kumCLSU8U=;
	h=To:Subject:From:Message-Id:Date; b=FsP3jOOPzftf8At94cmgBPm3blCUJ3mTHCfq5c/4LXQjwFnP0gzx6kXKutJKu4bN8ol67p68fYtVe5xtZyplDvFy5KwZYLWdYja6FwM2J3QjoyxMWIGPdrNHBk/6Gdu+jr/xjhhU7iOTxEH6YuGyguxFChvWPGo2G5KJ6GSCpHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZVfhN0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZVfhN0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19CAC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738998953;
	bh=kKhchyfghKeuij/PPzy/IGE3AzaMBFbbl8kumCLSU8U=;
	h=To:Subject:From:Date:From;
	b=NZVfhN0uOdIcU4OMrNaOlAmX3VDDcC9XB11mHAsUsfAMRaqRfHG39q59gNceiIuxY
	 ap7TWm6z8LbFf/M/bBc8OMo2SPEo44SxDgcNjMg3dBamjMjA+kMxFxpwdHA+IHHFJ6
	 c2sFZArRyyEKDz/BwhuPRqpHunLJESjBBsX+7T40omeik0GcOqt1FLhBlep9vM66R+
	 lUb8O9tbybFxr0q5PXnpNbnXjG4bXEj4hsWrFVvOsKLPTrPxgyjntNXnMDEXLUb9ai
	 0PqWpGrcmr6RyNoF5+1uzV3o9wbjhfh109M66DASON3z850r5GWyP9QrP3WdbyVbud
	 BmspfKVmQqhRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9866C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173899895368.12006.4785747628117825198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7c74afec9f02dbbb2a0cf1c20568296ec63ad9ce4e537c91a1d4f26d06c48a
Date: Sat, 08 Feb 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738998953
