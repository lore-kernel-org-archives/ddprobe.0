Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384AB2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762059594; cv=none; b=Zl8fOQ6lJihjuJ3KMLdOwK6887Y+L4AUeoqrMfFI4ns/GL/JKCz68IRicTZBLC15cEomsAaJ7108b6vFiR2OLaNSX5cvP1C8zXZMGIFdEKsxyprHi1mPqGSNPs1lRKmnJt0bumv2DldGh3tBu99fws8uegz+jEiN8gz8C6CWcKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762059594; c=relaxed/simple;
	bh=tOafxZkRWm5Bq6sJtdbV7JATcCscDqbZzeVf4XogER4=;
	h=To:Subject:From:Message-Id:Date; b=aMmRi89oA6nQ0vH/SNL607kug6AU/b+lud24cSLx5OMLxwYcaSLio57hjeDaPd1guRXTsigAe2JJL7QBUyVTebsEupky0L2CSdMLZ0uERQi+nfdHzn5F4CiOLQN7AUu6/ohVlSfrpoay00cFg34BaWWT//7tTRsKFoqNtKud3HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1NaSOze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1NaSOze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9802C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762059593;
	bh=tOafxZkRWm5Bq6sJtdbV7JATcCscDqbZzeVf4XogER4=;
	h=To:Subject:From:Date:From;
	b=j1NaSOzefgprGFP2k5sjnLnuVVitzQ2sRAxMOYbjfkSabwlYOHPcI/2KvVclvOEAV
	 2m2CatiKmzJ/lbWvZB5Khtb3b9gMx7kia/J3zorFvODlChG7eBukh737F3cXU5BXRN
	 mZ56gHHb7C6xztG+4Kl/pOrICX70ML6vCfGqP/kT0CBkM7v/jT/8Y/dDqLp0/tsZWw
	 yoKxrHIQL+UAd2Guk4SGkAhhkucwmWDTrsGUetmNhZGdwJiWoMdJcynafogiSaHmig
	 O/PuleeeXXraqk6zQNCAoWCfqhmNNoUCQOBOQoXp6ZtiyFWdVjOFGIBpHAcwYnyg1D
	 eEpJdne6H6yhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95286CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205959358.26945.6256752462221462192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35f35b028e16c9ce4689d5e912d93a797e6c5ffd53a638d520c507c1d4d82d6
Date: Sun, 02 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762059593
