Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53646163
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737936354; cv=none; b=A58K8bRFzI9jklMFD6jh96iGnRX69vk/IVunQNg23b12KlUbEp6RXygxp+GuGiYWeQMMCYnfxBMqyr5OiZQdm/EKP7gdE/8mWWddPxjW4MQXBz1LZczeAVuDUbRM6aKJS3qbgfLOxDA2xYceojLYT+vjD6FxAzeQot8Qy2iZeLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737936354; c=relaxed/simple;
	bh=y3LGsTmTZfeTijTEui5YWhNPojkLGYTpo6Ta5gS09z0=;
	h=To:Subject:From:Message-Id:Date; b=UoyPQ/AnNyViS2JPbuE85HepccLStBJM5G9reAyUqAEjhmo+M7+pTkabWSuMB2cz76vgK9ggdFGrmVGdqlmwO34CV/VMwQU6a1IZ3mTFCs7eZiFdYcv5enjAFEX5SUsuG26YmdWRCj5QRdCQfLBcpi2UuwerNB3zBDTYQW69K5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBiPWUS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBiPWUS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DDEC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737936353;
	bh=y3LGsTmTZfeTijTEui5YWhNPojkLGYTpo6Ta5gS09z0=;
	h=To:Subject:From:Date:From;
	b=BBiPWUS6u6Stmy29BRvrvtk/zK5Jdv9SVGcLAxB2RzZKFV5eYmUjKBH/q/RX6G77F
	 miuIi3RWj7Yxb5/GtKiwtIEGnY+vcy17GR/yuLDkPsgYCle3vkLBpvHx7KZSz0u44C
	 68HjIhlV+7ylcP070aP0jDkif7alriFN1HItDSEvPcNZe/lXmeEbP8CnswUICBvhmE
	 AX+v7tVTxdz7aEsLXejvtSgG6siPQFzFaAVTeAzx4a/VST4mwF0+LRPM/fSzUIY7e2
	 Yi8XSl24uZq9WzfSPaQk0Vc2Smj16MoOpRWG/BsTg0YOM6Srkgl845ZZRQo82acyLG
	 R54N8Ct7yyxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA2BC0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173793635362.9713.5649976857131207894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b669159cca59f06874dd9f1be7b680520aae43a28b3edcd28d51fc93bd9d63bf
Date: Mon, 27 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737936353
