Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7E52C1AC
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709108296; cv=none; b=nsmo15I5mGIuVOSNoqsSScjIn5PWVK4nj7hiCWhhEs4VIe7KLMql1Yt7wpREuFU3VsBgY8MU3TJcdjIQCv1YPlSRzAWO/vK/YSvrpn1A2GX08q1A7+kzeuGOC6sWyJ+C4nSl5SeDNA6QRcDM1ro4z1fROmPX6/e1ZrG518+ZxNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709108296; c=relaxed/simple;
	bh=5dDmXPStYPdjVpGvJB+01sZmFYLD713CI7hO/52UZCI=;
	h=To:Subject:From:Message-Id:Date; b=c/i087NBOFqCnWfbg9YcvfCHU6rmDrvQy3IkwObH0OS7uYJ4TyUqTyBHAD/O1J9owRn/97GsZznxt6Db7AnQ47Hn2/JQnateBoOriLoGpFK/jx+haIBhph9LFHxLaWuqZQU2XtDirmDDRsoD6nYTptiz4nJI6bkY0j5fRQLlJKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leP6OMA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leP6OMA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8257EC433F1
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709108296;
	bh=5dDmXPStYPdjVpGvJB+01sZmFYLD713CI7hO/52UZCI=;
	h=To:Subject:From:Date:From;
	b=leP6OMA4NYU0j9eO7I10rAjjwmgXb9BIBZILRxyJwz7ZoSCw9cMUlT20tPw3/Q4V9
	 msDHbpOORFlY5L2WIGlJtx2Y6jNPNAVGWcfblhAqEEsCvhrUeYQ3VCACvrvB5A10hK
	 HDdiXOx41w4XZRXGvZhXt76JLX0Mn2i+QbHIXsAXQT0O/3c+6zRLKirZk5GbT+ryXn
	 4nTz9bBB0W4d2wr6ncM6JDP8/44CftxhlUxSiD0jm6+W3gCEUr91kb7G/8wU1GFgVj
	 TP7h01jPj5UmqfkGEU2zYlb+QmE0bUr3LD3o8AuKOF94WtDeD6JlJ+5zWAggHwn6gl
	 91VhwXrngW2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACA5C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170910829639.13610.6588892211212368943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d115a82cc66ca6ecdb705345f08241ac72ef8451bd56226e49cfbd66801db2
Date: Wed, 28 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709108296
