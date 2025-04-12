Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559F618BC1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744443594; cv=none; b=bL/diX9KdowEZ7mVPCU3n9jxvA3Cb7fSZdI8A9Jb5gnBvNrfxko/cTv9jgHJpJQc4LuMO12cNMBIT3pQQi9W4UgqqSw43rnxqRgpOxDhKctHHxwhao2FwbC5F9P2Fw+Qxb4/eftM7GppREUUCe/NQVHuXp8VLqaFIEOw6r2VT6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744443594; c=relaxed/simple;
	bh=ECNGtyaecDLbJaoOHuzZJB2sVWvcPPxLz15aPbNPwzw=;
	h=To:Subject:From:Message-Id:Date; b=oAZsEOvCTJncl3AFxiQbXM6rg6kF4UaRmUkgdmawP+0Wm/1PL8jnxDa8f/UFVOg92C8d4ewiSR1HTs8m/OShRX6iOvxFwLetZPhnN+pPyH8JXfOaBpXX+fJyHx3vSyU78wPoqLXewpBj/TYXUwKonT/8If49BOLLpdLipFsbZ9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORKmhPa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORKmhPa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2A4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744443593;
	bh=ECNGtyaecDLbJaoOHuzZJB2sVWvcPPxLz15aPbNPwzw=;
	h=To:Subject:From:Date:From;
	b=ORKmhPa/zNhik2Gc3JsM2wy+x+0swy2vEPXWr+iFbPNjm/zu9Vt4uh2zQbKO/qBHM
	 IqrTa5OnL9h5OrFzAEgSprEr4jzszaxRLMiKJUTMxIFTCDmaKPoY9nPjaO7emMTJ3U
	 Fopf1mx5wobyVL6mHVo3PCiP3H5zCz5RTEBYQukvOoYefec3v9bU52MNPWzkV2wAkH
	 huCBTe8wnwQ9+LRjSIx323pZcqc8HsGMRseyPuV1WzhCkEj8VubobLVzVt20KlbBl8
	 CmJ/mJDj+fzkQsDoHFAtGBqy3OrPKhMC8RxMMOGLd9GXoHepTiq9QFNpvNBzl/e+D9
	 e/mAZaASZcqiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F89C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444359358.26935.11539423806944231113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b6bfb27759a5316d99f2d03b14283f2bfd45feac38e28e93baee7e841145f34
Date: Sat, 12 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744443593
