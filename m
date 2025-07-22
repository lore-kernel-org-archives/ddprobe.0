Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283934C92
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753224594; cv=none; b=FJRKus8ALh0doqCofthYEImLz54nazShxMMckOKcV1RvMqYQ/bTF0grxPfVrkVHlhcDdvPz6ZFVwKX9jL9qYXITmyhomWhEftA+L3qiCeen0U2yus8gPe5L+PN2SUw+6/ZslpC2aKSQdUP+PFblXdyFqAc+Y2zY45YZfMUWD2L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753224594; c=relaxed/simple;
	bh=n0xDvF9OACdCdFXvCsUDP+2tDeDJD7vhvEYtXoNNk+M=;
	h=To:Subject:From:Message-Id:Date; b=Ttn+Q+6O0nEgwVt1zvjLPUUehaZItPyaGXPwmTErYyGN7eqBKoaKkEGv0uDp8MuVdOCYHhAKq/8hYXVfkZqszt9Vv4WYLPf8SuutJckIN9kOLwZsl9U9sIvfLsf31s86GrHNthktsHnS85soh4vujiZt2bw1uJ25lnRquMUSh0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htBeztDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htBeztDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A400BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753224593;
	bh=n0xDvF9OACdCdFXvCsUDP+2tDeDJD7vhvEYtXoNNk+M=;
	h=To:Subject:From:Date:From;
	b=htBeztDQ+hV/FUT8KRMQVIBFyT3lAkfqzhzMwMtNnUc9U/fblPBNKHRwFRGOu/Fr8
	 R/ip7MxJvETeEG3MRt4KQ5HJiVrWzA7sirHFHfqZWt+VzDPipIJaKzhIiv0WtmVeY0
	 I/1UWLx0U+9Xvyn1QVyI9jp83v+GWOaCo7yuOIxa3NK7rVsI1C1iexEN477rLp1c04
	 U/Wk/SkHvlw/Y+/mpemQBYc40R3qtu6M8/zONhvLb3pkBvOtoqYeqBgmKMO6933BxL
	 BN25+a8xn3CSO4RN4v4Li4i1Ve19OUgLO598UAgMwgUQBfKiGN9/SVw3VsIntt2/0H
	 vBmZWegOfoNNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021EC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322459358.17974.17702965235138159127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8b1187cdd80d7cb976f2c3e59138df2d23ec454aeab97e19eb23b9777232ad
Date: Tue, 22 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753224593
