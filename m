Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195FE2DC76D
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757778594; cv=none; b=dueHCFR9oIS33nNPm9CpXCm+xdpgTEdrlInUdre0PWCg1FazP3+hWHk/FPItteSeJl8l6SuK58wS87YlLhpvgHGlFOTxmsA/qQb0d44Hgz0zMcGJgTJki1T+ghqim/46S6Gwkd43aEGGp2jXZasxhPPiXOX+Mc3JF0ktL67IFo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757778594; c=relaxed/simple;
	bh=nFmODv59Jkky09xMTy7cEZaxuqR15Y7nDyxy0X0+mW0=;
	h=To:Subject:From:Message-Id:Date; b=uOvyItYKGf5gUodRsw7Wl+X2EdMbHJT3yg5jTjG8ZNZsKricw+K/GUoVTOInheIrJC828EYxOAn4Qka/2tYgS4sf81Ehosje7vpLCGmUEf/Z7LK7UKGCjKv6obuJqwh+Flawvt2/ljHrcWHbUC2lL4T8Fq+VdeJLCbVtzyth39A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1W1xlnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1W1xlnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41A1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757778593;
	bh=nFmODv59Jkky09xMTy7cEZaxuqR15Y7nDyxy0X0+mW0=;
	h=To:Subject:From:Date:From;
	b=l1W1xlnQlnb9QKxYZ5yk1g852/NInTVIFd8x29Ico3zsP6xrSKkNa8AkQH2cygh45
	 p6/1riXoKC6MzFep43f5o41lGi7eknZ252Hlk0w4xtcCStbXqNGyw1eHhmHjZQt6pI
	 u775mMboVd4r04K6u4QhL7zcAWbZqLHBPE1xz5lz/ABm+3xpJbWLbczP+FFBY3JS6+
	 FnDivhXsuumJCcAAxQ6GlTq+Ip5wJik5eRSH7UjOzoVUlGBWzS1QMDeqaJR+oRlSZf
	 ac+XbrzJfJZ5gGIqlI3QEL5gNQnjjCrl5Fxw4e0AYqx1KZ44vYq7oyvKxaOgVhlptO
	 qvXLhxNwXZ1hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9196FCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777859357.28562.16568512846379141719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9dd95c9e6149a483af60314e540947cf6476c1c6a1346e391934f7f4044b82
Date: Sat, 13 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757778593
