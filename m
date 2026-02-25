Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C9C2D0C84
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772055294; cv=none; b=ZFQoDGKxLrpUSjpGHQQWa9cfAXZuGFdpH8G/bnRx9ntFnR+0d08jF/Mhr/DuynZlE2iI0/g7//RES6BeCwRIIsBIYzJJdlIh8S8oSsfEkgf9/xoOc7QlZ9DN0z6rdHb6+mHB+BB6C20ql7NHJmfgR4XaW7SiC9pt7S8qSvl0RiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772055294; c=relaxed/simple;
	bh=1nru9R8kCezkJN3PxVJWmUNXulZMbgaj53Cby3u+aQ4=;
	h=To:Subject:From:Message-Id:Date; b=O18pGkkf5yDvzz28q6CogTFsnS1PkR3S/EfEtoGbngsYC+C75hHB41ZhHq/MELgTnly2AxOgV091ls/W6q5GnewZQEH14+T32SlMR4hIvhgYXJ2cAVLHSo8ZKG6VpQKYNDB6bU30uPou18x5RXlksoh9qncxGRF2fSpZhFbnxc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3wO6ABQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3wO6ABQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2457C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772055293;
	bh=1nru9R8kCezkJN3PxVJWmUNXulZMbgaj53Cby3u+aQ4=;
	h=To:Subject:From:Date:From;
	b=Z3wO6ABQrcZ43IEfwZDoSxH+PesstpZFU5sKF+8h9607ijFpX4+jM86JzzpuX5C6N
	 5VQsaPtv5dwPdrz3lS90HwMRtBK/WAw48gyi0GCuEGTwz81RGJLC+H9Aco7hzbZDin
	 EEXMU0e4p52R5FqWeSWdbdBvinYGF1Wtvrfk8KtCsxiq3InDzJ6mNecm4vGeqr0cb0
	 Uct2p2C+PFMlKqrVpkKXAft0XpAga/CVuO2ZSfnSkYE3b8wW2TwdR5iw7lGjSaaOgf
	 EouNwKyMEz6IUH03pKuEkkIfIpngkOISgoIexmocEBva1EdSGZuJXjnkIcuycpl0Jq
	 QJ7OM/mu9aaxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9280BFD45F1
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205529359.26082.1299827094232572561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d56ab4b2db89551bb7925115348454a4f729d06feb577539bab36e3ba50839
Date: Wed, 25 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772055293
