Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5593F8ECC
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786777234; cv=none; b=miBeVunkPwjmFSXgq7lNKD6y49g1RjPV4EZs9KxCek/8ebT4dsfFB1njsA/usk6WgVmlAQ/pGEovFnlUE6CvvlKMP1Q25Q1KHEHcy/+FT9xV229JjK86d0yg1MBReUbibRtvaYXkveb9sf7ou7CpAn/WtV+zQxpoP5CpfbLC8ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786777234; c=relaxed/simple;
	bh=5RyZU3Vvd8npoQRttDDfOWYN7CrBO/RKQfh+aYGiFyA=;
	h=To:Subject:From:Message-Id:Date; b=ljpj/2j2TbrKOiD+kmN+puwYe86tC7Ooj54YkqyrUcBn0PoReYw3rzMkH7TvQLIRKsSNZL/E/OxEv9C7Lny8tZIpH7My/0roRup0ZY+46iOf8Fp+oqkKnbVaP0jXgJzvs1Y9bPgVfwwMd5yhZaOrbCtwGYBP4HFm6kkmPlzBqxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kb/cZ8J6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kb/cZ8J6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0116C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786777233;
	bh=5RyZU3Vvd8npoQRttDDfOWYN7CrBO/RKQfh+aYGiFyA=;
	h=To:Subject:From:Date:From;
	b=Kb/cZ8J6+zrGqKGq1Z+elxlPAYvG+d+1ypVoNhGvp7RHpMe+L410f/kMifDdgPgjY
	 Va+EBiaRIfl60iy38Xm72IAgokcZbtrump2967LI2KanvZjZ6ycu2yfAOlfn09UoEZ
	 bmHxqu2fZt9qv8HoRGWM96jboLUaG7ZilQV574Mgo5LVPKGmO9kplujFFALZRZOc5q
	 VZH/dSYcNAVLu+BeJWS+RpkRK0MA+hHt96Vz3RKghaop2eMfZxWeXPWe4Ekq3nehg2
	 CrsfwFbPkQfiYvM9sTX1J4g4DqMwZBRrE8gkekxg4ArfpFiEOreRhqGa1bt6vzYwbu
	 YCfuEfOL+u/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DEEC5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677723373.20573.6321697217810229086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f90a8c4b055253d781272095dfb088e307f08971d68a6ee1d7cce9b231ac72
Date: Sat, 15 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786777233
