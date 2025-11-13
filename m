Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE22329C57
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763076594; cv=none; b=mfA7uL5W8ZFJ2B2yycw8CTAg4blQC6XI9LdWi2qkRP0FtnGkCgdV5iYUQ9OpErPIkUCoE2otv8YPMiN23k0VjM9907xGEtb8CEZt4W8SH5dXYiA6MJqLrmDENxXawd7w1FkTG6jNSHFD1jD9nSUANZwMHCVfIseRhdXYqM9rou8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763076594; c=relaxed/simple;
	bh=u02tjtInMN4Az74Cv499AkotFpIjXxfGlDbR+0cSqsU=;
	h=To:Subject:From:Message-Id:Date; b=hHKHRIPToSqfvGqwY90XthiGfKemVTCMHUbQxhFDmZQsR56NgVi9A8oO94sX2aIQov0HZLPtWQzIFtEMuf02vf2PwqhxGdO/78xQ0zWiiazPWY2d3od3eTQIK1pyyLKQAhC3nh3lgJCO5zOndkNn63RgsjC0/zQ6ks8RPOJIeUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLpP4IcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLpP4IcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B268DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763076593;
	bh=u02tjtInMN4Az74Cv499AkotFpIjXxfGlDbR+0cSqsU=;
	h=To:Subject:From:Date:From;
	b=OLpP4IcZaH5ZVAXHaxoG0RMj9HEs07nZYmY42jbX4MgbPSYeOjl0ZjiW1PzbrqOs6
	 K4tu/wcZ4TTy6yV5cAup8i62Zzdl2AZUl5/ULBkiTjSG8ooFzHy4+1LQIMhj4DMxbE
	 anbwWAVOJNMIMw20VRDkPQrldvAmmMUVzlZE5sq86pubCVt18HMd3BLLHaFMi8SHlV
	 t/Q62PbI9mnGFadkE3uPprs3ttiwex2UqYjMW75Owc7NMCNqrkPnY7DUHq5F/wQnT3
	 S5w7DyKzHMQ0oYynxXHOW5APYx+X6y6qfJf7cR6Vu4W8Jo9gJTSFPu87BdV53eERrV
	 uS22aRU/P0oVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D8CDB462
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307659358.28981.11563772082059690163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7e0852d595e3f0db0b69f1673b14876d14c605f694bd8aeb631b11af7a2d54
Date: Thu, 13 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763076593
