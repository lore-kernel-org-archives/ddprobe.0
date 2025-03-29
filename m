Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A52DDC5
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743233396; cv=none; b=FrpAG2SefOLF9pbom0mGAoYFde4botJt57EVUjoZfw+fKNatTfNTRSkFkn6jfRWmOU6eQ9JQlml4w+XlYu9U08k5JOHFqdxsFjLZjLK9b5hBgcMEjOrbeuF59SDJovlUgbeuUMIB3uq/ryRQbkvQGDNeCOMUELI0QOdLu1VVoMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743233396; c=relaxed/simple;
	bh=P8u8P6GDXOjCxz7JU0S4mmcTgdIRNIQErR/nwFpqlJk=;
	h=To:Subject:From:Message-Id:Date; b=Ep7rIcbmHbs35t0hFK/hFuT0W/MuGbNi94B4c85KwQTZ961AKRjtQI8m9cICVshyJgn3gJ2sb4CL7+DiSS13Qgn+i9pT5fCNRwABbck7uO629dHn7OpACzeXKa/pwf1uJOMdUmGds0ZrGp7jqyfBufNGJy27iTg7LFNdc+Ud0MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dI1yL6+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dI1yL6+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B033AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743233393;
	bh=P8u8P6GDXOjCxz7JU0S4mmcTgdIRNIQErR/nwFpqlJk=;
	h=To:Subject:From:Date:From;
	b=dI1yL6+5dh+XEEpbEe6kKZY2NJDSI26S53DU0ozzKJxsk8eo7z6jXjEty63ZpHI7q
	 lb/JuxDrezVa9ormbQA+7AFGnlMPDPLhl6Q16b+VwtQI9X5FrUjPr7qPETKao8V+Fv
	 TwbhXDsrEuOvGgau/BIuqP6N34ACyXpc976h4gFSIxDZE4pWI/tVW6oG/M3cS2/NP0
	 evusisk1i/QOt3++hFQJdWQdH2lV0En/jyLodNZhkITM/y/5oSPfG4xNanrI/WeGAr
	 +cAiGr/8kJnMHiP2ko85ptjZ3pIzLUSPXNdzifL5eAhVJXAiAS5ZEkvbg3sn9ATaXP
	 ii3VtsUHkqZsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94370C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323339359.4757.2258225981255096494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc1c98cdd4401891ffc0c1fae6b27581fbece1bb7d80228dd755688c2d7d2cb
Date: Sat, 29 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743233393
