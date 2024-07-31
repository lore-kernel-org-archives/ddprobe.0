Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC512260C
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 04:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722401755; cv=none; b=VJh2R3MxVgyzSehLuk/s/YQPXkDYmJzQqix0jkLkuygahpM/RO7jRIx4m68ll4KqVkzdP1J4PBJmb+s0BH8Wmqi1bVWQymv40flZMeMEMaoMOLyP/mX6vW+1OuukKTjY12HxHkSoPTIQW8gS+2hDZcSdnvuB+9GBSSj5HzFXcZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722401755; c=relaxed/simple;
	bh=qxxLSzdhMByp78zanI2eCasA9E7Vr1V53tp5kyiWfWY=;
	h=To:Subject:From:Message-Id:Date; b=Qn7jZYGj1VDciJn/oQ3XZuQloFpoXvBfqU1Tjm1TD3rZbpDJanuKXSdjkwy0EWgO8poqbQujirGKNznwWSNNbcA/fBwwv4Hg+0hqWO0Yn8y1yc5oiW6xomVfBjPbdy30NkGx6EyHESDWOiK+tZYkqRvFnbg8BiFHUjS8ijpeilw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4mmehOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4mmehOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2686C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722401754;
	bh=qxxLSzdhMByp78zanI2eCasA9E7Vr1V53tp5kyiWfWY=;
	h=To:Subject:From:Date:From;
	b=d4mmehOTl7CN8ZEysPMJ11Xc5FjRfuI9lfHEfAwmsluxtvpxajdLJ+YBDRlc+IxXv
	 i9dZLsAMCMMWthk6pvasNu70sGceVrq7z+iCaB7iWNH2c87IBxzhR6qDfVVWBxi2lN
	 lE/kTaIAkjoUv+Ijs9vn2/ztEGw35u/C+9pslylstd2IgRbSq59W8ZYadnYMUplmzL
	 Xx3HWjWLorL45TR2S+CqK5vVugANRAbh3XFLprGq3+BvhlGG+NtakJBz+zZ/6aq7Zo
	 97lF2Ea5+PV1YiI/bCEZazfyU4RovAqQt65Occ6bX70O09SHPpejj+eLGRyE0e6HDz
	 CGHj439nLigaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAD7C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172240175360.7806.4915285582798767684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f230e42b4ea034d348eca153674779d7f74bfbe3eb8004c2b925e468ae7f263
Date: Wed, 31 Jul 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722401753
