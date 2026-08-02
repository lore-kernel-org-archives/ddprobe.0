Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DE031E822
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785659434; cv=none; b=dcLWrmRv/n66LC7LIhV6ZGgCEY1nNXO7+P7ousQZnfUe3/uNODD8UXWTjOGAEKuC0j3tBP+E/Gyp3MfWKGGhOPIQ+cLOD3grCEZXL4IcMiUWt37u0htXaGYf5chNVB4Qm63pLYZQiXdTw12Rp/k6mNOzamudnBsrbptaOcT0hBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785659434; c=relaxed/simple;
	bh=CxcRCXZzrx72xgSTyC+s6DVJp36Av9SF/NQxS7tvjSk=;
	h=To:Subject:From:Message-Id:Date; b=IhpbnXOpWlZrPPVg0NbB76O1Bq1yGgvPgSpJS50Pd/cmdc1TGPfARlt1cDn09LBkVY7ENpq8hTb3EV7jlo7y11M1vyr4u2AyC+Av8xC2x6sVJgap4bGVoXLSUGT/vvC1uVcQmkxjCRytR4PLpBvfmRxgn3kDte/T8Eq3+U2kJOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwVEGJ4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwVEGJ4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCFEC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785659433;
	bh=CxcRCXZzrx72xgSTyC+s6DVJp36Av9SF/NQxS7tvjSk=;
	h=To:Subject:From:Date:From;
	b=NwVEGJ4t3PlX+4BgB9OVTPkJU9xRckrnB4nRay1KnRqv6SHBcKYyVKCPt2XU7LL6a
	 rip5YEtAntGVuJ6STZNQQHrxe27uJ53uuoz4RrFI01VojJp8zYDVj9PK2HfGIix2P0
	 eZrc8FekFMDw8aktgRW5K7io7imHj0wxxtjB/vAkhUs/rd026n2kc9I+dNADO5huu/
	 BGWPpYUffW8tqHyKdNwoofpptnJc5SNXwkW8+2YXfwODd1pCgjewzz6yWV8BJ/YW88
	 9WR11x7+VnEQQj9pd3/NRWYKvYsDBURZWuUIluVuYAjuT6t0c4V70lmeSEPKCiRBNn
	 oBAALL8FnCuaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FE2C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565943368.11917.16107712433516744350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0fc4c3b438f8d1be66f754938b48c0527b2ecbc36cdc412fe33e3f148477b0
Date: Sun, 02 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785659433
