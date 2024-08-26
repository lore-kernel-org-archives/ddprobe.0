Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE334C6C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724637954; cv=none; b=DgtgKKHEL5h6ZkEZXDyxBYODopD4Rzv6JpKoh/xniaSey8nrLpCv4KZvL2XbGZSdT3N05K3L3nsZy+9lV+2uA9z/35i2jcW3rI+BQhGibCB6JbZR6LD7HE2r6uK6Tc9jGfMXP2OSE/2DU6orf0uQYn2AvD9ghX2707AnsDrfYv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724637954; c=relaxed/simple;
	bh=lb/ugq5VGjEtAGDOkh/S7O7kgL9sIlPsRixKJHjoQ4Q=;
	h=To:Subject:From:Message-Id:Date; b=oJxQ+bmYeloPNlSBr9ely5NN356QUvkbQfyiNR7G++h0nx3uVD7d6Qo1c5Liay3vf+qO1NMAAND8Kp/slrh/qGv23RPiSmmR7KUrAWA45OuMmhaNegaSVjhLOo6Fq7XpMhQzNLV6xapR1pBnSUAXHwM+x9iPZ9AHAQCR6/HJuOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYKmF4ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYKmF4ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F2BC4FDF4
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724637953;
	bh=lb/ugq5VGjEtAGDOkh/S7O7kgL9sIlPsRixKJHjoQ4Q=;
	h=To:Subject:From:Date:From;
	b=RYKmF4ts8pdzmGOSEM3KraFXh/SnzzvnJ5K+mDaEnHHUNevh6xSfb7WmdG0gio43b
	 fTW0ta75vIsxHkUW8+6ajvxJgDbkCgVkWc10Q4MCpZ8NyUyYBr2bBzybeXQc9uo6XI
	 +McAI/J9nxtopAZjlinZKb7vsWTb+0ySkMg/U77j0ePCAz4XUkJwjt81diJN//hxFE
	 lzk0BowPAJ2kdNvL8z8K2dhjtQN0/W0pJeTZuyPKnWzQ3pBtaAMSfsUjYvTeCGDEAP
	 zjxtkF0l7A9ejK4srPc+J6ZRgdlakJcDK65yTmSwNvxrzWJu4PdqdVBmks/42vu5iZ
	 nnZtltsja5fUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DD3C5320E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463795360.15405.3426379819364907762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07abd628684ff2c0b6bac1e1432ebe13359329e7da9cb36757a26f56e399a65a
Date: Mon, 26 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724637953
