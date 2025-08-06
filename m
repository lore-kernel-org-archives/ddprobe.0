Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120681D5150
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754477994; cv=none; b=JJKcmaQHm5usGJXHjvABrr3HubBGkoN4nh/YHt7b+/8KkpXGih3zjG358x0JCv1eSApVsqeRBbPHnHczDZBHyrDP8i5j5FgqYCCO+lQh9yMOy6jWIHIAI8VGIRiGh4cJZuUooWPFdrAcQsaIcCXFeGtaFELpSzK1MqUSKSpGh5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754477994; c=relaxed/simple;
	bh=ErsZ8Nc4wmRJU+8ybMhuq3LL2LYbYFgZdlQqifPVQx8=;
	h=To:Subject:From:Message-Id:Date; b=hcNyZjbPVs7Ay3EGe1JZs0ktu7JXYKDBFrajY2TxAjDpvpshsCR+rrPUldnXDYPjkYI+K8gxR4qP91+zcOuuimLvW7I4zBESiwzwy1qjkUfpn4KIYCSeDO+iJraNoLP9ujZMRTn93yt+BxdLXzWaTyobZxSDmSbGn/zHSzQnKP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiMKO/Cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiMKO/Cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E760C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754477993;
	bh=ErsZ8Nc4wmRJU+8ybMhuq3LL2LYbYFgZdlQqifPVQx8=;
	h=To:Subject:From:Date:From;
	b=TiMKO/Cw3U1Oedc7xP9Hyee47bP2TfgJw7QV38TdEfW7iTLrFu1cZ23tbaaf2PbXX
	 5aynIxfnDhGUnd6leYoL9PEU7NqVeOsJhLoH+jfW4MhmyxJQOABt4mb5S/2W8HmFXP
	 Lhq/5aEU6hRpBYppnOW57RrnyzKxbXlx1N5882siMnX8hcmrUix6diQN4sbOwm7g7R
	 bkY8EUzzlNw9khYM2ci8SVhV9zgGX4OjFMoFFfvjZmscT3RIoHxUF0Y+w6Cv5J3Zda
	 TE78YcxeuPtzgOL2DaMRdYUIhjWEkJu0CSyZEgMk5lyrMKmHVICm/Yy5vryPy57Nav
	 M2mqJAZfpoCSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D0C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447799357.21309.2802468821475912350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfdf6835c52db9fbf08184a753869abb65e3e95a66daae5dee57faa66ccf3b5
Date: Wed, 06 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754477993
