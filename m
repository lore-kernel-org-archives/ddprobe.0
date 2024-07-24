Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F3F148833
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721816154; cv=none; b=AmxR6HR+jLhocXgTzrWzoxEevYaa9xPM66HgLrJSxbRvt92AcjffvlnsKvrxIKvphrXc+Hyc9d4mH5VzC9Un+TSMIM56rAKI/LMwOvSNlRX5pvlFHzJbui2LegQM93QII7wkZDF1Aan5jSZ0PHoAvzPM6LBJ9N5wxE4eamzJkFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721816154; c=relaxed/simple;
	bh=A0Oki0aB1pn4Y88pPY4wzJPGhJixe2i6vLbKteBJ+7M=;
	h=To:Subject:From:Message-Id:Date; b=W+nvVgSD1++5F/UjZtphIiJhkCueH8A/JU3E8vbThQIQPTWiLGBW7Am1aYm5v3qDaeLcqrrBg/0LOLsRZcAA4ryfoYGaIbbvTjG+pWqHRHDUGyVJA8ecpOeIpXajQOxMU/74QuiEV8kE/Q63h3T8hPKgqCpOHjFk/1NnR/iBzM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNZvaGp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNZvaGp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39E9C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721816153;
	bh=A0Oki0aB1pn4Y88pPY4wzJPGhJixe2i6vLbKteBJ+7M=;
	h=To:Subject:From:Date:From;
	b=jNZvaGp+CzqikzgWTs4W4vV2lkofvFEW3EcvkDbw2kbO0lb/uPgp7/xS6hYxDHNTc
	 qR5Ll6z85tpGC02mUuCTJx24YfnAIiRNgBR4qo6E4K7PAiDyu6j/lss0wwfvSFeZYY
	 5ZSTsWRqIhztSZjUGIzkd/RT8gi/beSIpe7KrEwCiT2H9gnPGEGJ8b2PtbYAn9NKn6
	 PbYTz0buxCJ2g6enwVrVdKLc5+3K0doScfik4jCc/GTNA+iWCwIS1Vn0Yy9UCQTphO
	 puubWkbCKIcgnirR4iYyKg59pobQw7DVolJwLtkOk/m+nondJoM6MCa0kQRlsuXF4T
	 9Ksb+KM0G2QqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C1DC3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181615359.3911.4262012689946451800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7ddd3497e5cca8e07241e8d6fe4aa8e1cc3a96f709955e4ebb165cda929e69
Date: Wed, 24 Jul 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721816153
