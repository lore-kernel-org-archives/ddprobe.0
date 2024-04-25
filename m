Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A87BF513
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714063943; cv=none; b=qN/Sd7rVW5PhHzq6eGVvo8ZrdM1/iXy6ifTKrwlbepOx4XpKYN+E/jEgv9/gESCsY8znk3u8gjZBCx/yREErV25umi/YWEH/iFv1NkMnPRH7goz65I6zCF9jO6w/n7x2P+4syE8YAA1Vn253VAh4X9eR9q1lNxwhQ7Fp+EKtMPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714063943; c=relaxed/simple;
	bh=s3UiJT977s2eK/+Pnw+086svu1WBjHMgjcDWPNa0vgw=;
	h=To:Subject:From:Message-Id:Date; b=cCPnNHVZA3T1Xvvnd+q8en50iuF1+P5A/6JbXZ2Cqd1AUdCaBspM5sOP5Simcx0Kgz/RxEvUQVLTLQr3ZIksvgmQM+rGQ7EByX97+KS3BzMhkDhOeYU40XlsVdwphHpKkT/eysUWg9TEA7AaC5LbV8K7S/gMThib9R5kNobqqqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVPduHF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVPduHF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05C3CC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714063943;
	bh=s3UiJT977s2eK/+Pnw+086svu1WBjHMgjcDWPNa0vgw=;
	h=To:Subject:From:Date:From;
	b=EVPduHF02zcS0g1QBeyqFZincaCetX5YlP8+LxXEOkFT+u32QdJWigmKPcvFlFKC+
	 XtvSMlqzceCkJCvDuwD8VG97xKHoqodDrcjAOfAyfzZy2zGonnMXCRKRoj13mfXHHT
	 0VJ9IcDXQGFq/W9notwa6jd0T08GuCoAYpBjUHqIbGUcDcd7W6J3H6aEM4lFrUduz4
	 KN40nqD81voYEKaAQmteFpkNVeMH2wDeTsM6FnGhQUWeBR4FldiGzaJhjoTuCSW3Xv
	 0at2sFlWydg3421b02E9CcvINvDBZNyxSjFHmYvEjJBmwFrXmy9LizY51PP8I2iN7S
	 xiMsoGLdIV4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA100C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171406394286.5858.6413791171549301859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaef1dfb88e0eeda3cf3bd91626246bcb8702c5984ac7a940ce31e1230035455
Date: Thu, 25 Apr 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714063942
