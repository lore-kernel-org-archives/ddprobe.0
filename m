Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323894206B
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745815194; cv=none; b=lr4VSodFZTZq/1wJWaisC6f/GlgnzO9CqzsgDifkTMMcw54veBdpXlUKTmGzppqztHA/OLvSjJ9s3YVLTs958R665RbqBrS6XC4ZwfMSs5dXgaw0Wp9DYBuaGVs/rGytx+R5+mMhxuJrP/+ZbCnpQ0ENWccnTqtMveCRAk86b7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745815194; c=relaxed/simple;
	bh=mRoJQrdaiBF/4r8rXkmZFj7ZWpsUPCxGfi4AY3o86f0=;
	h=To:Subject:From:Message-Id:Date; b=Q3ZjKy1RoinIuItVcQSA2xIFa79bkSPZgJW3EuFG54uTTWJhKxj82JBiWQEX3kLBpmj8Phj7w7HD3vjUoKO5WJrl9bp7Egd1Q2Eyga6Emov0uiLCH+Vi9BQKXqFbKW9rIUuEZr/gR4io90n86Mc03h4uU3Nx7yPyyJajuLbw5Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjOMWkgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjOMWkgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A079AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745815193;
	bh=mRoJQrdaiBF/4r8rXkmZFj7ZWpsUPCxGfi4AY3o86f0=;
	h=To:Subject:From:Date:From;
	b=ZjOMWkgYyWNLggiJm6n0gAkGLe3gvq2RLsBEpDwKfxVSpGbsjytqSaW3kMJJCDwWy
	 VgMcXpv7SPt6F6YoFhh1xm+RdGqZDwrRo62rv2H6U0HnBxAam4E2UebeP20uGIwa2y
	 LuR9j/Xe7CpEjlhApjZNDCU2vi2USUNdcyor2h90Y0OVOWZezqSAEs8x/B9YSTACfx
	 WUD5o1DrdJe3CE4qv6fd0dM3Eq5xFkqi2XHuS6sd5bf11JHUVYRwuouF0x3IFG8rqI
	 JNawt7o18VXzFPl9rAnwitTp2mxUTIrLn8x4zVrIS4weC41EOT7k2ZMm69yECgfRJr
	 IgP6jzCuWIx6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2EC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581519357.12068.5187119451615447103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0143258eac626da5eb29d2665be13d3fcb65d19aa89096c3a5c8eb1ad65a5e2
Date: Mon, 28 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745815193
