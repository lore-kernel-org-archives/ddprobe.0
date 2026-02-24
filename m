Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40DB33B6C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771917294; cv=none; b=h3bYLor5naIZE1K6a96XCkzwWmS2p7EZBAZ1fhCK/dYYKYsv3P79LcbkjdAWktbqdqiCw2Q1G4MO0MjhW6+Lau/zP++x0u6Fa5I2ulk4UO2WwZabZZOx3y1D3SaR5rtjne68U6T6CqKnkY/WH04kIt83RLCWeo6Q3/2IEzf4TnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771917294; c=relaxed/simple;
	bh=UPveoJz85tvKb003KFY+u2PuunYhJmKyPfXD2zT7rJ0=;
	h=To:Subject:From:Message-Id:Date; b=R5/Ivjga4aPfL666P1eotnLGMGFI6XP817h67Kxg0EeUQyXeIQpYcSJyxWbR/v0AbnDzbPhdnpwD3VW6L4hK0WCh4WEruBRRXu5K86KKeXtfca2JupGkbkPV+/zxhUZH0x5nn8EMG1hNyiUL0GvPQOXLTn8xAbFfkd4huIq4j24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTn5Stii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTn5Stii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A358AC19425
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771917293;
	bh=UPveoJz85tvKb003KFY+u2PuunYhJmKyPfXD2zT7rJ0=;
	h=To:Subject:From:Date:From;
	b=hTn5Stiidgc2JyJEHD5KnkDS1yuLP/TJF2LpjnOhT2n6gc9pG7YOYbLa2iPQNlm+b
	 0pmvKDvd7AlpwPAul0Mc8TAOhmGrLgBTTa238MR86KMiV3KuUIk0b5QynUV3Oihyae
	 LI24DhY+Be3laxvjTGaNPyelKm7Wbzy/VSUDGcojiPoibrnpYUMc8Gc3+OwsifeboF
	 vyxNsExUVB4ethrBjTSDJjBi8qpZYEvHicMH8AMeLeDZVbC83QGY3ljQgWxeiBRdyE
	 /gwF6htxP4BlECINbsk0BNekv1a3JOiZf7AhL97v2CG+fo6CahpoYdCxBOoWxS3kxG
	 laHbxKymJYYDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A53EFB7F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191729358.1904.16864883588233697023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb36be59661ed54c355d15190a720e9a97f683c1c00cc6616dd97e93cc6882a
Date: Tue, 24 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771917293
