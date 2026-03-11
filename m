Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C2335F8A8
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773224094; cv=none; b=Vl33tCFhKjkFNw3Il1lu/KCvQTHLp72p8T5LMz2cecTeTLWB9urQ0sAY2zc9UL+iSoVRiycfZhHA1W2ji1BnTCLnugP9SszX7i8Sxe5T+/eIfhuzSX1qCdfM2Fs0tNJ4Q0Sht6K3PkDDAg6M47JOahgtljfJid7ECDgFDcJFleQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773224094; c=relaxed/simple;
	bh=kcTqMXT1mREYWDezgj/nCaBg+Jm+W0fsQKosjgDKjUU=;
	h=To:Subject:From:Message-Id:Date; b=eQ+ZaqkGfjqJfaKodQ9boAkIHOBeZ/lTdBj240dXUtHXPTVgtlM3SEkaGXJSSIJb/FUFNPsGuOiyShmIh0HtADgkpTrs90Quv2g2JGwyz7cTZj85KGc7KBpcgBkGD26HHF0LpnvvHIjp3cJlBnUptH5NwNDBWn/ge+XcZ/qZHbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFZaug/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFZaug/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56FDC2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773224093;
	bh=kcTqMXT1mREYWDezgj/nCaBg+Jm+W0fsQKosjgDKjUU=;
	h=To:Subject:From:Date:From;
	b=XFZaug/SZRqMLdZq7/RgZP0hghQOU9J1cX0vflyEXyWoXvnDkLmKClSbrDfcvdRG/
	 RXb2gVvhtgp3MLb0d0U5fuwrguql/kS90I+C48ZcRyHa/PL2lBQrfI0AWjpsevJQ2y
	 yYM5aMf5zC/dCt2gz41lXqisgENh2Y6Di6/to4F6/OfLS4cdj7HiwrW9iJhDVomfM/
	 jghfNA6Otsj8VxuC3r151/sIjpD4EfTcH8NpNauE2tEd0s13n9+Ap4WX65nMgDkhjg
	 CM9aEJ+MVO0kgvWhmqXWrdEx+EILgK/Dto9k+sOyagMqHMt02zftBuPQOI61HtTR3g
	 5tqe180jwc65w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDD2104BEC9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322409364.4288.13587683038439936129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cfc07072cdcabd8d1e1bb8ee5ef67c315eb876b93a077fd1838ef8fef6b19ac
Date: Wed, 11 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773224093
