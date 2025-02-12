Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA69271834
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739335854; cv=none; b=V3V08CRZH1CVp7SqThwyCO/JfBSYOfSDPu4SJQqgZm/QJKSI3Yp3kpw5TnkvTsI4vqy1eLump9x90gp8o7jC1Td1gwdG94GvmUJ7rRq2GwyPFPLpxAd+D+pDFrn7K/BLqsDRp2DhSz6ODYOKjhI37Qwen9tqYZjMTwy9lu8ZnoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739335854; c=relaxed/simple;
	bh=CPxQz4V7JHbOc7gUYEz3vrg4Cu3wwedjFL+TXdY9eGo=;
	h=To:Subject:From:Message-Id:Date; b=lSyM3Co5333YHeeXizBiLOoGajZrbu1kdoWBpms3K1qSfvBxq3+dTMhMf7Lq2zE6H5IqPAATx5/gpHxUpryqNryEgw222st9C7E+adz61+mhoe5ihmCE9n3CRoVrVdiNRtq7oSoch1n+5B1Ya1Oh5uLhmmd9CJn5HduXWeHLVtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGbRA0nb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGbRA0nb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18B86C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739335854;
	bh=CPxQz4V7JHbOc7gUYEz3vrg4Cu3wwedjFL+TXdY9eGo=;
	h=To:Subject:From:Date:From;
	b=oGbRA0nbk4Nf2iuzhAo82JvZ5DTU7M7hEp/IYOHavw48UknSmDsEhrmhM80/OZJiy
	 t+o8BSsjw+HV57hbuasaYIM+EGzk1hVxgpdARTzqQcRYUfhB4QAySK+beY1MinC/Ix
	 4/PyCknmQRxwsx7d7aklG+TRThSHPqBGYesU+7AzTGADTyOqOR6SYchMY1QZYqWwkE
	 KzhqiVB07EexXl0U18T/FE6OsnYiZCXTw7S6PYliqKGxSEMMX5SKE52JeNQ9CXm5Dy
	 bVZA+5CROBjfhw+an204Ho3tYQyenrp4to1TOz0NACYlGqiekaVeCR5V+N4e6yr4qA
	 jpJdvDMKH/g/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D123DC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173933585383.1748.13235798215381585187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce6b5c0f60328e6e2fad07693f28f844bdec9155f6a01b8d056d0ac77d22440
Date: Wed, 12 Feb 2025 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739335853
