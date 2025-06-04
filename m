Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD0128DEF4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749041994; cv=none; b=M7sNBgbdoPfBZKW/7GP5gwR6Ft6eJn0fvqHxifaLqMYdpCAzRO6/VmZXgJxUIN5plL1ChQalGj8UTccEZCFSaGzInP1FluFx+fQ0j7s/5qV2Mde2ffCrSqbuSAmqAMnkc23LvQVDV7UlnmM1PMePs44+BOVboDNeB0onSMjCd6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749041994; c=relaxed/simple;
	bh=EC/QDYJEUBzoAuRlYPZ4UqFEPNZOiSw8caUA/y/AiiI=;
	h=To:Subject:From:Message-Id:Date; b=ied/EM7f1XghCtKILRayxC9YGilMh6NhgZ3F9SD7x3pv5U3ZPOR0xnrEuTeDHVamcqLPHVvtQlI/9c1K/igAqN+2XqRur9l+lc04wntVgOkGQufUr8vEwF9tcX95MOV6kA1fMae5+t4ypTFFyi4mglOWoz6E3mQ1nCLlY+VQVeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxoBmT1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxoBmT1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F588C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749041993;
	bh=EC/QDYJEUBzoAuRlYPZ4UqFEPNZOiSw8caUA/y/AiiI=;
	h=To:Subject:From:Date:From;
	b=NxoBmT1gPfUu6ErwwL6ijmnpNRhQIT8GdK80cjI/cVneYyQrmPH4qkc56/Luhzsdn
	 KClwcw00yUrwInRMtQviK5Vf3DQWsIwO+/Iz0fl0p/uq504iV+mgdPVREoiAGEXf7V
	 o9kWBtUdaMLf+F+EeBqXZnRpgsxVirFKsalh0i7NwFZp96xyHRL2B+bUtCQegPsoCf
	 1y8KT+9pAWgqZbOdPMZLueoqzSitGdkZ3t07iomFWSWS77kCTaFsNiODStE1tXb5GK
	 a0ge63R/FhU12PFjUNSELCdVtBj0R/FZJeLo2hvT1iIJNddUY6EyTZkVCd8JMuDTBz
	 /fiIQ8U2nIHbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EADAC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904199357.491.6510166133305490129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266df658c211177bc4841b3f24a9441df738381cbc45bc549bdadbbeba3b3139
Date: Wed, 04 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749041993
