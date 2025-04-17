Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF656185B67
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744862993; cv=none; b=i0MBbvEukRZN+Mji4Lo1vM6P+mm3nNsR2v7CQVBcj69C6mD5wwmB9NwDPvaSZTDu6xfpobFjcAyIl4TmnIvgMAUU67aroi6GhMj+A/fkjaTbZspVaCItfwDmQ5z0utcpJ4mwu5Fw1oJ3ZSF574RQPuBMkcpPvjjo/t4ftWdtalQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744862993; c=relaxed/simple;
	bh=dWZOk4HsmV8p60Q4KnNoOyd3rDcWooRWi77j3EvEeAA=;
	h=To:Subject:From:Message-Id:Date; b=jcIFUCV2DmQqLrMlL2976mik95GZlc+sKiT/l6OU8LChlTeRup5IYWb5JsTI+kykmphIIuoq2+O7ob8g8uIO3GuAjcdiCS/aue/MulMNmjlRAWwHoCv4c/5izbJYSHrxE+27O6IZF9bS83dYvqvq6W6HVp4MgixxtaCZNT5oWn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdqwVGBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdqwVGBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAFAC4AF09
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744862993;
	bh=dWZOk4HsmV8p60Q4KnNoOyd3rDcWooRWi77j3EvEeAA=;
	h=To:Subject:From:Date:From;
	b=DdqwVGBMK9RAA0IHFjdyyPIZwxAwphgKKBDFhKb8xKfiJ/G08hO6A8hW/Wnd+63w+
	 ANkMKpbkZ0uE0r25jcliOe4DyFONrCndUYypGAm04tQZidIvkKlsLT1XGfquARneRx
	 XdOxglTyV4mty4QQxt1gqKxXXclUfXqNHe7JAgLBLeehl1vnbQ48H/RAuyY6vSiLTU
	 +ec+ljPGSDCprhLCxerJzN1oo8yYgPEpoyMZ6upd4H46hokk6raudst5SEO864cHWn
	 gypT/Xkq+rShy4eKcZox991ZrwUhhOQphRydAxg4z+4I1AMqtGUo1MKmZ+nS8fyQvM
	 oZX9of1e22CrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A6AC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486299357.9830.10675213272008996066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1c69aed43e549ac6281c1549b975b9c1896d84add098b5babdb18330bb2528
Date: Thu, 17 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744862993
