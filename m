Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECE7208A7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758186593; cv=none; b=hc8mxBkNYHHla0DVJ78TxRVvB46FuoyppYJi9sMlt1KJiBOTfwIo4iAoaGY/8sZxDKFIdJIlem4ZqwsLUtBE+aSxckIvwUJ5jsB3KZZeDcQHogw2wuF+kcv6IRZVyjBNQfbOxx2r0dlQKG5qL/X3F6wkx/VSBZkSimMSneTu6Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758186593; c=relaxed/simple;
	bh=bcD7Nv8FJH5dHsLht9HrAJjZDTR9Vdi2IbpHqeeh1Ic=;
	h=To:Subject:From:Message-Id:Date; b=jk/E4mnka6Gfg9eKNaoPnWJxFS6xqA1/rXdx7ktgJS6M5inWbut9T2JjtkQx152BIVcShWKOLEadT0Qg7FTJ7SC0Ybd5UciWpiiJlKbmOda3bR2SR0GS5KLLVY9QyrgnqTVfCi4QkpfwFZdqVl48dtExWNtoPAl6ZZmcnPZn0Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYg/vy6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYg/vy6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4B2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758186593;
	bh=bcD7Nv8FJH5dHsLht9HrAJjZDTR9Vdi2IbpHqeeh1Ic=;
	h=To:Subject:From:Date:From;
	b=pYg/vy6N56CT959YnGf5UHY4arSuAHmQa30EOIXPr/KgV2FfP3rk+Pc4QiTiP2a96
	 r43SeOXG781SrkHLJ4hWOqt2jNQkR6s52OrQVt/OMYbk08XGv3d20GRr18kVkQvH/a
	 9LlC2e4szgnOgcz7GypJHksbcZXQ2g7eA929tiCN+gYqP0C69pyOnQO1O8V0lY1Hf2
	 Qpmy1DW8kcas4vPCqnapJbTFzCCbva9Zm9WRZYDP+gfhlnF6gLlNKauzJcSCzH2cyT
	 oA4IfNgNn4esdzMWHl8+Hu88MArUJBNBnDQeYyQKcd4byRqNtolAjOOumJwkvKnzIk
	 OX6S6yIFpIJQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90064CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818659358.4271.10673272026673716657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd10f5e1ccce3a42e8fc41dddfef85119b04b880e573bba315e3fad604c5a1de
Date: Thu, 18 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758186593
