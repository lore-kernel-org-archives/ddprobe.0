Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D07344030
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774006494; cv=none; b=MinDlTki146wzcY1EEvSgPJnB69cGJUmKrOMYQAZOVmANEtE2Ehwy+OuItXGCdazSJgv/aBZDSu/gVecCL/RoEymGxjbensyqMoTKhJqqdKOMuLy+EJuEprE1T9ngO53+FkVFps9TPhU18yHOzU0m6T14CAOT/FLumdNfgy1foA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774006494; c=relaxed/simple;
	bh=zDZy41gmRvc8rxK0SxGaK1mksX38vlOk0Z7a2AZMRKM=;
	h=To:Subject:From:Message-Id:Date; b=kYuSj0Mex452Cc4g48KIqQoNeOuaY7dSUB53WeIGRvijy/kcwR5GPPJQXIt4McnFD1P0aoE5D4U1s+Rvsi6qLvg+6hxQHY0ubmPAxPCtWZh929Y0WmJ+bqQB3HR6Xa580i8jCmAd9E5uQjrWOEoDTn78QGIgKTIjL7dQnZ0MkwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TU+PNr/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU+PNr/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DD8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774006493;
	bh=zDZy41gmRvc8rxK0SxGaK1mksX38vlOk0Z7a2AZMRKM=;
	h=To:Subject:From:Date:From;
	b=TU+PNr/JWduAn8R+wA6P4K7GPHWXYf1qyE1KbXJ62X2i847jBSPsP6gsYqPI7g6Lh
	 vhXnltx/oLOzD9XZCrdX9XJt37tZKT7u6+Md7PfGevlaCL0n1u3mlfJ9/34/mDXzLN
	 O6NCBW6WmgGDRF3uuONwTghyEmStgmgEEMBAD2dU7dp74eW2QMPQkrRQpCAc3x1tzl
	 6DPAEN+PCjZpMivzcOR5lt9t8UKglVldHOiBgAS/NNBCmT9RluEFbqIJyvKt/ri/dN
	 t9LWDfS6ZcD7tv7iLgDXcgHNjMdWH5YHX+FtE4IkjaT5ky3mpZB18H70siVpCvixBe
	 A+ZG9mrG4TTqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B0108B901
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400649358.17715.14711079337796934011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb8ec19362a581d468ebabd149e2a75e7e75c757c4e3b192f828b8abaef5807
Date: Fri, 20 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774006493
