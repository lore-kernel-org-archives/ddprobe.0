Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA5E188733
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745661594; cv=none; b=ccI6w2cbccmyQzRhan9rNBlDaP3TZU3UqznBzROcmSn3dpbkaSih2GhJGtb1YsTtAv2AQAEmJ/Zg7zbS3j5Wg7Uh7HylEVLJZnTtmm41U3muUGl8zoqBGISz44pcPB+L5c3Bl9B5Ly4Gr0Th5xQMws/DIm1U/WCnxvA0r4RUttE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745661594; c=relaxed/simple;
	bh=nQ79ZNPNXgJuOIbEpoe2k4IiJQrwFuroZ/KsQw5L/XU=;
	h=To:Subject:From:Message-Id:Date; b=X98NGqu6I+xixIKXV5+u1ykuEQ0sLPW1PP9h8OXi8MUopSzdzLy/wHNbTo8dN/x++Uhr01xfzBQnNvWzGlfbiFrKqz6Z4vQF+ot9H9nLSrt6QK2Q+R4Z0BSkn5ujP5XhQVRmx4jE13HPpEq9F70Wzqow4/9KLiQiIn++uZf2np0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYkldDlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYkldDlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B39C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745661593;
	bh=nQ79ZNPNXgJuOIbEpoe2k4IiJQrwFuroZ/KsQw5L/XU=;
	h=To:Subject:From:Date:From;
	b=fYkldDlWdALKyegaIy10d8rUFXhpfefcTsZKgWJZFHI6Sbz13v+C7DHbUHLBO1dgx
	 sAthMW5v6gaeiDC2sHrdZbeEwVb46bjbaVLmRd7d74M/EKTz8FNsBOvYcnJrXBI67H
	 tl7vdxweXdSlc41HxGXUi0XayfGzSz7I01hII0HxMfZbx+5j34w/B2HGdqafWirNFb
	 wWP2WhZWstxsjN11jDaG6Da5yeWTlZATrERjg5MGSJy64cHkS/6pZE0i4TmNMkwsna
	 rKOSPkRW/tweDqksEVGccoYeOQjgeDj9pB7AlniajADEHkiTL0vcymg3TvMejOT545
	 4mYmjV04JkiHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A78C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566159357.439.1928149357670637905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1524c83e1167b4cb0b19b9c815fe139b9447ff52f3edd0cf27971696f9985324
Date: Sat, 26 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745661593
