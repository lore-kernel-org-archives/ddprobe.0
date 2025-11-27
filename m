Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD872D5408
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764264774; cv=none; b=mrJju07DSHCo8jdhBWR543qjLbn+Ju4EM0/9F2o4gGiEJYMFFk3oFKidQlbMojPmo/opcNmC3ecB4AeHegMUzbSG8Eys/AGL87A/Ir4oNiEloTijr92YfOqgsAiLA2mIwXKFkOE2oDPVxe4rVTpmxp5Zhc6u+8Dg/tWq89yL9OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764264774; c=relaxed/simple;
	bh=DMjT12Lb19GvYsU0tj5VvHsBDbyZEGQPpZ/us+JNj8w=;
	h=To:Subject:From:Message-Id:Date; b=N1aY52EUhULd5drGQUz6vm5nNaeZjXcvvUmW0O3AMSH37Mr+hz7CVne45YnNA8WzjyxBTC989NctkcbQ0qswCMFtx9dRLwFAaNicowY/i+Lw9tCHf9BoJPlwReUerkf+fi5CA8xFUraOE/bh+1mYvg2FCIljqAAyfTNAUms/eEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcZO8Er+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcZO8Er+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA0C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764264773;
	bh=DMjT12Lb19GvYsU0tj5VvHsBDbyZEGQPpZ/us+JNj8w=;
	h=To:Subject:From:Date:From;
	b=ZcZO8Er+mZGSCy6/VLwFjBYDz8D0Wo8uL6WR73U9Nn/pLN7fC9yJBdr3WhDFF/zv1
	 ittLb0231LdvquReuWHMRA4TQMdhllON51jgyqGg6VPUSVqb/2qy+6QDlqNbingJP9
	 6zOIiguSGs1iKfKrFl7ZfALRbP0QMaHYWInMSrpy5Pf+cj0sN/fEB4V0Fct3c4Impd
	 oFv7Bvz9yPARxCgYMWqS3JNhH2AQ6vr/JXch93HV9ScJrQG9sgzQH4ACKlDx17J2CK
	 5db4XLBng5BaNBki1kM9V6OZiObEUB1VMGjlVyq2/obGmXT+wojtHzNjhEkVNBG9or
	 cZP3D1PveKAxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96281D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426477358.9332.6839300881060357650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2726a3d8818f7253272ba8d59c626bf166abf20c9b3a60bcc301e483f1bf120
Date: Thu, 27 Nov 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764264773
