Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570FE16419
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 02:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720664843; cv=none; b=RwTni2iI2l0iWRhLrbwqvIOvUe5T8tEGD5Skzt981Wq5hGxqhvQxBwoRHS7um/IgJm9pyM9Cc4rpczYmlul9nkvV3P7usUdO2qU5nS0QCveMRmp6BFBclO0TYruzLs7+YpCrQ3f7L4wf5B0D1lHX7g6iGs0NMhOW35A6Temvk2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720664843; c=relaxed/simple;
	bh=R+xqPXPB7EjTzGEHgLlnDdhevkYUYPg6c9VZqBgVZ9Q=;
	h=To:Subject:From:Message-Id:Date; b=jPlMaG5RjC98sqtuglnX3ErFhbiC5mmVRJkvjOoceBezmcl+pVxVWmo+YlMK1CdVUyApYuEL79qq2DeEP0HbFvGS2hK3988Jx2ZYlvGi7fmAS751ssaAZHdvq7fifvVvExTdDxONV+nWZjM3H0FWfOiBSGmloscdPqTItp4vF60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZONwgC2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZONwgC2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E4FC32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 02:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720664842;
	bh=R+xqPXPB7EjTzGEHgLlnDdhevkYUYPg6c9VZqBgVZ9Q=;
	h=To:Subject:From:Date:From;
	b=ZONwgC2sZCHtx/ACDHDaM5ldf4IcvM3TBNc61c5z40oQzlnM7+4eZt+uVWrs3aECT
	 ilMWsnkBqEte3Oj1wQM5tmVpgkcZk7MZN5zokQmgRQnSnAn2wK58AD0QJDxfDJ5q4/
	 azIqXK/XXt5p+H6CSr6YJDeRaapHpUmPXFCtuiNjxttLyJhh7PUgkdBtc+L+IFiZ7w
	 G41YCBQiGVrYefKLBGlovG8Ugdwa9zESKm316vNFqTtSQWCiE5676gDhUiJIOfgCzQ
	 j9/h4ZnP0LEiMuQHFaZGHfycoBcPeGlcUdF6Psup0hQ4HVmdXvtoTHbPDpVpgAtBpy
	 RO2F6jLiqdS/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8D6C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 02:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172066484275.20173.10167868439082414279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea66c341318dfa8d119a8908a2752b9b508f222ff2490f5c0585c5d05d8ddd6
Date: Thu, 11 Jul 2024 02:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720664842
