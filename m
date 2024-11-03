Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307CC57CBE
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730602554; cv=none; b=llBYpXnFwEmhrBjggAsv/X/nSWLl0ryf7pTX86sNlAVrEVqKVM8r4OVPP9Hy5TnjpktxLHBQJ5uD0PEueNIP7xvK5k6IqPEFJXMxuZDvSwKmiyL/VeBvavKwNXMKqMijve3UvmiPq3jsqaQ+rhmV0C0lta72VjYOQHPvbQKGIWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730602554; c=relaxed/simple;
	bh=lG0bTuNErzGPwMByWPIgfM4z02BJJ65Am3YU4/Ypkwk=;
	h=To:Subject:From:Message-Id:Date; b=R8Do7A5jbpNvcBjk/S89GrDEgfEKYUs51tt16u/0L6EgXRiZpzSpbvP283Xc4zAIOK5XxkZlwgO45qS7pNrlHBZ113FKd5C/wEpEswEw0K2FEviNdgzj++CZEA6OYf+wTtUheA9kniPiZIEqiumTqW2NAnoh8mPu4wn1O+Mv0B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPJMjNh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPJMjNh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC412C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730602553;
	bh=lG0bTuNErzGPwMByWPIgfM4z02BJJ65Am3YU4/Ypkwk=;
	h=To:Subject:From:Date:From;
	b=JPJMjNh5lM42bF8RF5gQmUOL9uW+biVRddqmA6iTk3o4uomZN/yNZwWuBIBxPjsBq
	 RtOHr1wF68e4GFIjeJSnpIvNmWxGX5nH7NXtFVxNpL1i3O3qldH+TYhLGlXQjvH2Xp
	 M6fQcpq2QaRntr/3WOokYYE8cUovMaNqakCC3bWX1dwcM9CK/BeqiG2AWcjaBR48VO
	 AhvYUJGYU9vs9C3/jKR/4Voln1uI8OIi3CyZ9P7GDB+0VPtUayIKSlJQWzE+DuYjNt
	 hbkDwDyd7LUNdvxBrn1mjV7YKY/3mOOyYjTe42GHj+PBrW9uA/kzUZX7lnjo38KuRw
	 0mPUjT9R3PJkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98057E6780A
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173060255358.9701.13482304933349392092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889d073cad6c3c60b46cdb72ba1718d5673078b8dc33287639a3e7380ba104ad
Date: Sun, 03 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730602553
