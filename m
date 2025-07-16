Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6B12E49AD
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752701394; cv=none; b=h7NcorFMxJU1SdsZmO7ahjW3Ycq/xfsc18PFTgN5Plsh+vNgPiNNU2tShys+cfdFGuLAik+Bzzz9yfKlDG1Lo9mJHpPqZ55dRDYUn4wS0Mmr+2dzH5Le8OZhxdZW/x1NLLf3R2n44Kg+STR79Q6dTgtGntYkDBYFTlsvHyLRe4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752701394; c=relaxed/simple;
	bh=8++72BhdOGaVf9rSskugIegxfJlyZv5laQm8bpdACxI=;
	h=To:Subject:From:Message-Id:Date; b=JghZdn2/bEt48xxyrmDJ5H4dZxSQlBxtTerpHKVsMVADQD6NXQFAFbmifJ3RedFueXZmQwGWcA819ECKD8uzTZkv6f8TzMCK7CtL+Onm9DcvheYfuZ7cabNGisyUfX5qQdl1wTC9BVaB8+S/sefDkWCD3f7r+M/lMT5QR/OIPDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YY11r28t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YY11r28t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0727C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752701393;
	bh=8++72BhdOGaVf9rSskugIegxfJlyZv5laQm8bpdACxI=;
	h=To:Subject:From:Date:From;
	b=YY11r28tigUfTgsnRhHnuQWtgHgjkXGgIoeXWPIDZUqrS4k3OJ81mG2N2unwNwmOZ
	 ZKnlmoUKX2utkfUhCb2HyubH/S64XqUIKMLCPT8ruge1c3opvPbh39x4F6e5ytCvIF
	 0HB9M3Euw9pAI+auufeROHoRklwn+wilEUrJHAGQnl5m0npsZgLeRCJ/BjlnwH/Vbt
	 h94oqqIwspoyoICK9/TzTP0DOYQAYQBMKiUpg1z5nQ3PJjooRj7yZL82uVcZfu4bS7
	 xRekBTF5iDUrI0CTznFvY2Ie/3mA3BKb76/yXhVPwRwq8Z45bkQygtEnljORZjzdsb
	 DvaOlFb5VkaZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B7C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270139357.29640.7293111341655963731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0caf0d1dad4fb73506e0aedf01036560ee193fb9dc9af154075792300a99d6f0
Date: Wed, 16 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752701393
