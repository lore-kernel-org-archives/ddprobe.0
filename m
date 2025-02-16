Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB2586344
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 06:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739686734; cv=none; b=WgdThLWj/X2m0osq0ljcb+u6fVR9rdVQ87sj6HT+3lTiJDTsYjLRPQyvpakR8bEVKYEdnK+6SFqHNgrepF9lnWH3MIKjFnz7yCT0ZFTtSQrXg7hHKfbr/cfkVIm5sTfPPZwQVJCkMcfoLs0JGGNmG/J4tQ3s6un+Das4ZT57acg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739686734; c=relaxed/simple;
	bh=byQLbq8Q+v6ZHlzskiRJ9Sj5yd+l3iSMjTcIMtAeH7M=;
	h=To:Subject:From:Message-Id:Date; b=Qz3UMGMKENMe0uL3onpEDy6m4br37IeolV5eopYoBmPiG0pIttoaReIqRulioNL18Wl7qVKY8kE/TteSG7kiWNgTnidNT+mBzpvAkcfqfEHp92D2r3M0ivojI5D1+dU+8lzV0zkwul3jLVFkygMiOgJZCppQ+fGKwu3ydmdbnKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSTVPMUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSTVPMUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C059AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 06:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739686733;
	bh=byQLbq8Q+v6ZHlzskiRJ9Sj5yd+l3iSMjTcIMtAeH7M=;
	h=To:Subject:From:Date:From;
	b=QSTVPMUusyJK7m8WGkFmH/iDSMDVIJgKMAOicQREJcTrAARyZsk8S+pLZqSsOe8u7
	 LInRXlOwv3TLM0+ZNky6e72VnD2F4cebYFsaSsQJxOe8s0XefoKooevB01TqFm6Vpa
	 cNBx12pEegug1r6tJ/S4CSXpTX03HLP4AZ+7pNq/Iqd/WscA1YUn4vG4Yx+Xp1LAp8
	 nwd5SC3YmbwXRR1prrybtxyui+dwQuzAehBGZ+TZ6Anb74NTCTpz5jbmqhVi8zSsjC
	 mmH6AcQVu5KKvGR2vPpBtkrrKagTaVDFPtTfTPZZd/oaSzknptHknYyUUbs/0HnzCD
	 53fY4HTQ4/RlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBB9C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 06:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173968673367.22878.16000368599488020834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8f668a40437770685133821d128b3f61772325e840d309cfcd66d5696d2685
Date: Sun, 16 Feb 2025 06:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739686733
