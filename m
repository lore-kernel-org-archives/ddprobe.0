Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05052BE58
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705472297; cv=none; b=qvLN/gs21zmox/Y417IpDUB9sXcF8L9GtxCUU4loUH4p0/8Hg8akKOd06TWnAJSiLBryYio7A/r+PLPYWJs3ILe7paR1HjEyP5ZT8XJKMP6DSYPeJtB3daz53mfYYWwkpfRJFJMkcjExV2leh2EscxoLr2p71eihyUoD8STpy1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705472297; c=relaxed/simple;
	bh=GJ7PhOqL7Kk9AfPdqEGKJlgg3TErX2nCGAAcYYDRyfw=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=fy9f3q+iGrWB0ADNMx5hyjflum3Ch7yn0REht1asY1h2zDNZLv00bJxMRSfsXBo7onJv3yO7PkXdpwN7c1donSMBNTjOoztqc2V4TJ2X91bOw2dJ5YtduCQ4qKkJ0jxvqu6NOmkeDXxOtLzMQ3hKnWJMf8KAh3rDVC899thZqM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnFjEvFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnFjEvFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E556C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705472296;
	bh=GJ7PhOqL7Kk9AfPdqEGKJlgg3TErX2nCGAAcYYDRyfw=;
	h=To:Subject:From:Date:From;
	b=CnFjEvFHLMuoiXRWGwioMGV0AqYpAYbJdYX3NGKzowOR2AqGdNDFV+kDAzGPTxI7v
	 9mVtek8NckAnmg0bdmnha/sLfwRVqST6ZgvIsX5mhXCz540IIW503/JhmjTwS6dbRY
	 Ehb+ll4lRv91dP/5RP2P39i9U0GowS9zkrKfFZnxOGlnvJPaIamxxKAYEYhE4fzljC
	 gWeVxvfxXFaEunLUfYFEA4QWRnBV/dGAaWEkNLq0MUJHW0LOawEojl4gqPWvYYMNNJ
	 0N8dFaDCztsVOT6FwA0n/cYQPAFZxl6ZUtEj6Pgsxnuj8CHKoRXxQLhzjuF1tYfjnW
	 5TkHan6qde+7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E763C47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170547229636.19921.2926206664454425440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d1154dda47c8db980e5ec082241eb22beba11c5ccd9acb0a11b699fb2f83a1
Date: Wed, 17 Jan 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705472296
