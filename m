Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DA0819
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 03:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713757823; cv=none; b=WpxhlEM2+UmyL2gd4wUfXEZWEw403NTCqoSeSprKgo/GP6lo4bklbbI/nxiRlOSIegP4cHAIrWRuK8MqIstSFxH84uKx4cjj+DszID/GB9iPy9tROF5gpNxMeZ/kMQVr9DeYEkrbkVmTgUt8ldThqSUotcRQ4HYrQBxZemn7cTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713757823; c=relaxed/simple;
	bh=7RLCtJjK/hRdtv594dNutIreelNi8QYs1E9kVGWZmYE=;
	h=To:Subject:From:Message-Id:Date; b=o1AFU5djLso6kDb0fAceWpdP42PjBxpzTiWVPWpcYOvqxAO9w2e58Xse3q66rz8wn1cBuBheWmlz/+TIt2GUVwcgDafkxkameuV9IWUUzWfM4y1+z/S5ZPEjZNpLjuU6+vlF58uKP/bnNVI/DVIT/ZRWneYeJEALqOIMDoM5HM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJ0KiCYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJ0KiCYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBA1C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 03:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713757822;
	bh=7RLCtJjK/hRdtv594dNutIreelNi8QYs1E9kVGWZmYE=;
	h=To:Subject:From:Date:From;
	b=GJ0KiCYng9YHRHUHYhQ4sYnd54S2c7xkVDAZTfY4pPK8wxf/lo7OnSODP296ncquO
	 GqYnagsH8x1k1hxCUeSxRsci/TIip9evTipWYi2LIkinjOYCz8Rt9zG4UeuTzbCNyz
	 hFIUO6A4Iv0kUTyOCKbtlzBB95Y+EETccCXPN8LqSPdc2jlmEaKNpSpNfRacF6t1cr
	 Xhp7lDAWIicpdWEQ+nOUFjy29wUvzy/nZjP1uNLMN7YGzcomNCmTtpMc/7uX5P1A9v
	 +AXogUGuhiT10RFJnVUFuBR4V0nn4bphLbbjwsqatyR0ds/uUuBBSqqCV+jhBBugS8
	 uDNBoREbi9H5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62FEC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 03:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171375782278.26652.4351470895516722504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2db978c0cd6519d1657146a3c5c9fabe069e3303c8bcb46c23e37b4a943880
Date: Mon, 22 Apr 2024 03:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713757822
