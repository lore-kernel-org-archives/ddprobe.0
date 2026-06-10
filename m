Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100E87E792
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781064334; cv=none; b=ZcFiaY0X5QQnTq85DwUoXUr9CrwHwaTQlVeMU5bSk3XdsFFBV3Ftf1felr1yCBwzIgsi4SOdjQrGdUrR+BgNsyRO8UJ4wy+IWhKERTN0dzBtIZamLftlBz3uZlmhZYcAMwa8/s40RhVVa/cWHaxP5Z7Qas1X8UNcyylYYo+Hh0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781064334; c=relaxed/simple;
	bh=DBS7xhNjTHByKvYwqeIUjAu2DUzP1gTxwyWRYzLyaeI=;
	h=To:Subject:From:Message-Id:Date; b=J8PlYwU2fiQLMvFcliUOP5vvCbN1LeSlOwHlK96H599kOMuZ9gcBtDKRKtv0+DEWyJcOVK5Er33Xa0t1QcAPKAP3xjwH2YenFpHqnBHiUxxRkISC3r7Gajd7GlVoOlAo3eKT3J6yhaSCjaqHp1mJWvAK9mfVYOnakIWghZe64zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc8chTFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc8chTFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4684C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781064333;
	bh=DBS7xhNjTHByKvYwqeIUjAu2DUzP1gTxwyWRYzLyaeI=;
	h=To:Subject:From:Date:From;
	b=Jc8chTFSQLvoz9RSwE2Gi4eW1jvRajeOIc4krXliCqy6NPjPXTSXP1FP0Wq79kNne
	 BivMB7oNciJgyn1c1WHUV69Hmzg18RUytswHp7eZerY2IugAXJiTyKIhyZPJmiBPbx
	 SOozWK47dIbqN9/NBGxfqTx5RfCkmDfzcQD1wJJ1tQMEeVjTjOzXjwGdONF4+gXlMj
	 6l+u/UZR1qCj+zWqqdSP6KxoJdHig7IORbIt3cPrUv/YeSDxeoHjOXa0NGS9xurqux
	 tg+Aoze6S0/FztNulIj9PsqxU+yKnSJyKyunlBnXQKtGjrq/SH2AGQjnYmXk6Q5ywH
	 AleQwX2pljcUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9C5CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106433367.17021.15547494638195517648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594b5c33cf326babdfc140ce8f98549e7ee6aeaa8cf277297c44b50e0d0cc513
Date: Wed, 10 Jun 2026 04:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781064333
