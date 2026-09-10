Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF953D9DDE
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789075235; cv=none; b=ch9GM/gFPnbW/jda90rq2zLBRTIwF2UxMJroqrrtgjCgf/YfZ9uJY6FhKJcWooATv7y0/wq5puD4CTy/KyMMJb7EN1CKOx7Csm3q4F44OwV+/XpAKpcErkq8BJPac9kGX8Knk8ay6Z1qhS4Un7aNkxbjsb1iVoXGxwuLRwFKga0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789075235; c=relaxed/simple;
	bh=o9pKV18ZH/xcWGD+CphHzfdKR/0xsq8mWpnRhdERtg4=;
	h=To:Subject:From:Message-Id:Date; b=jqbub/RCaHQfbN0gNSdck/rKQ9T3EndhyTgnPKmGizgcNFhFa8fFEB0/fHh4qpH0KIPEBFeN3CFzgmbQTHIFw8jdQyI6SExsCAxz9uhBF1/kkCwA9nTqxR4mrM20YTeMfizYGh30np/XhTCC7q/MJ3GN/kd8N3pe3x8h9n0mSUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=capTCeZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="capTCeZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE82BC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789075233;
	bh=o9pKV18ZH/xcWGD+CphHzfdKR/0xsq8mWpnRhdERtg4=;
	h=To:Subject:From:Date:From;
	b=capTCeZiZ6eABEPO0tai9NbQuQOl1vMXH0lnMPrqC6JoJqPBL6k8MIT+UaIuwM1lF
	 BTeLcW0oneq6atCNCsh5lOxCR090TlGsrdjuMaPxGs4NTNoXGiFxm83I1uqTLufW53
	 FlTzp2sKA+v/OdNGfa0qxRpF714ssnA7V3G3I7+tlNJw+8VCEDcqRfk3n5SOpsc9/j
	 Vvzbkhry1QS7NE83oq8o88hx7jutlp6YylDzinN54pdO4fEWfzfzEDoLCXUVX+SQrE
	 3EvdT+nRj7IMsPhugGoB2xc2NPxk/tWeqaNTqSf/OI1H4uoHgKpPRTVojJgLdT2n0q
	 OKTy55eg2kRAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1EEC88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907523369.12727.13120475371140923198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a74c769ea6024d30390a3b47193b6eeb0eaf22cc256b3f163e828eb0b0cc048
Date: Thu, 10 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789075233
