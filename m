Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192E312C544
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745597394; cv=none; b=IeDbxs24M/QM4D2DEh7IKPaWnZyfMWn62aSq7qW22dB7wRnV0OzLWGN8HmV4U8Sn+1+L32OwYDmp+T0KQPG3NRyKe78hDUh0o/3iPUaVx4jlr0P2pUQDPYonv9c4Ipabi+Yr5rl+g1l553W+d5D+TUD+yuyVP+1ynUBXrwPwNNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745597394; c=relaxed/simple;
	bh=u9XxhvBdiLxr4iISVxxIIFPTLcQfxykTKw4f4FqkboE=;
	h=To:Subject:From:Message-Id:Date; b=mDjl8lUH+l8H2uFUGB2vRnf93Mr8meIiJCk9rBESWrpdqHUWD2OQQF959BmWA2jvfguycZ2lo4FEbP23RqqCcXgSOb9oLYnx0qZVPpstrbz8jhmaX4jdVASheIxsjFYYa9fSJDC9Z1PRIYMGEKnxlpSesZP1w2B21QeG8IJy5uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jw/iIO2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw/iIO2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9AEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745597393;
	bh=u9XxhvBdiLxr4iISVxxIIFPTLcQfxykTKw4f4FqkboE=;
	h=To:Subject:From:Date:From;
	b=Jw/iIO2TQk3QdA10wIWYDjjTUdL7gzx2ppDS/oAPhMm0KlButMVZ74npY7dSAYnNg
	 UErH1VYiCdULk/mcEaXvpJXkWQixzD6ROrBSS1ZM16dp//4li5MQHGGyifY5MO6u/f
	 UduoC85W91GqlFGZbHXO9/Buko+RsATlK8TsMPmuoJD7qtqRfzx1Sx7HQk9TGx8Z+0
	 Sb0YUQgpQ/ke/icpRtHOelYNVzuiVaTWR54riDKYKornwRsVMAQV8xL9Pwhir498he
	 t/8td//TOtK0AJvks7PvXt7/24Pq0uzi/Ilso2tZjHxABd94DPcrJnGygQj+R4srn0
	 MNG4FH8CtzIKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E23AC369D3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559739357.3805.2480003936270762402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3edd1c44b0c4976d8170cb3fec62a7f09e64953f8d892cf268ffcf3a7b734fa
Date: Fri, 25 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745597393
