Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198EC275860
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757576394; cv=none; b=g0KrFSq04JrYo1FAvLzD/Zt8WiEBm8YgP/IDTioy2OC4g8HmNcwp85o9yExnjWjIKCB1PURKQduoAeGkKyzvuck/PDU4UBST7VZg8KsKBhScM9+TNYt5NZIozJFT5j6ST+kEVLABTbmFtJV1hN2FPdt5sKaBbFYJwZ+TEoGQ4t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757576394; c=relaxed/simple;
	bh=G2w2bivXyxurBWHwePgABLYJftE/34Q5EJd2vJafvSw=;
	h=To:Subject:From:Message-Id:Date; b=D9A2dcFuxCQ1I4UUc9UtWT/r0LFIMhIwhl4DZt+VD/DOa/LIaUd6CvC5rZa6ixZ9RQIm9Ulpq1Er8dSw7aRVKObIco/d7qN5+iTN0c7yq28ABu/BT0NvXHPvmAL4Un4VNF9uZsOnwz0tS24QDAIunNK3d0mimDdQZWMIjtgto6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqKLXb0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqKLXb0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09D2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757576393;
	bh=G2w2bivXyxurBWHwePgABLYJftE/34Q5EJd2vJafvSw=;
	h=To:Subject:From:Date:From;
	b=sqKLXb0GjulnfWGgd1EHaG3awfS1y1vBIxvBhMiH4z0aAgfARJZwJygelX1kNWUBy
	 7v3bp61nD3k0ofeAspCbZ9Rwm5srdaek3ZAOFB1vPESP3xHuruIThVz6SDH01XEsIj
	 +cO90WlTVDflp9xKi7UM4a4uPTo1I5BLeBYgI9S+sqXFiv9kWBaoXaembmEC6y6gAY
	 7TuiNW/ChY3Cxcb1RFD3fBGPSbg1ip0Px0ldE/z9/H8ElcfOWMDb6zyvsVYUAqoRwV
	 wy2y4I57kT99zMTMhwxKlFncnt16qQZ8fRyejPdCjsPunHBbIMBWbRdFTEWeTmrRMc
	 xcFu8Cp9mm6IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE85CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757639357.21120.9730053056609499894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11d987c31426103777d46a5a1d338e0e5b508c696ab560d8c7b7ea10e43ad3e
Date: Thu, 11 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757576393
