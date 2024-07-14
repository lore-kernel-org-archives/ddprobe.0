Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EDC1755A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720939823; cv=none; b=S3VIsyhluFWe9fIT7Y2HcTXlR1klxhmUyPgSdq5mNkSpX9xpob0NugzADjj+p2swaM2Jcr0QhiZW+x3tlP5/oHGRhH0+1SQOVgJX3psyEV7XnJxh5E76j9hS//83G3S6HdiEteRXCzRzkLzuMOLrgIF97f+LiqqS8AsGW/qpMFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720939823; c=relaxed/simple;
	bh=otcC6SMCCqwGqyOu1rgaGofGbuq51suT2JcB2+h0Dbs=;
	h=To:Subject:From:Message-Id:Date; b=Jettmxgvk0QKN3WewHvxVEbtHJ18kkX7A1QsCYfyjZrFUWz8YMSaPmxH770NPgujgnmf5+v3uwRJDmt1avKoQh4Ydg42HZ8KOeRK+m1w+JuHgzP6Uh/7o9md893YqDyzpqBRBm9ge0rpF6qaaa/sQ9avEwHa4Isspd5jq9RpFQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIfwsjPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIfwsjPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3626C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720939822;
	bh=otcC6SMCCqwGqyOu1rgaGofGbuq51suT2JcB2+h0Dbs=;
	h=To:Subject:From:Date:From;
	b=EIfwsjPkLb4R/I+VniN7DRdJjWoJC/bd0p+En+F5W+vHfpOhhIHxk+Bb90BcTB2Wk
	 NXvxFNVilS9FZSyDf9jR9Oam+2ihYd8I1GxHcRPoXCVB699Urdv/AxHnyf3v4vyb35
	 CgIHzN/42faV+t1mrApbJiJK1R4UO7O+OT+WXnjm7FNaOXSQTmA/VY8RKQZctyYRSy
	 2Xz20v6PHPE+A4OA0luavv09Sl8BcXNLW9FjlMU73efHpZyKcCMD8ueAT99jEunEYP
	 7vZW4ozGGvbLf2maB0e2s2g3DNDDbeD3sZcCosDfkZyeHObV1YSN0EAm9jMqwqmnwF
	 qXS1oQvLEmyRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA360C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 06:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093982275.12346.15687521568044926479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fdbd56081c14b6ca72c48da863945dae6695bfabc1db95fd50117edab9a7d7
Date: Sun, 14 Jul 2024 06:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720939822
