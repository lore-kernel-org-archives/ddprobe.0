Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3134E27470
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735313754; cv=none; b=rPP9Vb+qHngDgWDaP2ldgsA7ix1q/SQ5zOOfdGOeZEo6VGvKeDFc/l9P8ua+WYhkUvZtRrHs9eTAIJQMIg1uBi9yXDoD/VzWNgJc28mF60cKLE3HPjn3Fo7Z/hbWMKcWfYu7o2Mh7V2pnkv/nj0Iu6KlfBTP/XJ0rj21r2Kk91k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735313754; c=relaxed/simple;
	bh=Cm/EL9VD0kfVb9qUnwAqkg9OO/mfDkGvLnOsbjjdtvM=;
	h=To:Subject:From:Message-Id:Date; b=QxDvUawHZH2UYWb3uJ3pzAjZHFuj9Lmr7G2bOwQ/35dLIAlxLbnIolfWYg7WWLC7wHi38vLvlOVaJg1g5ST4pMFhFbZZIU1R1+G4L2JZSb20N4mdZivXyhOp5SsfwphLNExoRqps0hFRmc6aTgIMpA7AUFIgsPonXaZsPjTddl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqDGfPlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqDGfPlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A687BC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735313753;
	bh=Cm/EL9VD0kfVb9qUnwAqkg9OO/mfDkGvLnOsbjjdtvM=;
	h=To:Subject:From:Date:From;
	b=hqDGfPlu1UvBwMicJSPmPd5rGbNWA8JRKcJ2fJu1khVQcYqr8Zz6PUejfHfW8R+3f
	 /etoHNq3WYYl9XULOlrwJ2XD/zICstlYEo6HVXynLvikVvkAu9cz94+d+sE/xPZXmO
	 2HjkvttNKBybFZLJjH4WbHyh/a4fri1bf/1ljA+7Q3VCRsEfwfN6AsSr0+sMyysDyb
	 mII/sjbBV4KNn125/3lqMa8a4jOpQ0xfKcpOxdTyrFE2IpLpMzfsPl4N/PXshXWPN9
	 3rm3YTaSsqXFYyijOcQMvpjHHc8Y8b0HsKAQiRUdEYbG3WsOxmjTltI7yb1BjKOjJ5
	 mzJ4Z35iSul+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BFCE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173531375360.9431.1085082468109546984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b31ff35da088db2eb999469266d797ea4c2c1eafa8eefd8e5ce49595142907
Date: Fri, 27 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735313753
