Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C671E51EB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754133594; cv=none; b=AEA5R5fmhUZCQm79dl4PuuSMpdxGk9OfWYYn7EsnwUUy6lkCox4ZJLd5kvoY/AeK1sC9Nag7YHYM4XTVHMyXWRwYJO0O+KpJ6sG1nMITOWNwQOBeC99m38A8rUq1Lm/EpjVbXyhBsze8c43lEwi1LCqIZrv9BgbRz+otFpNtBFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754133594; c=relaxed/simple;
	bh=O8XuhoXT6/YBbZ9kW6F9CRk9W/w7CZclfuqztsKu9QQ=;
	h=To:Subject:From:Message-Id:Date; b=SZfgHEPTaA04OYT3/N6rTqlWzOZPoi/8/CSjcKHaGTzdrx/PGIvBii1qshjkY/jP45+RFanxeT+38HwHBH96UWa7HtrEche2zOs7SPoQklLWOv2jaSGd3oF8mLNaqbsYzv6O1ARpDKmW8ZLNS/ExBtdBojCGzrtAWDh6mOXoM+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKexu3qX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKexu3qX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D7CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754133593;
	bh=O8XuhoXT6/YBbZ9kW6F9CRk9W/w7CZclfuqztsKu9QQ=;
	h=To:Subject:From:Date:From;
	b=HKexu3qXSTYozFDvw0eF/Wn3esU3dkTJbcOP2eTSLxTjuqQV+6yABzllLzOeJGPWc
	 15irJp4Jin+HR8LMMPW/96JWynoinfhrYSqO9aYcNl4SpqfR1wQE9VQF/VkaVIG0fh
	 7aoeGAkpVikwVsCGK8Y2pygA8UtZP1ouXpIGh6AAthkf3R7a2TEh+QBwWdhw6xaCgN
	 Lb5bHl5ICa/NNVEphYVt1R80o6uyi/rhO9L4f1vNOrVGxX7JIYG4DVOyg93nNSQYPf
	 vtU7WblFVYexzgYtpKhUrrmKD3CAXdnp5XbO+PjGjcgGfeJWBtnPvg4PMBAy+2wByQ
	 1YWKZG852oBFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FAC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413359357.643.13641536738582354699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a68e23a2ba01eaadf2034a9a9d3f493484b10d02710d13ce28c6976c4712b5
Date: Sat, 02 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754133593
