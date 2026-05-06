Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206D33EC2FF
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778065654; cv=none; b=VzhVvPAzJgMkhlEcNihnElH8Z/jJjODYBF/hpLZoYA4TJsUKqeBCVT4SIhJ5785dQginM6HpJBf4WY6vpm5BN9WqkViVE+EEpppj9/1TDGCcQTOBtVnzEWYyDQeokjx2jwv1iGs23qCuY6SD7VRqxJTXYHjXnVbob1OQO7TcJjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778065654; c=relaxed/simple;
	bh=P1NKUrP7G/Yz2SgrAS7y/wBi0Lp90+jYyxWNye43o5g=;
	h=To:Subject:From:Message-Id:Date; b=buQFdnka9vLT4+tw6QA1dzi7llG+oQR0/P06JjsJPP2hv++V7it+5u0AomvrDdRFfF5JYcuiQwBfaxJjNQ9jGxhidMzZd4UklhHL4uChV0yUlEaZq3IEiJvazksqVbN+N4jB7AAnn/9WX9RX9RXwMbiBOu02E4mPns8bFD/teus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZAuNQk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZAuNQk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDCAC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778065653;
	bh=P1NKUrP7G/Yz2SgrAS7y/wBi0Lp90+jYyxWNye43o5g=;
	h=To:Subject:From:Date:From;
	b=CZAuNQk2oYu5GGKmZM1kZJKSJD+j96vvCbIwnNyqLZabEdXNWPahxvVgYdeaS8LcO
	 iZACLS4GsQ2NuPZWTTVK27t85OS6XJYbAIp8pdGd0tg4sfKidTeyIJ6DimI8viVsr9
	 3eyyP2CbGBv8V1hPnvGHJldzdbDsBMY6XX53AnrCAQc1q2RRNW2T3N5fIaPwWX1oR9
	 ulc3SjXGuTbaXMlbGiIMjP6ZwFrp+jDw+HICZCa8REwZs4U9upF5R3EHXiRsEd5F0I
	 uhEfIhQ6WpciNi9g1xm+LsHHpwJSYvebksx1Wo2RimYqF+fc8hctqJrjRWD1kKWjVD
	 xDIubHbXPklKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9B8CD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806565369.22849.15541912751615903343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80191fab5ebadef847c0646c66fbe9cf18221e2f2df40811257a8bffea95b102
Date: Wed, 06 May 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778065653
