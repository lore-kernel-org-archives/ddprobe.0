Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5AE535DC
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716199943; cv=none; b=o4laBy93TC1BiYXpa3F7M6yEKc/6hK3x6eawI5mDfJUZ4GWvilwD50YlPLrvPK29OZzQxfnlLze7udFxAEzjZU2R0g/HWVvNkRnh8O+Z5tcjtDBmkdHEAQRN36HexJqRowN/TYxQG4NQk1TnDsbCZby0ArXDKV94Kr0LQZhsyXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716199943; c=relaxed/simple;
	bh=L98JAWMyV3Vns2CtkUe/LteiREKN6MVyUhDs/81e+Uw=;
	h=To:Subject:From:Message-Id:Date; b=T9Wcqvl6b/EVcvNSK8YJjYZfCFl1H6POAmYHIj9EKjGfSQsUsKkyxXl4qPLDXwjre9jNnw1J0hBTPD3f20PE85Y6ql6ls9m7+mOKEBUwR+qW2xHj084OYw2hoo82o5CbJwsXREoSCfp4H9uGrpu/PYw3ixEzn2O+770v2ukhu7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUDq5c6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUDq5c6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADDAC2BD11
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716199942;
	bh=L98JAWMyV3Vns2CtkUe/LteiREKN6MVyUhDs/81e+Uw=;
	h=To:Subject:From:Date:From;
	b=qUDq5c6P+RL0Qr1gbN+vU6X29qEZ5eAfUJvzn1ixP3+SMQvNUhAT60uaM/3UKVxve
	 ffAcqtqMbjBCsN4mP7aLmc0c4zN2Z1wv9ECILv2ctcYDCFBoFKaUio+oEZ0YpQbChp
	 /9lXvhbpLhYSBvQVEKNrp+8l0zsLtjIv5FGKc6kbep6sCg9eDTOoHfBBy2GNV3AiOo
	 UqQnu3C4LjszcARKylvrzMwbf+YAioMGQmxsW2QC14RNWeIfjp+p3updiTDM8tHoHd
	 4Adjf4mS0/5LEWkUm7euAbWqs+AsKRo/+NW60M2dSaWN2L2Is2i7Eiy6EV2xc0UaJX
	 xon/AuerG4pXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6677C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171619994277.13826.5213760929739476363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe487a5fb7e0dc8e7a0561148d5c3260d2bea0a934821e85ed2c7be3e4cdb95c
Date: Mon, 20 May 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716199942
