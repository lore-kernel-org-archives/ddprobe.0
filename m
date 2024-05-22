Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0E9256D
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 00:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716338003; cv=none; b=aglNN9P8JmZ1fvo8Hi84BYl6PK3mBi8bWnrZZF0odWKbvXQvnaw6wKxbvMVPQ8EyE9/OvlIuPxbU9HvoTQlrAyrNl3wMP2UFRZGw1Zu1e+jZM4LaYjTGjABjpnkLF0OMq7+no5FG62/9dxcFfz8v380cvd0RTUmRr0575Swqjkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716338003; c=relaxed/simple;
	bh=XsLlLL8RlphXgeoB7mYRhoXM5fn7aaX8geseaUJ7VkU=;
	h=To:Subject:From:Message-Id:Date; b=iWtzAuPvWm624Sus7hoDjEyrDADgF0UHggEkV/y84s1NsvpUoObbfLT1V74tXQiF0ZNdpguvp1hLOPdclA7fvjlTYFiK3M1Q0zHKAhHWT1EjLJdHmXHltyxru4cp3o8xn8HujJL2fFBDZBNwzIu9neqOH4wlJE8PzPB9n3Ocl+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaP7993j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaP7993j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC11CC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 00:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716338002;
	bh=XsLlLL8RlphXgeoB7mYRhoXM5fn7aaX8geseaUJ7VkU=;
	h=To:Subject:From:Date:From;
	b=qaP7993juegScQm22tmwJdFMUsONYUUVndmK/aESD7ai46krjnR8Xs4LgaeEJHmn3
	 LVodqMBzJncmfvRGvAK4hsxxuxRpw0SkAVBNXaNNT3QalYfcjNp226w//02qRadSST
	 xaGLQP3CDUBD5IXLjxXgpRUVOJz6Dq7sK7JtbnAqP7PbWW1spA//5seLkDVYKl47gL
	 BWXbsBFAPmDjrxpTyaUH3Sq0W/hiSj0jbg2rfLF8E60Fl6NtKYIrcsbxwIOySJLngN
	 H/Zq1iPizDAmn/Tooa9fRujK6phNLbq6kb79QuRKyf4v9mDGBu4lFUeCIJnSgPrCVx
	 /CZQ1dtTKQaDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B2CC25B74
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 00:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171633800277.773.13779370780587837263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb9abe8f31f4c8b270655e22fc367a341d2fd9c9a995ac6046da8ac78711963
Date: Wed, 22 May 2024 00:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716338002
