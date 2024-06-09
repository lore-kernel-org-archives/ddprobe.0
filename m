Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D2779C4
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717904243; cv=none; b=TyX0sA9E0d223vpko9FfOCtl960pfuaofyKbkI1Xry3t4DyuOptwiR+nFotW5yaFNKI5JJEgXxyX6TkMxQSGsEtIltRUd2Zpi72D34zj1CxtAo3strVboUij93+zwahkemIQD/1wNemBKuDnaAXhZ8GYFHLmyPBMoh6/UgGUMqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717904243; c=relaxed/simple;
	bh=WM2fQ2j0qFFB2Jy/S02F0AIbzwGCvcRAFL9HTZNJ1kg=;
	h=To:Subject:From:Message-Id:Date; b=umZo5KFrfLP3QJpJPdARU5QcKbfZEZhUpvjH3S6iiokoKvGSsbpshbufvtpNr57vDCAUBMMgVJ8BQ+GthSFPXAWsPsDYd7QLmYDbvXplWcW/1Qb6QiKXRkgOQMsqmjqgvnoTin/URgjbXh4I4ClUV1uUIaqO78W/PqnvyQPphq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Id/njdxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Id/njdxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D6AC4AF1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717904242;
	bh=WM2fQ2j0qFFB2Jy/S02F0AIbzwGCvcRAFL9HTZNJ1kg=;
	h=To:Subject:From:Date:From;
	b=Id/njdxXh5hDy18aVX46mmtdnstGZaPm1HIIfMI2UwrldIkGjIde3AfieJSI9nDIv
	 0n5Lx7htd662HKYA4XogdswZ3MVGl8RSjz9AbT6iSKvlq/LlflO3Mm+ThrLNz4+to5
	 OvgmK97/ilvkpsuYaJHRJvaN33NEvLBt3MS2rt9QDM/Q2rsoCXjznaLBNGXJvWD3SA
	 Ou8bQsevax+rQk5mRJOEcXEeTEEscPndsSj6DY5biyWrJmMZ5rywtfgQSaUXSSILNH
	 GDTBz8/2HeMfQ+IgN5b6oTHm6adDuLpPSVT3q9SnxoXCTJz6tOkoEaZZ8E7OEA5Ejv
	 UkhwNQCKaySVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CC4C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790424277.25298.9906826219060631261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521034c9878aecba2bcfb76c7920a4e9a44cf9af93d6dca5c9df6adaa801f7d9
Date: Sun, 09 Jun 2024 03:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717904242
