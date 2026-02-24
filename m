Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD9330506A
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771916694; cv=none; b=jTBwWxbVbgWrUpwQdDwIhV63A0cIdcJYK3+iaYEamohiwfPgTZDSwqrgG/xP0caVdBNKCIEzhqAeaS+HjGJRUUU8pZWF0wR9Ch8VV04B/YMYxbzCGJ2C0baVEu5v9Gf5oku/9DGw237oaB8txXFsHcqnnuPhjQotg3sc0Bumj2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771916694; c=relaxed/simple;
	bh=N2kdxG4VYIWF8mtGcIrpiE0vb6Twao3NpJ6PLNpIQds=;
	h=To:Subject:From:Message-Id:Date; b=ktxDEAJCmWa1+Nd3oxntOWrMEuxTGPSzlcEH9FvBWQ89g/MCgmWbm8/ItklQXwROInYmWxNfY2RQQX399DwKfxZQ8y5iMpMn49FwjzoQcp+cULHIJTC9DE+NK9bPHlNEgijYROpXKiqG0Bur2LinjycDC0N9XBlYeU5Izbb/mUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpBgibly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpBgibly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27A1C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771916693;
	bh=N2kdxG4VYIWF8mtGcIrpiE0vb6Twao3NpJ6PLNpIQds=;
	h=To:Subject:From:Date:From;
	b=KpBgiblySZVqAx/V3jioWaHA7uv0tSVh8pDAlyYx9etYFVE/srx5qolNlkkX7z9Z5
	 OPWc6o/ssDOj0fX1DoIJebwHxO83a5wSX7RTv4T4cM6Ra7HC9KCoSBblH1xC0ecqjv
	 V+sAiPWB4ycWMIZ88bV9Ao0v7bgpmssyIO6U85Yjh4EB33ET+h3iFTVGbHJGtjVxho
	 PaPLd1A9XTRbV/nBkmvGcgrAkK4DF3Ge5MRVGM9rtuLsYgszjIr4uyCnf0E9CCIQIc
	 dCWy7hKJfpMR/QAOtsHVZ1V/2Nv+jezuwpXBtxtOfJzM7tsF5yGxv43cz9IeuhPgJY
	 S9vZtbh7QPzyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911EDEFB80E
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191669358.31820.13342288541843799817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005300f5ee3e99c9011447f7576e72505e0cddd7676ab2e5f5b89ea7218ed69b
Date: Tue, 24 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771916693
