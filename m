Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47098179BD
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733880354; cv=none; b=BLdtj8Y2t5l7IbhKGRMDfoDOC5HkP/qMgLO0Trq5NvvKXBfgEU0WRrBTG7Oh10FIVWT1XQjPM1KAR2VIP01uj3UBl31ApQzcO3tgwOR2zuv702iZ3IVsFK/F1lXnxPuv7eonKGrRK70vHAdqpi6kQ3hbIqOYTO5oQI6GCX3e8Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733880354; c=relaxed/simple;
	bh=YaP/V+kC8x7snbQK4r4GKQd9F+7JRIGDTcXhcnxvA3o=;
	h=To:Subject:From:Message-Id:Date; b=od6MX8Fftnp3LsuqKHOlYLpQSadUCck1WlBqUn+6ZxjUFJVjQU0l/80Gk0rCBF+Lfm0mY/V4ujnpr9+6tRiEJqulU1b9wkFLmL4d56bntq6oTdBdqvQLck2h26kpE/oFoRUgqULqkLYsXiB7ikJnJqLl8tHJ+hKiweGfUIURkss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3+9SlLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3+9SlLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B727DC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733880353;
	bh=YaP/V+kC8x7snbQK4r4GKQd9F+7JRIGDTcXhcnxvA3o=;
	h=To:Subject:From:Date:From;
	b=l3+9SlLSbrL0OWC19jh0uBmVXwTuUn9X0zi0AQBnTfz5/u61qD9IDRvtAkHQf8rPU
	 ghhOgyalU16a+5NuFv6a2f9keuPjwhodW6o/LPPXJaguSvJol25yAYCod203veaRg5
	 pFqHwxHwDoucsqP9XyGr/DPc1WC2YfKnM37DGsAq9Er8Zu8DBJAMs5dviT98lKxzAE
	 IsjBwdzYBhBs4eedZFpU9q1AJGf2RYii2ExVnh6nNRZPlbPiQOz0/yj4kkfPQxYWzM
	 Abx5X1NmDLORNjvfP5PVr4hdMbA/RR/uCrS9dZHuLfOxyCGbzeP5SME2PDxS3NR4rI
	 OV0mC+bnZzmig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE02E7717F
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173388035363.29646.8676921454737856273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4230d79321b6e13effe93f84f2f342c16c8fd828126d8c51a95b10ff8f6956b
Date: Wed, 11 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733880353
