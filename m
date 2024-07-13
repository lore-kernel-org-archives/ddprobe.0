Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528801E50F
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720888223; cv=none; b=Z89cNNUkBU6mrq5X38yslDhoj4YJhHqFfiCZ1lm56MKo7uREcq7l5hu1UishjxN3xxVovo+zObikE84Cn4JiHEeNP78Rd5Tywo6exOpLEFcumcThNRHxy5r9bBsZRj4xAfs3A8ZDCpGK01VUUsCGec2OyZFoovGV3OewHhOaZms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720888223; c=relaxed/simple;
	bh=0ht5mENUk+S0o4+8VefyCT/gnUmp3xexRtBByyljQYQ=;
	h=To:Subject:From:Message-Id:Date; b=KIWjRxkRtj+OHbJ4367tSP7/wzMOKz8b1TGRZzIe+wwmEZ+PxYMcf3DPZQsUOlq996B3yMn6yTSwmRZ1Pwe3k2AdcSHS8aj088gSY0yT1WaelJ9sARANTJIn1KWv1bSA7Y5WepkDUXGwA9yDVyldLqGTIPaA1PafAvFy4BdnZ+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILRKfR/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILRKfR/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D564FC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720888222;
	bh=0ht5mENUk+S0o4+8VefyCT/gnUmp3xexRtBByyljQYQ=;
	h=To:Subject:From:Date:From;
	b=ILRKfR/QKB3X2N+vN7m4U30hODOAWPSGCElEBCF/hL6P0MMZTGojvxTb+2pVOdrau
	 fW6L0jv8Tg6ciisufDQWS9kMZ7AZM0ilzizshC3bZBPH5ZzD01IA26tvG2nj/RvsPR
	 3FzCeK91yYh2wCjEyb5FrnMHOztc1heX5T61WiEm10KhPSAYtN7qXURq81S17xm/tQ
	 5/Uy5jA6wbO4zuDg1bB9LwLye1Y8b3yjQE9xzQ8m/dSwdYkOmC+oUj5UmBffS4P3FA
	 Lhr4Bb2FACNXvTPky/mM5kCbDRx392vJUGCanGo75GyZHliyHp1E9PsIYZ+1q1e72/
	 8szKXcjWJ7TFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C189BC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088822275.10958.568590640300707551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946628849c2842506dc3eb4523004a11f547a1186007d1dde6d5cb2206e9fccb
Date: Sat, 13 Jul 2024 16:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720888222
