Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB534A29
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 20:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739650137; cv=none; b=Q+97GCArziowXWPK0XXgkR70bhpPPycuaKOD1RMUn3sQuK2tUrmnvRHUVWQARMa/x9kzBwOXOeGDB0Eje9GdJHmwZnWOvuGHsH4jWV4UN+XpAuZX6dncu+EoyCVSYVLwxZJx7tKZnAPHJ5OIOVvW20jl3E4/jalSi3LBDfNfCz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739650137; c=relaxed/simple;
	bh=JL5lgObL9qpXLHUKdMGH5hygU//MibEjxVPpZ5Ao0ko=;
	h=To:Subject:From:Message-Id:Date; b=gCwnLSJ8q3TCGf00EVxcPckVpXnLHUdCo8ASB6IBn8Wz+Vmk7bRv6nyzIbiIPFZ5vcfDpnStNsSLUilsWBdHq98KnnxGYP0EYvv0bKjgTU3JXUz3LieFiNes99lFYbQ36veNLMDqiRxINAZoZKLAwh1JpAxSwb8tqF40WMtbRso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1D/je8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1D/je8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3651C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 20:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739650133;
	bh=JL5lgObL9qpXLHUKdMGH5hygU//MibEjxVPpZ5Ao0ko=;
	h=To:Subject:From:Date:From;
	b=p1D/je8q5RzLhwu9yfeuDf1FiPI9HDEQxAIZ4pqzuG52rhWcC4nwc3b+Xdl42En+O
	 X5kvqscSIvBlnCJ2MHASe4RF+w3SD2YZyOsXgaz41T29VZy1Ih3L6G6UEJkggfpxpw
	 y25qbIgJGg2ALXu1U6hbv6lQi5aBaaYy4WyJK0i7IVgVhYfgD4XWURd2j2NqrFi2aJ
	 z/K2Uk7YgeVG6GehyG0FQZ8QPNnP+vFxZOP5pdsyFgrmxARH9GYmuuqLgM214FbXLa
	 Sk1iHRLz+djZ49RiXgTckPn8mB7g5A658ya7AJPhhME5f9hraNsyiqq7z1v8xUwMln
	 s28+9OGVB8YqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD47C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 20:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173965013360.19934.14701651151154950196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fec0eb599662dbb7701877ff912bc62848f70cb931923585e2e82bdc415e7f9
Date: Sat, 15 Feb 2025 20:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739650133
