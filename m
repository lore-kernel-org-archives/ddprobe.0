Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AFA1A9F8C
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777409254; cv=none; b=SqKejIOhXojVWATDnqB0ah4whAWbwgjiJIvPexGp8IDWoF7iTb2Jrz40fW2nSH6OuFpq26a+5T+bM1zzprY/yvnPtvOgD9MP8TtNXeevO9AvetEAxAh4Nhw1dV1PZfN+N6NPuNQHC51tYQP+aXKNEDFzsXeZj5wbIGTr1bZdfbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777409254; c=relaxed/simple;
	bh=groqU9goqAI72EahsYc0Ns5f2o7AQ9vApalJaublVyw=;
	h=To:Subject:From:Message-Id:Date; b=J2D6t8Qe44+ouw/4tMygLjcmj1p4YB4El06gr1f6NWk0hBSuxJGCiCdNpnQu9KCGADuhyNlBYDUfSnUGeoC5SUMoLsC/ND30fY85dpT6rk1apnyyvbFlawVi/DGcl8NPzqopX9X59fqzMz1KpSXyxoFGhywLTHYAkrbJkZ8LXMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOzj41xH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOzj41xH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEF4C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777409253;
	bh=groqU9goqAI72EahsYc0Ns5f2o7AQ9vApalJaublVyw=;
	h=To:Subject:From:Date:From;
	b=kOzj41xHm5JmulyQAaxGj/0w3mssgrChKCTJMwBTVJlFfUJcF3APs4P4hl17toupO
	 AvRmT/mWgkEvUpacHPKdoBhzl9N9+QYl3ap6ocbWm/CrLwy3nuLEZSIoKIJ4dlaZaX
	 GBv1dYN5oOouIwZZrjw38/TP/e7Mf7v3O6rBxYCJ8pKKdVs2WQ1XMV/L9k/ZUcGfyM
	 DdaK5XyoNu6tLbGlYiWT4aMV7xzx7XXbomJKNHPy8YURQqOjXULtjUvNKWOLeBnSws
	 Hd78UpKNqstsYWb5Ggwt6In1pH5gGwV04IcXPIVskE1XrsQDfhkg93hzTN2fNhOI+9
	 c6A9yU8UgAz9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA3FF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740925369.13636.2853619082571296416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1f2b8d62f2b1f9a2fa0c96ca2538ecaf61439b9f4bc16309538bcbf3f9e8c9
Date: Tue, 28 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777409253
