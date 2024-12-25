Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497F6155322
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735164354; cv=none; b=UzQEfMG7vTJAV7GoTBRBRd1kYRhq10HYQGdElWcny9VKj+ecN7nr9sMZDMzSuFK+aQj3uJbonR8j2u/+epzWRj+b/hOt85kcGHbYS2tdiyvx5zQASiHE2h9c0RM4Oaf9Rv4C/5I6F0RrSHfH2bsXALjhRzLfeoaQY1HvYNPVVOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735164354; c=relaxed/simple;
	bh=r39ynPFjh2sl0ThgyO4DPWmxnuWCo1IrnC5wV7IGTns=;
	h=To:Subject:From:Message-Id:Date; b=NliQ5x+fpTFa9PxPP/N6danPhWowqa3rjisLbXPg43byqFLd3cMJYC/LGOiIBABRmrDs6a3kUen9b5w9njTm+tyUmQOKdeiCnQARQKu3FG9NXzpV5dHVo3lXZwpYUhJk5b/bbY2GGvfFfOXZPofkGwj2+mUncZAO2eJDOZXnmHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g58md+wZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g58md+wZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07C7C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735164353;
	bh=r39ynPFjh2sl0ThgyO4DPWmxnuWCo1IrnC5wV7IGTns=;
	h=To:Subject:From:Date:From;
	b=g58md+wZRQgzz78KQ6F550vLEgdfmN8lBDGrehiJ/3ptwlyCdQEskHYUkWPZ1THxZ
	 hJy9oNiVGkc/8qDk80Yv6iH1RL7W9KqFPoGD9BSoy6tEBDtIdFXGXM9np6rfXeAGoy
	 lKRBJrO47qp96K0zpfk+qNlUuuNQUhfAAmHtzwQM4n0WkAF8hWcoieBT1DdsLPIOW6
	 kLQ8C09r3XslQf7CAHTqLVTRX6GVPIZBiDOXYPBlFA2QCyO+Sa08EGsSttyQFeoIT+
	 E3NF/lGyaTNVGEOcAzIEYqeK+QAasha+jrtOvQ3h0ZDmKlk3orXvFUSgNmI0y+uS7u
	 1FoWI1IIFYelw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9931E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173516435372.13339.10943052593882136266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147c24b15461f99e62f78295df6c5df16a139336803b80acdb7bef0dff7773a6
Date: Wed, 25 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735164353
