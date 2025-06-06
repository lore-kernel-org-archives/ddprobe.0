Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA4A19CD1B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749193795; cv=none; b=pJCrjpJ6jwJa7DzYkyEaCchhIXOKgtTl1keodbz2R3KucwJYOWQvnHaK5NWD8GdHxZPMlBxpxceDtqngESoyVW0Ga5l6Asgnk1QkqXoFsJ1ilBbbIhvfCvl1H/RNpXly1SF+9VrUeUGgymKuTPDEy0SBluZAkhhgtDQ55XEYS0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749193795; c=relaxed/simple;
	bh=Y48iE2iuUpscQEqbV2RfemmJJV1uDHlrBBomA7+EW7g=;
	h=To:Subject:From:Message-Id:Date; b=sf5rzPXZss/gmCetPfEAgxO7pKtUxyrji/v5T5KpXhpFO8BME0GCbz0WkwkQnD7bSGEDzpMVpUD+sckEOUeW1ORYEZG6B1ZMimRVPSh7bvTBFQM7n7NufIoBStjguFnKoYjjaePfrZaiGcUK1vmxe9y0jJPZk5/uw6osMRQ1Ngg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiSCYw7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiSCYw7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D4CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749193793;
	bh=Y48iE2iuUpscQEqbV2RfemmJJV1uDHlrBBomA7+EW7g=;
	h=To:Subject:From:Date:From;
	b=oiSCYw7MogHl0le1kE4H0vPZtrV9Npv51B1QjwPpJiyPWNEkfYI0XFuEctC2uSAfI
	 t1nuuBEgW4GidQLQrjzHE6Ji0u4AgzlfzpDdevDyn0ElZB5yyLyXLlm+II90kvd/Ar
	 s6HOuXxWPaY/f1ZLruz64IWAJohOJivFxd2SjSDcZYwfPTF7CJ04KIkyNIKKuPbNKT
	 U7WKAP5sIiwSV+UDD1d4pfhsVPl3wmDul9Ox62wFo1wD6wWWvwe6YyefxPj+hJtvel
	 9MCETjumGpPRQ4mPfl6EQB5Fow8GJi92qwHxjNyIyvdOVlxwQnbyIlu1vAYIa7F4hL
	 Im7TUzxVD37/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959CAC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919379358.26761.11217611464631316849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0568e2de510c9d1ed28b0fc2ee10b6b92a6c737421e0c2cd17f6cbe0b68a448a
Date: Fri, 06 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749193793
