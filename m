Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6270A214A83
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738754154; cv=none; b=lhn0bIGDHopgEKzTVuzYTXDFA+QQlOgr411pXGoa0Xzcfgzr10ZVj+SzRqRzK8RbQ3DvDcYfxbGrf2CiSRda+440t6rjfbzEDeAjzadHvOI2E+5LtTNjLWnKa+Mn0t9OrEqrsh6oh3HfPlMTv08He/HEkfoqZeiJeRmTpHTHb8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738754154; c=relaxed/simple;
	bh=fGsR/qDc9OjEhNEowRJOEdQvkwG9yeih8Gczo/VIIAA=;
	h=To:Subject:From:Message-Id:Date; b=TXsTzH/pDtpRxcngYHnt/PvakTKtwE+V4ibUkBK9LHD2WAtohkGowKXZRCSpnwvmbzr9CNFKnO7/oM1mkMt41sUF1KMacpfgxKS/JMoD7NleMJWvpGkMDmH1r+lOVDh+fnxtBoozKoI9xwRuFuRJ2YpxKQ/FUtO27tPJ+JEudPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho7BZcNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho7BZcNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B737AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738754153;
	bh=fGsR/qDc9OjEhNEowRJOEdQvkwG9yeih8Gczo/VIIAA=;
	h=To:Subject:From:Date:From;
	b=ho7BZcNqsQH6i9DHPqt0U4E0ErHbZ5a6NnTRzF67a4U77cRU8eEtB9glV2rsZQ4MK
	 sbkzgDVvcCCCElS/lDFupm5q0I9RQnGao3xKuSDN/vR6CPzt16I0j3sxWrh9C4MRlY
	 Qy1NuhGd4JAgu3cLmSK2YXfFk5F9uMzjWXuEx9PxK3VkJc4WyOZXBX/eXirCrM8i6n
	 Gins4YKyTPdaTeVnDxVEqekADyb1+smZvcK4h1FkyIdHDey1J9+BmY76LrfLt9wD3S
	 CAkUmhgrcPKL+hy1sQnH7xHMdVLv80jZtItt+KQ7cZ15kC0+Qx957HP0MrmkbFdSxa
	 9cYm+D34pAh0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A064DC02196
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173875415364.25471.10105570604695641859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9f7fd54b423d481ede13058816de9037e6971d6b5c7ef0ef60b35837400706
Date: Wed, 05 Feb 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738754153
