Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254BF1876
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753942194; cv=none; b=cSO/pSElr3fC9pw7QpVj4aySxgpoPK4GXKrDuAF0jQYwj+iDqFigZmHDvG9epyyzN/hptV5wAtaEKdY6j6LuITr20zwq8akJgG2GtaByXeAI0y0c4uVXzFibWMpJlH4Q/lNqbWcrM/WNZkivUTMtg6oFaFWxfjWBYMv6591N03Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753942194; c=relaxed/simple;
	bh=edVbE1o6xOX9fv+U1rjqEPRpbhzCHyNKYcIb2R2JwBY=;
	h=To:Subject:From:Message-Id:Date; b=Er1xKXTLeGcRyPo5nb4F+z/aQWSsDKLaqvWRMcBblPZx774WNm2vx7bZOeax8duvwvT+NzPxgMgpXlgE1WJR1FHlC48u0Fv5W1syCCiLEy+RsBiJqEVEeaWBzgaoytXkVhrpILf9eBZP6iYGatfPMJ+3fek/ZXM8YDPsnnnbK5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrKTAHBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrKTAHBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAAAC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753942193;
	bh=edVbE1o6xOX9fv+U1rjqEPRpbhzCHyNKYcIb2R2JwBY=;
	h=To:Subject:From:Date:From;
	b=UrKTAHBsuv6llt1vElZM9GEwIO9dcmxUqLgjnO4Rk1IFX/NCW5JTvRrdxSSxwKhkt
	 2PkV6caH2RFQ+9wjyKakI/LgQ1HJFbHjm0ni0n+p5uyLmovm8GZ5zFPD4idPS5nOGa
	 KjHmtC5y0zk4/OMNbk8p+pFsUVabtZJge82io/CRmNBPT8YGqy7OUYF0if4s3hEckT
	 y76q0tsAwKgta2hdHSmge+AWGeTV4DZG3/Ulp8oJ0aSUf4sMBCi8OIECb9E52cAoet
	 5HGJkBdyfsa/AHhUjCq+g56NDU/qH/gFCgebABG6QjLBbvl6thZvb74IXEsda6pUZG
	 rkcVAIH9jhEwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD8C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394219357.3125.6592264074297728819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f1fef45b4eefe1c5dcdf2454c92ef60ff387616d3ea0fe7019a2de9956c70f
Date: Thu, 31 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753942193
