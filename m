Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52114132116
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720876823; cv=none; b=DnwvKXv5/KSlTIR6Kah0C93xc1PpXsgplUXyuJ+51uOZlAA+QwdwiKCOLWOpdaUj0c8DmsaJ1V02DkZ1sVwbBPaGgIk2/DxHO7sfdI7cpomohaM9VvnAH1L4SeT9xxaDJ3j0wBm16rXk8D0JUhICF84j5C06KALip3+Hh039MQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720876823; c=relaxed/simple;
	bh=rt9DAfCOCIIYfcx4PuX1TLcQj2E1oaiYxC3fk6ygl0M=;
	h=To:Subject:From:Message-Id:Date; b=lm7SS4PJ+IuUeqNxYAwrSdk3G9g/78l6G/XXIh6AZQnlacsoE24RBybvcwWWBOCOfcXRC5p+f+6EOnVWIIGVXBx8vPEglPdnHV39wKhyyYJMmk5bQZcdICdE2wEGCXxeQBqp9BZR7Q1IKR4fe7WoIEY9n9kYPqIUf+YYO4roTW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2c3Hkk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2c3Hkk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D45C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720876822;
	bh=rt9DAfCOCIIYfcx4PuX1TLcQj2E1oaiYxC3fk6ygl0M=;
	h=To:Subject:From:Date:From;
	b=n2c3Hkk1SZmkdlJs3FD94kMeRC9dOhIMNkonk0+5J+Vb26P34gG1t/rTtZeyMTK6a
	 u6EoaUxs7UlIPLzSiC2dJizAL6lHugcnIeeJuNfdFilQ6kbjmCJI4K9/6u0bdHJ+Qd
	 nj9/0ugdecEJB4WFu096HmT5UqeBbWVIW0Hk89wXAz69gMHJb3UKR0nKvVVz0Vl8t3
	 tQqXDsSBGvOg6GjYz/fjJQM2mrSxASd1EXbFxafCpjTRj7We/yi6mqJB56W4quVahf
	 gm1ni3lrkvx8JaRSHvqJEHlOYTBUuEwTwdZjLoRxOhFTvUv+Zi6xX9M94AE4fdECSG
	 qYrmUzfUce3Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0148C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087682277.30299.736336982772368655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3cf05d7c47fec3d91fd83fdded31d01317fe565b3de83dc6a17a94f6f36bcd4
Date: Sat, 13 Jul 2024 13:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720876822
