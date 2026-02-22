Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13107E573
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771757694; cv=none; b=hMl51h+tRL/Guiiz9MXyw1r4BXl4aCuK2kA6k0kmliB0aBpR/PPJ+YtpWq5Sbqr11uf7f7dBuwoS7xgD5IO5oQz6CPUAzXlQqYo3rs9TKQIgzOrSv32IUR+t/X68sKgSPsN35CctWOihyPV0cl9av6h1Tl4fCuA2V2JWh8KEJcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771757694; c=relaxed/simple;
	bh=jwn+kVo4USMQBCjzFWhkNMTERnXqEgWn9ffyG2CM7HU=;
	h=To:Subject:From:Message-Id:Date; b=NOD3PkbRZxyN/sD7pZDqjXHN74uE0p4FF+YxNGPwGCopn7exPk1OhgopsbBqDwFZrY3ueA0GrI9CeK7a2AJWYsQDDIIjezbrgO4KbOsDP0KRe/fQZfXEjR44YTi1C0cWaUWMhY6ouBwKG7nrmQiZhuokDdcfrP3cMc1Wp4H5Gvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhY6W5qE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhY6W5qE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E8FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771757693;
	bh=jwn+kVo4USMQBCjzFWhkNMTERnXqEgWn9ffyG2CM7HU=;
	h=To:Subject:From:Date:From;
	b=PhY6W5qE9uSuZr9GNCHDeXHAieqmdseA0cbijBQ5tu1nz1i0Sk/AljB4H+1G8uULA
	 GeqMTbMyqPj1cm7CLbYFg7pX/KXW4Ax6LPeoyHYLdjYJuA2PxV0UbaCJUEFclEIy/Q
	 0LfLiHZkU96UH6x7tVJotfRhcatoYTV207Ab6raEc8uh7U/xDhRdMyJ2FcvZ9K5kaD
	 b10ZQPyoDSn5mnh8vyHvUKJmRmgcY3RMbHdIPILch5EKNqgx/uaKWWb6cTL5Z0J5Er
	 Sl02f0bnflAB349QThXTmSk6laeXN7ySBKKLI5/R/8I0jG41pok4hYJym8tSBxOaHh
	 jW+criLURTsEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A0C624D9
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175769358.26198.10213205138690555698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feec85b80e12ff5e913bb64daed4fa5a0ccef191021109f5a676542b9e638f74
Date: Sun, 22 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771757693
