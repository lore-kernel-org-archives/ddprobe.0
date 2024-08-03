Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489501CD29
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722711354; cv=none; b=e+Utt2eT0sCNXTP3wVyBt+atpISCx/5g1CfyM0z6T02Nw4ORq+3wuUj3H2GZJWcKM4B2qPVLcZQWGKiIqGYc7wAxzdDzCIeJr7BQFrDR6zNlpmJUmMZpJCJyLOjMOASNEKvb7iGaIdzXkESP+Z/+aBoBolNfc6GOv1oJmmEEj6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722711354; c=relaxed/simple;
	bh=r21BjR4Hpqw6jMGemI+fpJ16GIZLPsJSinhTiVY3bjM=;
	h=To:Subject:From:Message-Id:Date; b=izMFqHDNbIraaZMB245hq7S1vymm5qzu2qNcTGwJCRnFWph7u8uhhw0Uk/ccQDQ4GgeK5cu/+Z2YEJ/rYHo8KNIjgEnccvrDCEUTZ0mYUidjQ3XRPyP6D+8qK2j/Jo9RR4L9OL9zOxHJ3o93iMPIhnL/hB70F487sD6kC9U/rUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qmk4IzV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qmk4IzV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EC0C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722711353;
	bh=r21BjR4Hpqw6jMGemI+fpJ16GIZLPsJSinhTiVY3bjM=;
	h=To:Subject:From:Date:From;
	b=Qmk4IzV6C2d56/tny1a4KIs/9eui/hBJ83vqpX5yHJqzYFns51qIfF5HQRdRk7MQZ
	 5OXhh7IXOP3pxuC1BNGRH70KV+DK8l9TT0ovlvRvahiTy5M+xXp+ttpXi7x6s15Co0
	 rcOyDy4a+f2seK1DWzEaNTHkX1vR00P7BpIknZw85LWjFCO2DgRhi0StImIxXd73t9
	 Wqz9+CGhuJrV6AwXDVGEPcHnt5F1nnyvXc2r7rusNVJ49yzw7ymUk12QdWdK8pDStJ
	 K2OWNf2fH53zE0wYyhOn2ekKXk7jl3Jubm760Z2u3fh5yskBiziXV4kQUk06E9Mg2b
	 JM8LzYkeKZKng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF77C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172271135368.21209.13197971048786388633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a4e6c4ccff9bb05c16f321c4e3764dc96dd8f102bce1f24d39b86da2f88f8b
Date: Sat, 03 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722711353
