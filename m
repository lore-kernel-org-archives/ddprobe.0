Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDD264D
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 23:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713569424; cv=none; b=p8dJbmG7crZDDqjjQjo8xpramggBevRCLZgnl2yhZ805dtwHpQv73htvXKh3GISPOVPMiXuWQ9NUUQD0e9NcJHfhsL15VdUpwd4oe7AlC7r3eowG+wJ3vVzcCeSnvBzA6FhnIQzZ9kmB0U6atoSBRWk1InS2LKF1a22qCAe+3MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713569424; c=relaxed/simple;
	bh=pKtwaf6Cp4tKlnHKbqXDkcDVDr9dnmfzLCU3vDOOzHI=;
	h=To:Subject:From:Message-Id:Date; b=Cu3pp9aJZmRP1TyL8wAUm4DGOK4AmpFKoFS1HXgDzJxdALan6i6kaNof2TT5tNW/h5+RKD06EBlnyaxePRJzVxHubOrUH2B1QxwtyYfm3pky7XWqXCTWMJYli8gNQRWcifEk4UgA1ZVStRB9c0falzOMT0G8gz5144kd3AYNcu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHbZT1NF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHbZT1NF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF845C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 23:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713569423;
	bh=pKtwaf6Cp4tKlnHKbqXDkcDVDr9dnmfzLCU3vDOOzHI=;
	h=To:Subject:From:Date:From;
	b=UHbZT1NF4z1TH7NAzAZtKJ/g6Vgrin8hvLTIHWIt/NCub8Xm13FkPehl8BN121n40
	 CsaGuFoiHoFJMg2oHPWuOzLUlj3lghAf0Gd3XB08g9XeX9FHwbTM10AiBg/Y/sllsz
	 Er20Pqm57TzALl5m/RhQXylfnbN/be32kd8awV4R0ObVw7EMZcjSPqfE4LSHtbhMgT
	 6suOBIdYZPkqmh9U9m2ZdxwWWJfHIY5266NxPgqfRa34723cSnSRyQYesm3ZAI9aoI
	 pB2z0wEKQyhjbPqHXEqdSjRxp9FRD+iu9PTTkmUpulOYil2uLfSV+vnmFQSzSF8LYd
	 pYD5GDIOzR0PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F7CC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 23:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356942279.28191.17019533635140224976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e37e839952fb369d5526a7d1e491d1e6d557a04dd414ed44ce35d889796c85e
Date: Fri, 19 Apr 2024 23:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713569422
