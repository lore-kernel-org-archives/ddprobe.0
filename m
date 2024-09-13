Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226CA4A07
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726190754; cv=none; b=tlWzrInN8c/1Od00WyrZyFhQ5/N6jU8kbWvSS6mw2BnHaui0hyLGyBMPV4LSRvNG7qzPlxtFrg4YTJxzX1D8lP33EpwXdz2F3EjmLfsWFfZkjlaXnMvQDWWORHoakVDvaXBBN2+BgzJGJqu+JjKkhPnr75MRy51qoPnI0RUtw4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726190754; c=relaxed/simple;
	bh=QvXh6atyDU+2R90rCAJ2M1DigH+ypj9e9bWHEm5vpBY=;
	h=To:Subject:From:Message-Id:Date; b=gczNSD1vIxYWnlbsGghS4/+BDdg5Yb0cTEQ3I6LFMdfzYxxyTX/TiiEtIvEHPJxpp+lcarswzWhFwcMxiTaEvpofNOWblKiUT48B7pNgX0PyfhGMtQOFxLgmEFZ0db8Oa4Zy+7LHuPkTfWXFd1BhfYVHAjllFelHc39zT5fepEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KI4JqYxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KI4JqYxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50ADC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726190753;
	bh=QvXh6atyDU+2R90rCAJ2M1DigH+ypj9e9bWHEm5vpBY=;
	h=To:Subject:From:Date:From;
	b=KI4JqYxzz/zEucbHdiEofXJr6pao2loJZRBWU1THyzZDgKyK9iOPWpVLytELmRT0o
	 o4YAnTTaPaOEAz936RMm6yAziYdb9SnPMd5Tw34YIIEzSVY8JXNopiR4bY6i7SM8tc
	 5EIlzdaWtcOjU8/J7ZIhEJfLVuM2JicRwPo8/yMTH400VPYo3ZlOgPHUpRDwhzl2b3
	 irCnZqTHb9JBFPlI6lWVp2r6oUlCJb1x75R0APpgfxSHcF1iG/cJSBDrR+elpkHoVW
	 BYn2hrf6axA8hrQrbI783MsyGNDwdfjka2ElcPRnM39KtiJBnRHvG3gmiPqhSAfvoR
	 92T+wlwZ6Ni1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB2EEE278
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172619075359.12328.13773874156409325327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6a834b9d06fb5c2d5c19ffe1f221685602d7b247cfe9487809acc0907ed623
Date: Fri, 13 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726190753
