Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBB67E0E8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718789963; cv=none; b=SHnUguqTXuYws3A71I5rPfHj64e23syG8ASKvDKmyN8DFFfp+SlyUap4jxYiozlV+mzPTDaQ+DeOeEqiiMaiTefYuHQakQQfd0W7hUYTHz4jo6FuUuJ+YecYGAI4+Djaxaqf06EWoF3F9tMoJ/3kDWALUlYG/ZU1H9crWEt6dtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718789963; c=relaxed/simple;
	bh=abaiIquK2/9vXmIt4Tw0O0KQBd33p0imrKda0iFu9Rc=;
	h=To:Subject:From:Message-Id:Date; b=hpTaVXFsScyoPOkI9wTgYzgFZihtyWpGRSz1wdU404mWduX7n8fhF34x5yhYvpYDgIETUieZb96818mcXO3QFeXvGxhSktauuyOeBFRuhLIsoDuOBJnWyFt7sAs2h81/HrITW2RIf+3GxU+g80nietFsIGgRw/MhX8evXF1B9us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHrfl0bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHrfl0bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73FAC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718789962;
	bh=abaiIquK2/9vXmIt4Tw0O0KQBd33p0imrKda0iFu9Rc=;
	h=To:Subject:From:Date:From;
	b=XHrfl0bh+wvaXcNttM/jl8PKJD3Bdy7+yRwFgKtbWg7/BUYiv6dolVAX/jRGfSc3G
	 iOrEC3jYzGLnBN6popMrO82u0SIgThKuqYr+GKIQMhWyBreHUfoPMGAiMtf1oDwqPN
	 euuFzkX59rLObRHwhHVIcBYHAEZI6j43M3RqcnAa3iwKMPmIsK32OGElEgncbonLLV
	 Hv6gzSNXq0ox5LWEWfiHikLeE5GawxUIgZ/YHwBV/DVVSnysf4TPTa9mm7j49kbb2e
	 M3BNOcA9Sb+AzZ1+AgXVv5XYPuEiAjAPiQAHqP8OE+5ZJgnTZdiYsgyO8lzFygmyyX
	 3UFB0w5Xo9VRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70F7C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878996280.21332.6758777807430203867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c4aa5b54ca5c11822f788f7ac19d014353cdf8afa4396b6f16d0aaafd8ce12
Date: Wed, 19 Jun 2024 09:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718789962
