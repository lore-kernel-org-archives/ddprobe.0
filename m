Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0666912DD8F
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709821097; cv=none; b=Qlbk6qBqxizCh+67yh0LVnbzw+lCtd1olEhebcwezPgDQPZ7Y3rlF5KLAEhor8F3z+tS96ukjub1wNqp1YbPwAM6vNIK9coUtbAQvG/7JylcQa13ExpRCDtuKT/G8qRa/ThhHn3jpcLyk/tV1bLCdDD/zgi4wGSzopSUWSqjt4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709821097; c=relaxed/simple;
	bh=1oTF/Bldk0Z/6ShQ88uPh1TFTVzT3d8Q+Jeaup8RVD4=;
	h=To:Subject:From:Message-Id:Date; b=L4CCT9U8jfPV6MBtACxx5/HiDMuL8WG3Xnst7EcnkiFMvdxZ4K/eINSSutJUXElEA5GMw3oFqLmZmRsndeeZ6MYsIKJspblw4fCT54jfaZ8hp4qL0ArR5ht+nxmwZbvVXmt1jD6i7z79e1OVs3osF9DdQQBiBTByGA1OKA7jMMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDaME3dQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDaME3dQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E21DC433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709821096;
	bh=1oTF/Bldk0Z/6ShQ88uPh1TFTVzT3d8Q+Jeaup8RVD4=;
	h=To:Subject:From:Date:From;
	b=bDaME3dQH4Cf1I2A86nqvRoIw5BQv2sZkAmk76CubKW78xi0GM8O4c9U2auH5Cmds
	 /UqkeNZg2AP/tW2A5pkvSPsvUUr3GeDvYa3Jm0k7A28xVgolV5CGq/ARf+HXxErdyT
	 rGIvhr8GFE6p7gRVoyk5Vy5qPctGp/zEcOpdX6aWbbO2i2zSNhe7gAhPu3uUow7AZx
	 SodrmJWaT16KupEfQqqJ7dTe9oVpFWCOeaSKkaZdpZpk3+LjuWwgZNfZw/SQ82/92G
	 arHsXHa7sHGNiOK5hZq3A48h9JGewXNTM1vY3V6HfR2eFumVz17RHgUhanmduBbjKy
	 oKY5rEPieTNTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62120C54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170982109639.340.13420606827884556841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30475f736131f351bb589f599e569b71dc23e05969f4b30bff6d7bd698b3cc9
Date: Thu, 07 Mar 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709821096
