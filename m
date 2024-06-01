Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0AB1CD2F
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717281923; cv=none; b=AT9Ao7HkS6+oaIcT21lq52GbNErbtFzqPeCVbde2uQDe3SBVIHiOlh1bq9qr9EaGlLZs1rc+RpfCrQbTiyFbUhcF50K5rpg9CqWVu+rCbT3jNSNTC1I5zG5E/ihPNROvxcLkigkh5XiIRnbR1/jA5JbuEy1zpvAXIDVeUWHWlFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717281923; c=relaxed/simple;
	bh=lemfArj/sKjq5MysKMe3Tbz2HuI5MHjkazFLh17KVyA=;
	h=To:Subject:From:Message-Id:Date; b=QtNgiFQUwoG52GTO0xWfew0AxEa/CXKysV1L7o5YjDdbZN1nUYjRt+EUMCzS7d4X5fL+uNYxZFXZgFiNI/sOu8e+hlQR/UgjyW3DHMlCg5bzjsB8rzEEzQJ/jdHClN/5IvT+V2BVXNxRhp4NM18/kT9DQZjtkBA3j6dFLOuW+54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBysNUP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBysNUP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A98AC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717281923;
	bh=lemfArj/sKjq5MysKMe3Tbz2HuI5MHjkazFLh17KVyA=;
	h=To:Subject:From:Date:From;
	b=GBysNUP9MEevhwiYSqBUVkzJzmm/iRf/mCAOLOXKBg6jC6t+1TDx4uGGtCcMKSlYC
	 B8qDDj5nJAy/mq/udIhBl94x8w9ghLT5QFNMSZmE5LkKeP3mZbib118NDQCGbvFMK/
	 WDIU+lieHceGlKF1Qzxcg2LUIeOvGWVvkk6oXSgOMOw70DNjifNjliIjEc7VMQn2fp
	 +lzhc6eFTjYwLz9zmfuLFAXs9S4QUp0D5si4vFR5hAYtdoPAPBu0w2ZQP5fv+E8N4A
	 mRrOX/VStedT7X64DVAC5mVmE1auEqN+FKR2Wx1pSFGBPGFOacKU6iFAbYjpi3fBOd
	 9Gvj2eHhfhpyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D56EBC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728192282.1906.17614683664035663869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cdd9eada23617d313114d373cd044fa510c51f791a13eebea1f185fbe6717a4
Date: Sat, 01 Jun 2024 22:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717281922
