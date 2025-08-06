Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B2A23F424
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754498394; cv=none; b=SxpJECB18LZJ26GTbvj2FBH9X2WqAzMsXpnVQKD1IbW85sTXESvBjUrLAWVEQXIHpjdrXR1CFc+SRwgWWfpdW6hD8pg8sGwrhKcC4OyfwS54ROQ7MU1ECzH7u2CICywdyO5oB+QPla+6vnifEsdzi9kKs1yeCUMb9xv4wrS0gmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754498394; c=relaxed/simple;
	bh=1JT67zjz33c/c930CF4KCi5aCnoAEvqG2359GXjCL9s=;
	h=To:Subject:From:Message-Id:Date; b=a905ff9Exw89Y8CVIs9OOZ2lqIa/+gI69/h6SSt5X6zuUmPP5A8K6fN+/n4xyzIlgb7b1iLKwmG4zUTW8UNghylsRrp2yNeqh9lr/EktPBcu5lpopEjzRv/CgMrt5afNHc5F7bTqvgYAxBW6HWlbAgOE0yeXvocbQR4Ll/Rgsys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iV3EmDxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iV3EmDxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1A5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754498393;
	bh=1JT67zjz33c/c930CF4KCi5aCnoAEvqG2359GXjCL9s=;
	h=To:Subject:From:Date:From;
	b=iV3EmDxdeuPQtDnPlq3Wd5BHopPeOtyNcP6HRNnYpATyTQwRsbrVa7PHsimA8P5Y8
	 O3A81sZ7KTvdj4xjpbsHDNh+D2mGL6K0J7D2zhEtiXvVvF7QHaxukWeofGAt03aXDA
	 C6UI0QDDCRigXUfcmK7Y99zbBIWHDR/GP6cG22Fd8Mg6ckkBcAS0Scw0uiyvf7MD+q
	 er+RlihfSesp+BBtWYE3m3geq6eimuMnfzny+f/jnqjpsAhcI552oF3JsfXL1WkW60
	 w7ckjia6XOUK4gzLK5kn0MBZW83NZTAkHoskej5DAIoPqnRIYgDKktzr43+1vto5JX
	 wM5nzIq5dXl1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E924C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449839357.31115.17904691153821550829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f744c5a91db7a800c7997ecf2501fe1cd4cabbcb0be509ecefdb91789fa835a7
Date: Wed, 06 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754498393
