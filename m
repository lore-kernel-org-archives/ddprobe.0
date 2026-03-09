Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0795B3806D5
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773050094; cv=none; b=EroRTgOoiHZxhZUTgHIpGcg8E81xRPMDPIXqs3QaxiMREwPjgpaXUlLFdfNx1ty4Sh3XI94Y0YBFJkeHpKXl6oFCvIYkuWHYJvFe4RqF9WZfhv/ZLwzlW5kxHyGTScIYbKCHKfDSenuqvjjJ6TzvZ7L41fTjhYMuIhnOPQ2yHpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773050094; c=relaxed/simple;
	bh=JWDivqa+e88kCZny4zYroOjYovRn9+uvTj3oDVSKCi4=;
	h=To:Subject:From:Message-Id:Date; b=mqnjM5ucjuZJ8SjUDPo30mt2Gfhe/Ua2MZeux1nh9o+eeEEwzEjZwJr9qDuwXY18usvw2ej+kh7D9cOfMhoHDhTgYD5Z8IPm+KHRTyN4AU8NpiIz/br5CpCI16I+CLuJ2ekz4tZRC86xZTvb7McRTuoJogwgNuDNUOZXtCHvFPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a665Fafl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a665Fafl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F0CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773050093;
	bh=JWDivqa+e88kCZny4zYroOjYovRn9+uvTj3oDVSKCi4=;
	h=To:Subject:From:Date:From;
	b=a665FaflhErbGSJYiEuazNq20+YOQHwybBeYitJY25xdk9LkpmEzUZalQDJ67PYcR
	 Hkb+gUg1zK5MdKXegsAmodcKvsxEisfLP34OnnM5IaznIsuocR4Ft/9LDWVFNF7afQ
	 QuyYshUpCo/S5pS5Z7SubOK8SybCOApeNPPrT94Uhyx55vraZFvdfHuAhVW6iSTj6o
	 OAiL6oElXAcqqyHhelXBI4vXW6y1hJactr15UEf9iuoxdZkh3A4ESqi60iTNEWQmqR
	 FpOLHstaA/MwEwUX/4vEyvVQx8BhToLZpdBbMys4XrSe9wEyR3EHLzxN6aLz4WarOf
	 i80ER/Gymu15A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EA5EFCD71
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305009360.26378.12385024692464121063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333e6e2382079add1fffa742e649644ca78a571bac1f5c5b8c5f84c13f8f085a
Date: Mon, 09 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773050093
