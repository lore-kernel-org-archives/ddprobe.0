Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEA323D7DD
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765279974; cv=none; b=Xlp4FFinbJtNk6QSjpBgrCsuiULnn/6Gzl5ezWFf8j/lmSNeVbibvugpkhpvs8OY6M8G477cnpPnxV7Nqp9dH+JfCKNBWpxMbgtXGTl4aVSJAwmGgslqklQHkhUo9ZF5HcTEndSDLRTz5F3JvIqbxbprkCyPzjaoQbspI6xVEyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765279974; c=relaxed/simple;
	bh=lD/sf35wrBxEj1Rsd7JmpoyBZ2MrTG8QAXCjR0bEiHY=;
	h=To:Subject:From:Message-Id:Date; b=jVkiU2TiCYSXMHYCc3z6Jt0J4KWQD5+RORNecv/mUhw+eZfOfVBkrpijvaoa//OYipaZk7HlpZaydvByhrR+Eb0Yv/n4GDtdfcQMGd7lbMLQcYV1v03N4TYGnqbNy7hkp1z/RxUF7H99V17fnT6DyPZRwosi0EcmokE2nEIYq7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+ZVDnXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+ZVDnXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9B2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765279973;
	bh=lD/sf35wrBxEj1Rsd7JmpoyBZ2MrTG8QAXCjR0bEiHY=;
	h=To:Subject:From:Date:From;
	b=t+ZVDnXnz7p8q6GsfQ90ifB9yaHf+3pKuCCSBn+JlbOAt56WRE70yj8REhEqx9rqR
	 pKi0mV+BceY6ebVfHLfmeNQBZRjpdI9aMdkZP3STT3T0DOTCG782xrpsnFKkXmCCb3
	 E1z9CM3q8hbE0mw9IdMnJaLfkm90w+yiNaWQ+uYTJhrRjpAOeO688n/RbbLH6h/QVO
	 yGJ9sjPlwc241Vu8sUdyuQbDpZ6m7VuvIUtK2ujb55qNws4iItkv07z2oaiFz56aIQ
	 iZy5bQI5X0mDQyliOUFXLeF0R4w0f2Hx3c6N5KjM844/VfApYoRHTMkg6jrmZ/NKlk
	 G7GIYgOigYm3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9092CD1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527997358.7941.9964173202191937974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333a24f535b1d848f32856e0601c753cf1702e8e33b8ad6e1c2913a292b23433
Date: Tue, 09 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765279973
