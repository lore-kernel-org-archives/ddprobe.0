Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321A72E62C
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748946594; cv=none; b=e53TzIl6ryvLacCMEQs1Wun5MdS5JmWNJ9QviPpR+eoX9Z+e27tJxofTYJwDFnJhtes2q6iQxmrEIaR4sN/cc5ues5VJoxfiYVXtvNwKPpxaDYesvb3QFs1FzYNxr7xu3wwYD2qVjtO9dyepuIc0hpU5BoKFnOq6TelraDdKt/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748946594; c=relaxed/simple;
	bh=i3Bj6zCdHCrKN+6lJ6RWVJ8JWZQLpc/RYdVynsg63ME=;
	h=To:Subject:From:Message-Id:Date; b=aZj2bmyDy6Ta2S0NDEbsHac9sb+DvErX73mND6VFiH6Wx9PEI+Kp+To0ON9O0U6si18Q/zwa9H1N3HKTamNNRqokQd3upRs5kg2Zp6XFNq+TdFWGciUiQ361H9EdNfUYtFVJI+kqy+4qruqhKXRRGd/grIazblCUcHTquj6M1xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8UiTuzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8UiTuzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB58C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748946593;
	bh=i3Bj6zCdHCrKN+6lJ6RWVJ8JWZQLpc/RYdVynsg63ME=;
	h=To:Subject:From:Date:From;
	b=A8UiTuzhABonrhgefdBeQJ5XDs3mxfDM236iEd1JU1YFrKiVN1RwBq84mfMbIl4C6
	 eFRFfLUuuepB1qN9CJS6zI7ozozUp2hm/grAfzTMe4Ip+olrcdg/+QNpKr3omqMDwJ
	 UpGtjmMeXp64JZ3NFIO+AhbH+gRKNIDpE7wdDgMVXRcJzFgifzOj14pXi+/622OE4u
	 xtwwFFMpWQ7v6etQucjnJCxxV8GGUF8G4lscziOsve/SSsEyYioASG7SGAkrw3zu2Z
	 IrkXDNeRTrVYdZGWhWBqrq8+8Phe6Z2KhvplQ0SbJZqJYJ2LRgL5v0nvlFO7gbfq34
	 PC/Yi2EikOb4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07DC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894659357.7248.7229416558669299429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b319650f409c91cc172ec8170c692125d7a06957ef38c289689913c4332ea723
Date: Tue, 03 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748946593
