Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26451339B41
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763710914; cv=none; b=YYcfNJ9KkLaqgIGwILXFvuHQfJog+RZ4WMeZgGDwJon1fumsP5AR5kDNxPb7wldaFfMsI8780Z3rpEYNjS4VFqnlrSUIVY0M7946VUrEukfFOdTrXdCQoQlNxZddGa5iB4/F7PuQtco4TDUU8ZCOT+Nv8ud6LKBhL3Xwv9vDHZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763710914; c=relaxed/simple;
	bh=BqCz0GzmqO/BSQjgmfaLR8D51GVf86PLHiBqCkPIzA8=;
	h=To:Subject:From:Message-Id:Date; b=gUc6gRae0+FSZP7bbdT5kKbeCmGBn4OSc98x3ZejQdLUn9vLoi6kDjacv6X5hVLnYP7h9U8tOa789V+b24omVUfwyorJW0uCP6d7x75LohpwoQfyLkfpR2xxvaMS8sK4PPyti1Zwz1Lnvoba0Ge/q8DHrE2q4rjpRD36QjvfyV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gyg2hPX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gyg2hPX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97AEC113D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763710913;
	bh=BqCz0GzmqO/BSQjgmfaLR8D51GVf86PLHiBqCkPIzA8=;
	h=To:Subject:From:Date:From;
	b=Gyg2hPX/2c1+om2UNBwcC6EtoYJfdD8g5otS5Phwr0kQDZ4XOHDP8qxfQjbTXub+q
	 1hAe4G+WBFNWp2q/28/EElXdzuHSRBeitRxwSZkjiwcg1O5+pM1jdemy7PZoQf6opX
	 XDkBXiQFDHSuvJgdzYFloQg1HG2lK7fv70+L/9unkBQV7IE4uYXMKia7uwSvsNOACY
	 tIluqanAqN1MOzQX0mDPAeL1d24ABWWlYbq24IQ3ZX2JioaGFmltHsdsDRiT+nbFjq
	 jlJxP53L8roEb2lEzt/lrHbCkV4HWcv9LFXIa2Q13/SherRlcyUuuVqTaeWYrbg1Yl
	 i1wCWx++YG4YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92333CFA478
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176371091358.26772.15387958099148215899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6ae52c6feef4766f13bd24ab1410965c3303f5b1d53ab51f49c39090722fd6
Date: Fri, 21 Nov 2025 07:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763710913
