Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF962836A3
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744285194; cv=none; b=YeGCQo1RXkVpUh7f0IsP0t6+mmCS1CYuo09ryYAK0zlKGm8V/wz90tVu/oVi2l82bkyyGBnpPBHqiRQFTaN6mfsRSl5sMsQLW75155v5HIUq+RVXL3u1FCYf5HQZ8z6+xJyzJL6bpXoLHf7j2j4GH+ThBc4lP0SpiruxCe6DENc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744285194; c=relaxed/simple;
	bh=bDSeBKOi8iEIaMvhIHozM4tN9AEvdpNVLnKBayI4G3c=;
	h=To:Subject:From:Message-Id:Date; b=MBosGdIBlVR5oV4Opppzs1LGW4JWlSpQd73Z5OSFJP0xTwc57tOc8ujWjgb/BSfcRC/pHz3APrau0mE23x9cBhbvQPPPFdXu8ZjiC7L8+8LX7X6R4kzuXGEGvfo7+3d4Q+YQN09ua0yr8iyz7haycnAI5Vs4H2cf7TiEgy5Ukck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpM54Aur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpM54Aur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7088C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744285193;
	bh=bDSeBKOi8iEIaMvhIHozM4tN9AEvdpNVLnKBayI4G3c=;
	h=To:Subject:From:Date:From;
	b=kpM54Aur1Ot7eoIgrCVzQ8nB520zR0hQufK+z9ox+vcZGFvXpMVU5/Abls8O8EDpA
	 lBEBUpW7tR29MCTn8iUmDGbe1YO+6VoYw86z4XzqiUnqotcGfWY3pVI+H8K+VV6kyz
	 i6oBKUbQr6oiQ0C8zmdeoIldF/LI5RZw6c0CH7ptk8D+3FzWK2KWojpjhy81mwjQAR
	 WtoAFFXFIQQ1WhNreK/Ep/reSrmrp9DuR9ZJXQU0uuxA79JeWdhgd/IItWf/JG80Xv
	 HfRounGCesezdmvpvjgPTDLIqeccbnaMOW1QAMeamc5GSkxx9wilRiuMEj7HlUQTGp
	 U9WLfxqRItF7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10A5C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428519365.32126.1457704682484797599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92594b21ad85cdf8394a923873730d6bd2643ef7efec0b29a28bc654ee3def81
Date: Thu, 10 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744285193
