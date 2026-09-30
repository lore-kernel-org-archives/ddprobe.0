Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05B33CB911
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790749836; cv=none; b=Wa2UjLOnJapzr5oxJkWbOj/ZrFE2YsVrlgbONg0DMOlabjVtPA4AT5wUt+D/wwxw3+xJC0Cxdriiu+01ft9jR39C8iENC58O0jivw5HRvhZpPhrNqeC31JVJ9aOfjxueqCC2ORxJHyjDch4Igf6W+ePZe1IzFa/qneBSYUDP99o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790749836; c=relaxed/simple;
	bh=KWj+kQT+GqvwKzl/IzMBdALETHrFmxsi1VHJBtK9UQ4=;
	h=To:Subject:From:Message-Id:Date; b=REZ/B/Fq4Nij6GFR4gRJ0iPABpOyBfF1D+ARToZaZ3Db4ifQStKMUb856BTPNFQlVzlRyEqtLzvk0rkSFl8TbD0DDKqUWa2R4t8ttYLlC8YHesAcog/PexJTNKXyNyFC9PSVuOEdiGXiqBuvAwA+7i3MwWlVwvUAnoW9rJ1HGXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URqmtPx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URqmtPx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5DBC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790749833;
	bh=KWj+kQT+GqvwKzl/IzMBdALETHrFmxsi1VHJBtK9UQ4=;
	h=To:Subject:From:Date:From;
	b=URqmtPx4rhyRa0Mry/xe75R3Y2lVA+HrpubgNyitNI6DRVturysrEEyTaddkC0Dh2
	 zCNm4zHeDKnZcjhrYcePyVX3bRZwRdOnFfqOakZrkC0svLxZ+k/fVka7mpHtjbxf5P
	 Dscpz2+gJRC2gTkRoEdqdRQcjcujqNA8zpEmOPIDGKnoI4Nw2zBVsumUPP9WrdLGby
	 DzKaIWGiK3H7nOXxf/FFiAByGidhNo621ZOHg3MzIjjiKXy0po82wiOMVeMeZV1Lfy
	 nWW/OjAJmoW48XKbL2OYKYtPLRG7wz6Ur52Dk9XP9XonWNbkH5d/gqxi3YmM1wk4KG
	 7Ul/eexCLPiyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA09BCA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074983368.12032.2710121820368815188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8b477e85d88308a5f0d2dbe819f2ff274755061988de8cbd13e24d5d978898
Date: Wed, 30 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790749833
