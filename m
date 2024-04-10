Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0442017F37A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712782097; cv=none; b=K1xa6ZKbM17dFyWHWghlaSyNHhmk6mV6B95UBvDzMN9HfI2/i1PBF4FcK9uKgtuX4tdqupwqF2BZTlxYJVj8jG4xhGlTnY3Zik2AI/QpCJC3H5iFj66LHMM+Ih54aESSywzjqeepVCnC3ZOKFNG/gh2wP/A23W+Nq2cGJC9eggQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712782097; c=relaxed/simple;
	bh=F6o94xAVch+HEf2j1Rea+7tyPvr3ttUupoIsKXkOvrM=;
	h=To:Subject:From:Message-Id:Date; b=CtOfVukkFrF2YukkeXpRmjbZ8bQPGgrxljsi3Ff00SAF/JTkhZ9a8gfCm4a0BjR1zuqLLeD+NUAZ9hVT9YzpRlYzBZcMtn5HKnSPQskJdxEHnd2nIv8kAkwqMfzQlYqllue4LXXvb/wjl2U1J7bPjgQT9H5+QUk6RBuXdLoVhlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0tIWSEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0tIWSEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 892E7C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712782096;
	bh=F6o94xAVch+HEf2j1Rea+7tyPvr3ttUupoIsKXkOvrM=;
	h=To:Subject:From:Date:From;
	b=n0tIWSEyk7R+6wFljRssWm9s8NHbLtNL7YNeQ0f6xmhb4Qv9UpOpWRbPeKV4q+Uud
	 AskREnksRIMDIhe8z4xMv6OaXqAJ6P42gms9P1TNl2VOOZYrd/4YUUq4gKoufqk5V+
	 3pcWhx0EtU0/iCTA7XCzO0BHh+EN26ObGKREQl3iBdE3w26+fTpSQloILnXI5PVEfN
	 PmXAxybx44I1lNtc70nq7xkYN6VdTgPBkgGu0CF5MOF9nbZVBFhds+WAH9D6QSnQGD
	 kGEt5i3Qsb0Oxul2kxLGtjE8hC6ONESbA/kOJwXb+cTrEefwdchHVz05scbBl+TGyL
	 dxuWXru4wSbDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F50CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171278209641.14279.9704656404700007836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d073467405a99ddc0304a4b5b102e00b009a8d4119c19dfa2ea53b62e2dcf2f
Date: Wed, 10 Apr 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712782096
