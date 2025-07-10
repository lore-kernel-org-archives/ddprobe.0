Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D54627F749
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752125395; cv=none; b=tAPIcqj92qfiTmHYbxbjD3ilcFK0cqzcPg/db7j19ehdKC01a+PytItOh//Gr0AnJkfwFrgD8iMAL9/oL0/IR2iRUUb0Vwg+37KK5a8nVvEFg7jCHGq0yCc35102LQVItaXImStZgQAx1Q6jodJST2kK8TTgsCG3eBJadJgJ5V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752125395; c=relaxed/simple;
	bh=ItVGTtGurVVALiHoKm7X18MXvMhoLWMOk/doEujHNuI=;
	h=To:Subject:From:Message-Id:Date; b=YQP0SlaIEPaGkp3GfsTgJUxOzqa1DyUJxp0Fw7Qs5mZNOY2+0TDEgr6lgQ9wUJ/LaAqU5W4KG1YK8njMoMiQVVlbbteIY6h2pc6RIxR63gcwD2iB0Hoz5rKnvupD9215rpi93Ze9SXSuhMmpZ8o7jziqsGJQvZiNW1gAyj8F3oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IY+/liIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IY+/liIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6ECC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752125393;
	bh=ItVGTtGurVVALiHoKm7X18MXvMhoLWMOk/doEujHNuI=;
	h=To:Subject:From:Date:From;
	b=IY+/liImAnt79+vMvMvQzcsjTKSbnDG1KWbEfqXXFQtC1+BSQDKpp9z+b5QVJoxdg
	 iS0fsNCpwMMU6KqgSA3LmSaTsKQN2pR1Hn9HblgxVt51apOGiDdqq20/G3UdASoai7
	 RXkdE8GxltK2Nsn6iF4EPponP+mC25KsWMxUPcrCvw3uC/Bv5RDMfiok9DWDFE0ZPq
	 wPJcnz1X9fiMlN4nqbkc/CMf7JaMKzXiQLO1uE+jAMBJuyun779KrWFmEhnBoe3Xu2
	 MM40AO0bu68EV5gR9gzr4K9pzJizgmoiDpBoedYd+gMWTO6UDoe3yn20ktnKiOTA1B
	 2R9yms3OOhWvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E690C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212539357.9326.16538269380176261894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a931ce23eb6383d4360df7a233e5f105e70e03e2f2a2e6d89768196ac1cc09c
Date: Thu, 10 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752125393
