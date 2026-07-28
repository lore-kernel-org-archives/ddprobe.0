Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5663D6CD8
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785226234; cv=none; b=N4xGgK1K1Sln6wBe7ihYkcL1WCVbOaCobPrBX7rVCAHYZIP/7Sw+dGtzixkYGlmGZ+HyhrsmZk1Fs0mTiKoo+7khtEqYFObHdUrXmPXLK2d71BfJE6FiirEpuT6HCd9gFkldy/CztZQj1T6LkBhHyfCeoRBNB2puc5d1vD9ntVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785226234; c=relaxed/simple;
	bh=sLJENvY+Y/VyT1LMKy24DzaEChj9ZXlbUJy50RY8qqg=;
	h=To:Subject:From:Message-Id:Date; b=TYlLqftfrhQxJ6JJ6Y0ke6O0OzJQqiF4kIo8Gmx1kGNnw8Judr1tRIjsxWTVnbXaMJ3utHwvoVjjYbBSJW+5Hm1BTOTgEqaGy10XpnW53hEAlEPU6OFfqelM9qgaGsJ+jYnft2k66bTMgqd/qAAAIr1wYonLPqMA+mKq1gu8WJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBpcqWsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBpcqWsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE2BC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785226233;
	bh=sLJENvY+Y/VyT1LMKy24DzaEChj9ZXlbUJy50RY8qqg=;
	h=To:Subject:From:Date:From;
	b=rBpcqWsPx2RvBXCGfbnAb7ukb2wKtF/NgtJ85fIGrFqyKFfuLaH/wscJzOrFw1Emr
	 duSMC1is9mp3wQiZVwHHquObtrdBC6Qwd9jTqD6Xufn2ThonVXcd5gjsbK+XaQvPYn
	 mK1fMddolG+Smg3nKqOli2QtvFQNytEhbZpksTLaQjtszj78PROebFjdvfgGzP8Hck
	 B0o17biBRAUiWHbTxL529DQfVFwv8Kc9lB5/LJuGBw6BeFC0hOacSTVYWnokwdDeOf
	 jyPOVvabOkOmeTkUf9LRVkuPDn1SVmUIS7riL3URQJlKLF8WXcHFXetB/D2tRZgnwb
	 yRIj43cROVsOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96C4C54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522623368.12054.9084424199081310549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8667328cc8b342d4893496ac05c0505e4d24a109f0b8c55bea4a4ca417929a3
Date: Tue, 28 Jul 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785226233
