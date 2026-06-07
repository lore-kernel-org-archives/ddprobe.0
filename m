Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4586C1DD9AC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780824274; cv=none; b=McWPIiE1lGZmDM4Td4CBssHFaUXKcpTwJt+qT0moY4PmBF05riXo3eq2Ym5/aXYdlMZjIW651G9gtoKlaf3DZE8nIdYT2kh14ZmRJXqdu1wcBMneTLjD+p+zDDFCBbH4DVELdFdcdp2DjF2TPWNeF8PEmCpZR6T/miUGRqp3XIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780824274; c=relaxed/simple;
	bh=0U4GM9gqAFdYWoS3fKME6K/WOD9PkiATs1eVSCt8keo=;
	h=To:Subject:From:Message-Id:Date; b=DCaDN0YvMm+aXAQD0kQk3AiJjiNahnWeEhXBSUGfR+yIOUnP5DSrCFEYsu69tuBEZdVLtfh0Gmj1m6KPNTweFzkkJuQQ2Eo5aj7J+oMj1FyXeUwohso5jLM7/+EOMgDcgul1KuL0CNW8EChqUPjKNyFd0AE6AcYp5KEEVM8SFEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LW4cjQrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LW4cjQrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1D6C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780824273;
	bh=0U4GM9gqAFdYWoS3fKME6K/WOD9PkiATs1eVSCt8keo=;
	h=To:Subject:From:Date:From;
	b=LW4cjQrCe6/VglcQpNQevxf05CsxM46X2QQo2mIrYmBj3ehxJc+8lLfRYLqV2G0NT
	 fb90/VGofwaxWQrBtLVbOvqxiBKtKoUKJgJMGBpKMFoMYTi76UUcZGdFw543d3g1lY
	 g3dfVy/mCPqbNhEbwpxkFS5g+gSr4bQfClLchOmk7k3BVBIkyjfKx9Hm0F2hkQGS6m
	 Dbk8Eb4EirpHAb1jyjHQJG5fbW6n70YUjSxamDDnda+w45K0GHfC0t2xYUvvoGkUmA
	 NAQPN2vW0QPlY3Fw9/aB5NR/57JyLiPvX1I7EL+ZDKbIB2N18MK3Z5FazKhPNYoqOI
	 8MzzIpVir10bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC76ACD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082427368.18763.6516612193899487241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529a668e0299ccf46cd0b8c78945f8af598f73913719c2d757573dd7cbb989cb
Date: Sun, 07 Jun 2026 09:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780824273
