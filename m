Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5652FBE18
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760504394; cv=none; b=O6KMHxv5lqo0XqaWTLlqQHU3Z1Mi/qr778KPsnw0tfckxmF2u/bIN6/aYEkp5hs4M7Qw1C1juvvqcAf6dEAaAU+LyQKjJ5EyzA+yLmz0V/gehf2vcuegybw8dFWb885JN0UOoPoHJt5jnohXKbJ2GznwMOx8bDR3tmoeZ/Gti5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760504394; c=relaxed/simple;
	bh=45c6KVXHjtlbq7E43a/Su0rOqP0O48457DxbBe8hZ/4=;
	h=To:Subject:From:Message-Id:Date; b=q6brRSGRwykAKmLW4tLvO3/gOI0Klw1wXqrhhMamuxhCa0pdg28lKHvuNZhXYn1S4rOmWMoYr8vS0NYat+bxMMLit5uLfQlUYZsLa1e1kE50Waclwwc9tWPn7LZ2osZHLJtcgnQct5f+8xui/kHpLuFn2Ddv69CS9YV3vTPEGxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xyqf0tc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xyqf0tc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E05C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760504393;
	bh=45c6KVXHjtlbq7E43a/Su0rOqP0O48457DxbBe8hZ/4=;
	h=To:Subject:From:Date:From;
	b=Xyqf0tc6zWNRgSKDFG12oy7TT8yAKoH3teWvTvm4RPjgyYtSZbNqfBS5DSwQpn1Rx
	 iqDLsOAIAXDB9zrig+3H345bDFf91HLejAC2swxHehWGOwtOQ7FanI748VpQhwt8UH
	 ry+/6Tmvz5y6UHRGZk24ZJX3W3ZtyuHny/Y6D7MDF9XBsHAWuQI926GpRUcUsCVo6x
	 ZBPwdPNRdOxJfLsIpVBGMuX2I3deiZdeUjkH3Msb30XC1Byx5Jm67wp7OF+Fl7R/lb
	 Mq7laPAwS0Z5aXLhN7111R52N5+WLRNeeNbHdBkfv7jd1SbuHrbGDv5VkdvRBLoZDR
	 VaKcaX40nIYsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ACCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050439357.4396.15802450197857713535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a61ff0a244022340a09674171cea66b637b633ad5b1c840a0072bf491475628
Date: Wed, 15 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760504393
