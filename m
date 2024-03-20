Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E92F9F8
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710931097; cv=none; b=Gq0CbAnfDd+umLA6cQTAecutbe1hMZibkvbr75e4q9FG/PwzPMt3oqe05yf8mtHYhJbO+Ady5RRRczK3qG/CGtPGREhj2qFNROnIkDYfxgghZruYSdfsDZt+66QmPai0O4iW/NLfJoyPkRkCWg/90356QKaFiJV713Mctrc2GJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710931097; c=relaxed/simple;
	bh=a5nxc5SI6TSsDXOJig9OBT6oBEjkmVemNf0WgMpzgbU=;
	h=To:Subject:From:Message-Id:Date; b=CNZYWqYcHyR8H4wJ5X2XaWQ2PCHJIrs03bEJZlh+sjnJDs/LPoyQqEoo+licE6mDTa5CN/P4p/SDfozKkCyy6GKNhW2/AB5NK5/8suVRThbqGErOSkVPR6PIemCCVdMpojZ+PZ6t7iIvF35hti/sLbzag2EEgfjoCAD77yK/8fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sALgURqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sALgURqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75149C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710931096;
	bh=a5nxc5SI6TSsDXOJig9OBT6oBEjkmVemNf0WgMpzgbU=;
	h=To:Subject:From:Date:From;
	b=sALgURqLiAQe/3+BH4w8hbuO8KI9Uss5G4/BHkB5EObse9KIf6Y2Kn5x75G54bRFx
	 WZ5CO4WyDBUHbB/ZIiuEXFO7mWxfciaz39xwmJ6oWsviqQWYBoMpjz409dD8TPPN4i
	 7xyMq3lclPkcSwtxYgl+tva9yY9fEum6V7jqV6Dzh2VxkqR41Jws94TCoyQN0K6mw7
	 BT0IRMPGayzhyNAfV93LznKcWsH6e0G5sN1b2ZJ/pMJ2AvPAiGkELDS0q7bzrlcjYK
	 /P7sDgOYfh7BvVJmsnh1k6XpAl0lAS4xng2W/tpDiIPf72nkJYvR6qOn/kB2cSfNPk
	 U+5HJkzIGcJlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6339DC54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171093109637.20702.3627932057164242685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ca5ffc362ecb84dd70031c241ab20965a71ef2d86746b9e4f6045a06a0e0c3
Date: Wed, 20 Mar 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710931096
