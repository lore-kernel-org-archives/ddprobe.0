Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F26738887D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783405714; cv=none; b=BwiFtgQ4jmxEwVLmnb9PPVEuOLRVETGj/jYOfBn0rxgZu6YT+UVLf4bzFC2AzzKHuheM3v7WLwbfw1gm9Vm0OCvJuUt/qJo4H4Gsw0KoSXM0H9LpTWAuo13c9G+9cL5oHsRxSoBtV1xUoWrQsY1xfvEHKSFmo4RtnftASp7l0WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783405714; c=relaxed/simple;
	bh=lRInilZYhvaHfeNzCZCQR89bAOpcspzZXVJfF4l63Kw=;
	h=To:Subject:From:Message-Id:Date; b=lx5Zuj+LP9a6acu5ruqQE2jgArfzb7VLmT6/R1rO8rt46vwJwyUSnt9fTRbcxARChXj61fYIKrkTGzLdFmumtg88J2db6HN4cXGua2W/coccFABF30zj4juspe2QJnEs6bVIgmy6YeN/3e7AAyqnNhtQhMplDV7LS5xyRvH1Umo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKSEyjp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKSEyjp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB186C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783405713;
	bh=lRInilZYhvaHfeNzCZCQR89bAOpcspzZXVJfF4l63Kw=;
	h=To:Subject:From:Date:From;
	b=jKSEyjp8x+Q6o34UKjUNKIlqvMSvVYdTBQNHXmwZmaRIjZNjSusfWEcCUs8UW4mMY
	 BgVC9n6LfwmNWcjSU/hePpl8gbXolBDNsmqeacAq6pMP6+qYJg6K0+i+tpLfsXpOiH
	 OS62eUKUYIR0QKJj92njTn5XbPAiEvhONAryJZXlu7yOJUsi845pLySPxXJ/SJ2Y3U
	 Jj3cQSdYtjidCk8loB4lt8j/lNgsYmu3SA/+CsFDfTDC2mvfm1CQ4P/rW0ATWxQE84
	 iOdm21puoZdwY36pcE2wL5tpmHO2YJRO2FpHsEXXn7n1Gr5gjnmlBf3O/advbzhDKf
	 yqJNicKMShhCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A996DC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340571368.20584.7086978573493652447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84831fe10d8a91ce10fb1e60a1e46a2b9fb173ba8bb1d08c62906b2f5bb85b40
Date: Tue, 07 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783405713
