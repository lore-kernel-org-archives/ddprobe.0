Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284C12BE038
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754510395; cv=none; b=NLPEHXUOcWjO87sYFLoMbvekX6A+QuVZTG1vo1kuuly4gGWcXWVoja5D8SPMyNmGfBhOSH2YB8RjsH2FX7qI2bGJPBs7ZLga1iBe09rCAYXGZ2GoXzKtdkJLSqPEEWNIUs2fGiH1spw7XRCOgk7Hw1BvFQKYt90dBQHadllrRWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754510395; c=relaxed/simple;
	bh=SB+Rr1rRIDxkSVyjQ1m2gaWNi8iaNW+PIFmvbZa1Kwo=;
	h=To:Subject:From:Message-Id:Date; b=lGo7OVRp4V7wKuydBrEC7couxL7SecwmxXUooZ8bXbJIjKr0FRoFRIlc4jrvPMmO45hC9SFI9cxw9V5F/WOE2l6kZe41yogxBDtiXcw9VoE104wWeIZmXAIova4EdIfGOee6h3hXAR8kqnUAMVn+T3Nkf//kMjlePlVP02jGT7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGf6Pddx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGf6Pddx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B039C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754510393;
	bh=SB+Rr1rRIDxkSVyjQ1m2gaWNi8iaNW+PIFmvbZa1Kwo=;
	h=To:Subject:From:Date:From;
	b=TGf6Pddxvg+RIXH+y+gJ9k1c2W3grb/a+rHR0cx/Y3JO/CwvIUhd+gWsLnn5A0bh2
	 lE9Ufvp4USbzIE+RR5xUtmgepLxmFj40XmpcQkhsOnJfHcwwCvmggP5zdmHjBuPOo/
	 7HgDhz1Zgmdqi+XsOap1i3VWnzpnPeojiVkRhJ/a5JRsRRnl69MpfjeGQcCxOgisSf
	 rY9rYeSkW9jkGql+JlAT766GLAhQ9w0cCplbekyIuuHeTmwlmDYt4VnNXpi8QOBdgR
	 wJFy+ssUROGjpByv4Tjayte2ZwL3pjrv5KJJ0wJt4gJC85JAoNJJ/KNLl3FRn0Yf09
	 tNPtTifpAaYmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCD0C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451039357.4665.13477888228758450493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92706d5bd72c1bc7ea18d04e17dc931fff45cbc2dcb34ad8eab79351b3e6510
Date: Wed, 06 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754510393
