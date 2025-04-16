Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D801A83E5
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744772994; cv=none; b=AtDGqq91h7OfGDNavrJy0YH0BLNaI1VsMxweAnLD2eEdbjwFX7wnWsQ14wWetLa72eNJxvqZkGiHV6J32lckUW/bsfgZlF7BZ9HEXHMRNrZeTYzKGfZIt7P/Vx+9dUJeqzLvL37b++5oktfuK3ht+HKRkhb5lBIYVlsE8iKkglM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744772994; c=relaxed/simple;
	bh=E0fcqaZzfKSn0Ewr9ZyneXWX3nLZTK9QSJVLs01QEJM=;
	h=To:Subject:From:Message-Id:Date; b=smuZd7zZyH9Ve1Kcb8VtNIykDPFowonORwrQnx6gppS6daKxSTGHdjb4Sw6SeKg1NHBOHS2kA5hdt4J7xdrLeQJULkD011L5ApukkoTTBGMF77OQyhuIf2Gu2qHSWh7YgnhW3mAUdkCs2fHYH/tFMZCDckdG8Mt07ekPGBSzgQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz9xCMt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz9xCMt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF7CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744772993;
	bh=E0fcqaZzfKSn0Ewr9ZyneXWX3nLZTK9QSJVLs01QEJM=;
	h=To:Subject:From:Date:From;
	b=Qz9xCMt6ER1vwQlIKwKcgI6823jpNhRum2iLuVKGHK/MKdFzpxylFyywNo8bplUEL
	 TC2MdMbBihr8MxVa6UFQGWWEoPIroAaz8k0R/6gUGVx7/TglcN8VNcw38SSnLhEHvY
	 DU/2atJcMXtChBFmzpS58XfLHhnwPuR8I4YNfC40EOG/L+7iZMTOsPblfD6ppY3Bii
	 vOK4hU9IcR7xS+huQu4MnDK19WMoHY24lMLrRPLWA7O7ErmKkf/0c+I+t+GiJASN/Y
	 iAQK1bzj9+Ls3mXN/ex6k2bLCdny45K8LVvdySH6CTsFpTrJ1OsfzUKusJLft5duab
	 vnnjHt87lo08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970E1C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477299359.9178.5580959750294768885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a547a3361972d5f9245f61891b21305ea9d7c32d7581a44695209453ebb3ff54
Date: Wed, 16 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744772993
