Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454D02E6CC6
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760625594; cv=none; b=Q+BdKPZlDe0l0opN3lIVaUj2tOwMwg+UCq2IIZ/4BFYT4g3WBQ7xbdwzVN388vsmBg+dTNdb2PwJ+fwtUjgz8ZbHU7XGZEJNble33SY1xKzH6KzkBQWXdfmF8vWJ7zdcMHWPZAaf2SvUUFYP4H0NHMArcIkC44Hg2/IkYRKr+FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760625594; c=relaxed/simple;
	bh=jvxMIc1y6HHqaiFFjA0v+hXGKsUfL8Li1h4FUME+CiI=;
	h=To:Subject:From:Message-Id:Date; b=FTQ5Z4JFhUqoKNdvMPvOb1cwyEGtTolKKqzi4NPRwyDqiM0+es3hQuIXCvrv0f3Z2Vkhu/2GJUVTf91YigeVxGscWeL6aBsT27RKEFTDqUAva4euIeViAW3GR+T+aI3GGExNPGjdCWSVVllya4BV4LKJdhJwdHfkLrX7tCclI2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ak1YOXDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ak1YOXDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2494C116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760625593;
	bh=jvxMIc1y6HHqaiFFjA0v+hXGKsUfL8Li1h4FUME+CiI=;
	h=To:Subject:From:Date:From;
	b=Ak1YOXDjqTcXNLIkamAkMy1oj2SWLvc0/4zr4fNRuzhJfZQd4oIiG4zu7NpW5fEO8
	 38pPJ4n7Dh7khogtZVNkAmxSkaLOxD83Repi59XGpFKcgyqjgtZaGdmBjY0g3KvsNE
	 uxn9zMzU/pdG6E44bWV84v89GMEQdqKPG2goX/Epb1iFmh3J8QhoMcqkdyZIuaERXq
	 1+wvkoBgllldeYqvNZvy+wlkut0MbknneXow0jbvIeHTeKFhUl8UrWmSZdvwdfXnh9
	 NJIjKmqQDBWWvVmwwU6oF4GJkrZOpNv4wloQta7GrLX3SXWQSLUQZCozlziCAbzQ25
	 TBdGOuGnhnI7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F16CCD19A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062559358.17204.13917496873861502410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afbb0b71c0e0f65452bb24d03aa7cfe054651696f1ee0e7e098bc8295316750a
Date: Thu, 16 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760625593
