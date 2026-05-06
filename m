Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB6E495524
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778092054; cv=none; b=jXs/+afWiFgWeNVBMYrJfdAT3aydgq2RlOFYg9Sk9wqKJgwy6tsd/R4kjx7iX/1AElFq+U9KSlHTgOyM7WRqZmQalycCq3ru+n+GmHBtmS5a9GZ1dFJBYZOz30xstQzotwr7/wIRACIERnoevKFMGddqHQ0fgyggje8hFe44ysM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778092054; c=relaxed/simple;
	bh=TpfBl0+3DCz5Ta6wupI38OuAJZrJg24IQvcXXcOQQZo=;
	h=To:Subject:From:Message-Id:Date; b=r/JeUfzOE9yQNoZkkZAREhn1izjwsuxwnHCFwZC+I2reriYop+bqDyZH7HYsKYqb7AePdsJUJmLdwYYF92x/UY2GkE5Cb7kZ80QDtc9IrjSHNsD76W65LpvyKWDr2whNicx4miak60roNlpQjCsQKir7RvwmTWTy59R+zU1Edl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guWwMZSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guWwMZSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E1EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778092053;
	bh=TpfBl0+3DCz5Ta6wupI38OuAJZrJg24IQvcXXcOQQZo=;
	h=To:Subject:From:Date:From;
	b=guWwMZSKVly14eQt1TPxWKF7TR9Zu6l9cyozYPu3OGmv5wmcXInqIvhCyCobyac4P
	 wubsUT42Q5pi6hhtaECqj6N+SlRZDqdAFB2I7Q79OjtPnMUuj/NWP3Slcxzmrkuohf
	 kFTrpLaGyrz+SMfI5swSBG5zU+vMiL5Nrcab9Qf7U9e74JmeWAVe7lx0lM8n11v4oy
	 gBbc7gIn3ztQ2/TqkRr2K13vkR9Uop85lYHrhcrrzQR1qtMz9xj2dvlf0xwdHjo7gt
	 AJd4UcEUpocV/zwWcuu7toxdqpgzi3vItHfkuLFWkNlcD4CHl+0qKtl4f6LCELvsYc
	 ikVPTHXFO5NdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF96DCD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809205376.12732.9303873395493908109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6149b83360aba916f01dc97ab4e356d8ade1712630530ac671e06d1c649d59b5
Date: Wed, 06 May 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778092053
