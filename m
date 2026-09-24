Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D2930F543
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790210434; cv=none; b=XSw8XXatt/69qBkbq026HhptMpg6ysKVqEb2FoWyhQ2C/nSEI59mceeyN/6d7WAdWCKqaowXFHqgQchcXqdm2QJ4l/DmmNn0uaKZbYGhQ+DJL9EGHP6UBQlldl1HUysylKw3fyuXZ3cx6W0b6u5W6VfnoppHtip5cRaH1cxbZSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790210434; c=relaxed/simple;
	bh=QMZqJomFXcSKSaTKziCbVFHxhoI5SOYkDYwC805kWfE=;
	h=To:Subject:From:Message-Id:Date; b=JIG7Gk6oT0EISw2BOcJJQDS/iFaXX5o/R6mev7iE/2uuEavuCALC2RidoG5zg6bO9bihvVLR649UWMK/adm+YKbLKodmX+NA3+h7RxXb+6VGj1/RiHymGtUadWQmeV5adGs9sIN7r614F/m5eAmmn7RSqTmtfmjtviohg8q2o/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpkLhg6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpkLhg6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF76CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790210433;
	bh=QMZqJomFXcSKSaTKziCbVFHxhoI5SOYkDYwC805kWfE=;
	h=To:Subject:From:Date:From;
	b=OpkLhg6nAFrHRMEq3uZtxgalMmz8JNdtbUluZgNU9aQNWKiXzwqUW2gpFk1bE2OI8
	 SDYPhM+t/oo4Oi7gyKeSKP1HUbsBdGLLgoJn7id1R3znyqv1q7Nkyv1AIiZMm9YSK8
	 OVGCB1oUIRAP8lP1kO+l1/FBPMBO3n8AS2cgwJPz4om6h5Tb1yCcvgIHBrtqJQjgv2
	 XdLme6ilDZhXnuU3AtYgnXgvh2ieIb21yDUXSjEqS02vjL1GyZ4aCQSY+ydR7KOCH7
	 PNWg+CdIGQJUxnhXP1dvWcOwiiUJ6OoM78C+iECPrqSQLQQu+AAhz5gTevYlLok97R
	 t1Y+ugQnGAlYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B62C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021043374.23066.12399922373504376587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fff2f5b4fe37ae34cfd5d85faf714778e04d8af79f3b104dbaa8ef2d4fc374
Date: Thu, 24 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790210433
