Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD51171BB
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790411434; cv=none; b=bB+3apqYTTB6tcc0zLlOTSrzCpkK/4dDOa6yZYVvg5gZQcQyCQ7eZAvw4XddO2MgM6y3x3lLEfSvOkgbI4U91EOtOZEiplKV3HFSQMIgSxcJXyynr9/FO7VplF0re/VDTzciE8vZh2iODtWqDsGrqY9Luo6XAcmB2Zqp9xKcgw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790411434; c=relaxed/simple;
	bh=kSx4Gukq8U152A43+OfLuvMXAi69/JnsQ8pB2ttEyYs=;
	h=To:Subject:From:Message-Id:Date; b=Z1TATsq5fqWYHJvnPrSGVCPh5hwPY9lMHXUrVR3jF0A5y1ckqjjiORIPZyAXXU6wUrra4EGHDE0iZ552jWbAHl5OdA6+NFFo4i/ZWn3YaP2G/6Opt/WGPO4AKQS344rwGDrp3v5Q2V17vOF2Aw7p3Y3wQPc8ZRuivbs7g2EprkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVLV5/rP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVLV5/rP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CCBC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790411433;
	bh=kSx4Gukq8U152A43+OfLuvMXAi69/JnsQ8pB2ttEyYs=;
	h=To:Subject:From:Date:From;
	b=KVLV5/rPavu7Fz8dLEdz8/6IvwcPVUCf2D0lAz8SBU6vlso3tQ9gbU7Yl7ULobz3X
	 2tXPLP/jfdLHoT1vVTqz6BHy5fSelU6WN+Ev20/71ojjbFt8VdMVhMEJX28d4vKpYo
	 qeh7jcSvlhe074rBHn6aDqL49q7EvaCYHeyoomWFKiH5t1bi20oUJ+7g5II1bcWhtN
	 6scxAlaVXNBunOx52tybPHuAQP1iVEC0wmBweTkLnmwE4gDmQd4F6L+vE21M2DpKDT
	 7nhezTWe1+YlPVGaJdn7rTqlsqxZytSlLvdKynz9f0mLj0h0hkkUbw0bGro8ZmAXLB
	 mI19e7KqpvJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAE4C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041143369.7493.11259858318489179125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6864846709975748c654acd3c1db8580890e74fac5e394301cdaad0078362fb1
Date: Sat, 26 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790411433
