Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC7B22EED
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718911223; cv=none; b=YWKLt7/2BbzLwzHK7ocPpoyoqr0dQgYcP8B8+zdv8+lHG/buRGpJrW74/GUyw1xgS4oTrb40iN58yBFlqC4/+evHPQsEBamSBuPwpzYs2/7Mq7PFfQslf5ceIMiyjLYm11Ek4Aq4/I7FlRJix+NZqQNlKVGo6TKXcPRbHakAltk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718911223; c=relaxed/simple;
	bh=i3U80GJU8Q4XFQpRe7MVUqieBw7Fz1T6DDCHnDufP9c=;
	h=To:Subject:From:Message-Id:Date; b=kSnAvOzOBxK5lhxjjuMmuLK4aOyCo2Jeaa7SjaKzsutxpj8XrvRz9CeGU9liImu4dXVi17SEuAAK8R3v7Twb3KKSpZhnAxUc1t3sycmY1np3cGyGdvQo3K7pZ/MOnvhNTcNM03c/M3NvCGVjNxhVpf3DeJTTiRStx6tDm471XDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwvwAnx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwvwAnx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6808C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718911222;
	bh=i3U80GJU8Q4XFQpRe7MVUqieBw7Fz1T6DDCHnDufP9c=;
	h=To:Subject:From:Date:From;
	b=rwvwAnx3r2QCeYZDE0Nejn75/GdpYHyq9HRBnjbPFHfps2DUQUckJMkuNPt3aHsoo
	 fFpn3bP55Z5mWnUMn7rKIgUbG+F00qbD2F0N6JpSLp3P0yO0LQ9r+wevO98sq4lsqi
	 Lva3YELIYUcgvur/OYE95mPsh44Rpk9gOP1C9ESD8VSWGkcUQbL6s8U4ggNlDcxuih
	 8nxwxqY1rQdLb4hMsJJaTra7HzO/vayzY376nN1nLXNXPNVacMpd0zCoLazaJsrEoS
	 HGJiPmCCLX/nAFwKFrp9nwsZtTCN1QoeRW7gMWLh3bCDIqyx6o2RDNu2BZlM5lJF6j
	 jHcSUbuPbx2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4967C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891122281.7334.2559111716008705891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a961e83a475673cb35a2d5b9b16d37b63f2407525f62fdd159113719312c9e56
Date: Thu, 20 Jun 2024 19:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718911222
