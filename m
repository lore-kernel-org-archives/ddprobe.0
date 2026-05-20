Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80702371876
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779313834; cv=none; b=C7mMZ6uDtg7TrqlxvF8cVu9ZOgDbiRWzZsjFU2EsNo/UAsCRIc0IfakDQjEycPXKCMuP4IEpfr1qt/g4ySAXZPSTtVfRRLUI1B8RL+rbwiQR0USxWdAkn4X53ifaf9W6E2iclGRZ5HJKf3Aj43rwkuCBMN2IVbByQFI9K/uLPX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779313834; c=relaxed/simple;
	bh=oS8FaUBYZWkmiux1FjkEywd3atdYC4O3DmWwcCMpKwM=;
	h=To:Subject:From:Message-Id:Date; b=A5lwCeF44FD96CfbV01LH9v42gJDDPbF6doUJ2l09r79GCNkm2nbY5k2mbb77N1Nw/PNQKlSHfCk7gDkg86DFmdtI1FUYpXs10wXLkvynONyuLAH8Sbpt6yMK/EpS1SvFva7MIU7X2np+aTavbxq/AUGf27jwhjhpYgoZBC6VSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqyAfANk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqyAfANk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20BE3C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779313834;
	bh=oS8FaUBYZWkmiux1FjkEywd3atdYC4O3DmWwcCMpKwM=;
	h=To:Subject:From:Date:From;
	b=JqyAfANkiXIR7VbsMILGCDGDe4uBF5WW1bc3g25UF5l8LveP7GFTdV0O8Wh4EJp2r
	 1a0AQjUqjWgkE46GLX6+Vd0FHf2EemwVKZh1URweZxa3grIYLZ9MsV3XOvs3uYTZ/R
	 gULvvBo7ZjokPj2KIWKlLn8GwkTeLiaUD07KH6Fuxa4sVtJV01+MMiVi+G6E2jU7S/
	 v07L2zzhRE5/n4G5S5OY90jrW0SDwYyrLrCmd4gy8AsQPwfg/4n3v/Q8SG5mVhgQ1f
	 jYM5IuhVykrY6JBCAumZ1ANbBFzSlTf1fPFaR2hA8Cy13Z1X7uB6O6betVbLkhYN02
	 HqnVxn50y4GEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B32CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931383381.3334.7943725682639873030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b13f3a5a8919a358c6b2c0641918df695f886b3aa13733d22291c99342f2aa1
Date: Wed, 20 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779313833
