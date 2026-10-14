Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50968368968
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791990034; cv=none; b=SKzZmlfgOiDaK2p/H6esSjj5uKH1uRinvNTiVHK+qowD1+73FA5VxRooSnrm+qLu8SytCaOp7t1od2cuRldZg2xbeGWhQAyQvrSnE88q9kSnZNT3i4Z4bVzTxPxKtq6nEXVMWRFjENqS8DEAeV7CZHQIXTv7er0HFFshCa7PpxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791990034; c=relaxed/simple;
	bh=IdhSCDoP0CFc33n8+9jr4z2FxyfcEPDSHsc8HI+mk/k=;
	h=To:Subject:From:Message-Id:Date; b=UIvCXwYyJqu5g9UPk4xkmJNdKuUv9/yuUgqD/J5fxOSc+YKMa8jpuRj+El4lKv4s1G2DPhxgpbS+EohemaICNysy56NafEYky/LJNRZaEBD5tv+/H6R1gzNSp+HJSGsJaT9GXWN5ejO/2vXWu3G0NIsl2ASPHVnvQLv2JJGiHHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbeqr7Im; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbeqr7Im"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04CDC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791990033;
	bh=IdhSCDoP0CFc33n8+9jr4z2FxyfcEPDSHsc8HI+mk/k=;
	h=To:Subject:From:Date:From;
	b=mbeqr7ImXBlaGkVNrB0Vrl2CZg1ffCegIvfVVZIBTsT4CZGnmnEt1mS9RIEiaLAsN
	 mhavtx9sDfqrFu4mxDzEn7PvwCkDbtOkeLKtVsMzh8lyAFPbCjLP6sqe0H456aOo2r
	 8pRPe0ADqktJL2HiErmc0oe2AJYrcnjrBKv5LLm89l75oldyxFGnBlFIrnKom4b91V
	 PZ2VxEYxm5iWarU0JTv5XKBrqUekB8x2VrE3WncdWl3bn+GYLfkVv/P19yda7mQ3wz
	 sbKaZVzPBbh2XEYIMpaweBp0jJuH5ODQE60SCfPNM31+T/duuJkYQ9a3VILpH7+5nT
	 CGNc8Yf4SS5zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB67CC6B2A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199003369.17114.10755199785991147245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b904272b43870daf61d060163c0ff5d39bc65798057e5d5071ce6ef252d887
Date: Wed, 14 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791990033
