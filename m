Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B482279DAD
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782670114; cv=none; b=D9X6chd90FPdeggbQyyNVVoNCRShf4V6OASOwz8pto0KLU1pYvEqXrM3pkalWc8sfY0Y+RXTbS3jTCKV7UkaCZqCSqg8uGddrakeKPsF2IS1vKRNN3vKpjQy4sSKq0oxYcueHYA98ptcqN/4MlhX3H1wgys+aSaF6aqlFETIelU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782670114; c=relaxed/simple;
	bh=mO/7wJA2iOEY/bnUIiMyVH4AZ1r6ukl5+fWUDVwprs4=;
	h=To:Subject:From:Message-Id:Date; b=eFRmhaad39AZxW+q+i9n693pbWwe3GSuQnUHav9mXzjgxAyilWiStvU2AJuhK17mjGnzQdjOyQNDGjoa9HF8c8rtsU1rfncXOk/C96rFNjU9amcMy8Q1XB30ymH3UOzju2bs3du3Txt2zBPFGf3E2Jfcrm+xZQRxZnWyiiN0XgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvkG8Yvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvkG8Yvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF3CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782670113;
	bh=mO/7wJA2iOEY/bnUIiMyVH4AZ1r6ukl5+fWUDVwprs4=;
	h=To:Subject:From:Date:From;
	b=EvkG8YvwV9g8XiBwc+pxzGQtFXHTHBNupSjN4Zg7QDQ5jeUtdgJEnzPXkmkQez8JD
	 In7OZowaph/E0tQxbnPkGMuYXoxQhUrD5YQQWGHjNX/86XhA3O7mlK+zw7Bjl/EH12
	 +QWh7hdZeC2LLib9dTYvW/bTB80d3tyrIUIJg3xw114ly3NsxkSiFkoFZRXOIWtI6w
	 6xS0aS34us45x8WCHUoZyrMXwoEJ+oFRyoErumbFsuLyOgB9AS74WSlmkKx4Mmn/bx
	 U9FKC/cq1DmneRlW1dEN9ZFGoU3O4ufYCB7+8DuyNCQrUKpFHAz1WhYdLBP3iC+MqB
	 3ya5SX55tWC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDC0C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267011368.31609.2365869679617228995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5da35023efc7c1252d371755f7256a7be851a2ffc99e8fc62f96ee4f2572de9
Date: Sun, 28 Jun 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782670113
