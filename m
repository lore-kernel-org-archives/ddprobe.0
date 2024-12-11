Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BFD236FBE
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733910954; cv=none; b=IRtt5pHWFZtFtZt6EgVOHVXGZ2CXP5Gf7PNCz0BmbChuKNax+qb9nkBMUBR3w4p3jFRFM4bs6P/wF1IU0YAagzqPv655yz+jJVqPcRYt8IPGmIBP4LjA2pfPZ6nxdk1L/+lET3eoeunYoYH0YOL2czeMxFXRhUljPHKTj3Hj4PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733910954; c=relaxed/simple;
	bh=wMoW7xCTpGW1YZzolh/OG6F7db8CfJBriVRdo9zdNN8=;
	h=To:Subject:From:Message-Id:Date; b=ldskvqC9GhZwzy6Z+NNL0e5/v59k//Iq/TibWy1c5CkJwemLJSNYNxubcBo9TgDQu1L6u1bOoLGSMtYplaAXtO+2KHL8B36aoLpIm8VkX/FrB9jW7DTYLKUnB204KRPtCaYqeKZ+A/otSg3YCahtsWZtDWX/787HuKlYeQIJeTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ik0FPVcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ik0FPVcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B533DC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733910953;
	bh=wMoW7xCTpGW1YZzolh/OG6F7db8CfJBriVRdo9zdNN8=;
	h=To:Subject:From:Date:From;
	b=Ik0FPVcJy5MAiBkERrzGqSMo9gvBLeSufq7ewwIwtSDIjLap9kEAxKhgQkiAmiZ68
	 8VpGlYIjQ+IqYlqyydjfnKiae/l6C+Ro0nSo05erUfG+7rEHJfxAkv9VrE4xq4UDm5
	 4da0sef9CPnOFaf0G5AdTq0zjK6Hol6Vwcxj/pbconiqnwRUzUTfKr/wuhLEdFc7Di
	 GtJUVvaiSSrz9EIC3rv7diGK68O/gwTC4e4B6XhtH7KS+1fwYefTlwhBwMBEFZOcbv
	 Zr/GrwfAQgiOBYO1Sko/QAvryX5mqDomaOYlSfaW4e8ZZUWxGKsQXOxdIGqqBsoplf
	 sna7FHaivn93A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989EEE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173391095359.26807.10276589609133650819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b860e24c187e7b375d57fe913ff85e42a7b252481fe67cb62f4efde5fdcd534e
Date: Wed, 11 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733910953
