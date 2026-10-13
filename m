Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D88388386
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791876634; cv=none; b=m4pKzXNnH2Evf5oZzuKncLFiTL+rJgExPchl4cj06QLKsPJ38eVi2LG/GA0dAFpKdgor3mvxMQ/fS6VfMMcPT/AulCgD7rUzwBBbR2+kJQDjDEk2y9SXNikS/+ZXEzDXHhXznNBKPbQRK7EDy42rpeNuxZrC/D0o8d9tu1uPKsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791876634; c=relaxed/simple;
	bh=/OuL1GzkMKxxbAWGhm9rCm2oirQHAjBY9LUU0Ayhghc=;
	h=To:Subject:From:Message-Id:Date; b=txSKc/fToXMvqMVbBzdNydR0xNiG4+kAI27Ggmhra9QhnvIha4HtT0DR5AZpD0WCLu/PX0NrsFU9uKLu0KADQ883vCMSKw9zuIGYxpM3vdRcJ++ieD6SVg4LXsgnVvgdBdQeVpYvKSBoy+NkIG1d2asPMiPknPSleWhlGfYSmJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxDTHAvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxDTHAvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35BEC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791876633;
	bh=/OuL1GzkMKxxbAWGhm9rCm2oirQHAjBY9LUU0Ayhghc=;
	h=To:Subject:From:Date:From;
	b=hxDTHAvJliKla1iIFWCvUnaljWVBzZ5z9K2/ZFeLvm2U3E0u9HWEwLC6XYyITx1J1
	 dX9/CChajFM7J4DtLNa6TwhZH5Pwpf2bSIG6QsrQqtG6Drs0FFdPLnPHsO8AXocWft
	 wVyH/Cy06tdFx8U63XyhfofKFVvAU4321gTbBeGMSJR3g8KfJR1HrjtSHfu6oR5Vmm
	 jbbljGKIgm4T4ngU+NlzhRUiNT6qauxiftqd3n35EgTaG9TI2417dAWUflOaCSzH9Q
	 YgjWkE9crYMimWSsfO0taOahmXG0E7xLnILR3E1qwwo8Z7eWdavS9yjGrO71yCl56n
	 nqo3nKaPsTLRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7BCCC6B0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187663368.14704.1378961162687572623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827c57cc4703e239886c65c6f199ac26699c82aeecc4cf691b9be3c48b554c17
Date: Tue, 13 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791876633
