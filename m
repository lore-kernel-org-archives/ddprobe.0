Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E591DE3B7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769148235; cv=none; b=Y81kBMU5Dx3/DDmVcGFmsF/yMS1FUJNx208RRCjVQSPkwm4jCH1FVxLjXY1GjdCIeDIfQU1BDfwpOubgoCzggksq9/+NOoiVDfrusUViqVyNcgbbG/Tv583GGKvoyr3chs9mKHeR2O1KM5+94tGZS7ZglCAkPea7jBD7XFAfqY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769148235; c=relaxed/simple;
	bh=+e9gUNlxH0FzmV3VWoM7F8EvOyosqsSzNUnaQrNVMbU=;
	h=To:Subject:From:Message-Id:Date; b=XJgguwRPUoWsfuGJHzznzRemC5rxrs9pv6ECeQBIvrcYaaICqkolgB1sD1k1zDHwuOb4fQuoBc6cNm7H0uQlxD+i4mZCGOq7s+z8EH/oWNSGdIdFc+Yw429uKs4m7rES7p+5BoznG2zmJ5V/4Cg/HCpqXWDJJLt1dqnHO2iJluk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+BniSlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+BniSlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97DEC116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769148233;
	bh=+e9gUNlxH0FzmV3VWoM7F8EvOyosqsSzNUnaQrNVMbU=;
	h=To:Subject:From:Date:From;
	b=A+BniSlHAKfOK8q0SJ3dPetW0jPII12WHVfvj4cW+cY/YWcMQyOPENYC0zVIIvC3k
	 ZG2Knjri9ogFkPT6YC/7TOUS6PzXCZJHsMWF3804AvMRgFnr/QUEJ1bWKchomzgFWf
	 o8PTeEIcFQf7qk+RRp6Tl0dT8Aq8msZxmvvLl0p9MpDwJaDaGfK8gFs8qZQ0/m+R51
	 ICINKs99/62zbEx86haMfxAUD6vvUps7hbyXo1XyS4aJwFu1xDA7TVro0S5a/HWcDm
	 vemvdTF4Ei5sdui3QH8hPfALON7XSZ/peYCuob3Xdy8dzQ/l1OpABwt3apsnW1JL0o
	 m6dvKEa0gjZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99138D6CFBD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914823361.22848.6318849485328129757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7680086a3415d7a121f5a0dc594c3dd1b6ba17dec6e89a13ecd13137e07e9a9
Date: Fri, 23 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769148233
