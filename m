Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3752322FE0A
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766298234; cv=none; b=Tgo93hB17oSSJLqiKvsm9lQvpUknn6G5keatkQj2g/xhqDnNrQqIK6uunl5vZpOJXxKZCBzc4+wpb668+t5ntzML87I4MC03zNpzDBCsptBy9AA5+TP6xSDcCCd7G0PIkVH/s48mqc6hN0pD70ygGQIM+Cul1Ak4vPLjHiCHKzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766298234; c=relaxed/simple;
	bh=iBVIHmfo1sQ/Tl/GpGvqJHBl2CdZNumMHuVDeOQpx8Y=;
	h=To:Subject:From:Message-Id:Date; b=rfdqQ32kjyt0tdhANQ2H1idIiBCX6FPcfdYFen1+TuUd4Ylx1xk6C13E4tKG7quO0U+/SFBQbD0Ff0VyU2ZyiFPpfif8ztWheC4kMMUr89PLlIbdCf+XmcAzV+LUW/IhewAOZiEMLa1fBDurzZuH95NObh/u4F/jX3Ts0OvAJEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7+QE6EN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7+QE6EN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69AAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766298233;
	bh=iBVIHmfo1sQ/Tl/GpGvqJHBl2CdZNumMHuVDeOQpx8Y=;
	h=To:Subject:From:Date:From;
	b=G7+QE6ENiH+tw6TBW6XLXYkyXgFkH6qUghF2jv8Zjn1X6zEVM3l+GKTeiTGlZTVtC
	 f8VGVSqEgdOGKQLvzAbbsioJb0FNPOVZ8CgOAekC/lWntCO/mKqNW2usnNoqslTM8N
	 RLJi9eP/5oUMP3hepbMAsIn7gCBVTl2jSCoqjXDNP4XV3Beb8RFzHMSxhJJPJ4+kXC
	 KI8GT69iKzrajvTHq3Yw9vr10K8A31ABqWwoVYRUKnmMzr+oMoczzlS1PRfm04TOeh
	 xD/MzvKgecpFD8r2V7eTs/H2TQooh/vMvKEMZysYMhnHHku5dQTg/ZsCrWoOO7xKEU
	 bYuPrdrOcZK1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92889D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629823358.10480.6681702887559148181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf7d8c7ec27331c32b8047a6eb4aa8efc441ab9b2bb7a3f9203cf957e65e7c8
Date: Sun, 21 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766298233
