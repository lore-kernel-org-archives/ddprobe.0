Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FABE2EB0F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775177734; cv=none; b=eKlJhN5lNxMlYt3MPGsvgUf4TplkoqxwGcbqBNPaglVX3IN9+YeQdBTZSsMDHgVQU09wmSU9cASjS8RrzTPlRsQLn6c655liDaFXoIzd1O726VOhEQCNMWDr98GZ+hgZVknU4OjHbGp3CaOsSwjVEKysayWKfQMo+wccB0aD+v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775177734; c=relaxed/simple;
	bh=2CwMo3lmn0XmHaf6/Klkl8ghEr/wZDf6m/ve9ZmDfEI=;
	h=To:Subject:From:Message-Id:Date; b=SKV/sw0E4TtZ57D3qo+SAGeCF7RRprJDwrHOnsM0rOvVTDMqUIU5sh43/eNfWpgogNwcAfrIBOa/6RuVLEdVHxOkkV2gpQsauLBbcDl7OGWifijQzn3WoUBPf8LXr52qzHCeiVtB6MDF94SqJ1CJd1dxUrRXDS/DIJy5f1rqm+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAYh2TTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAYh2TTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF15C116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775177733;
	bh=2CwMo3lmn0XmHaf6/Klkl8ghEr/wZDf6m/ve9ZmDfEI=;
	h=To:Subject:From:Date:From;
	b=CAYh2TTrBFLOb1c5I/OwlYaJpx95mi4zkergMs7Gp9/Cypz2Ios/gYYZNjxBaDe0h
	 8GgKZ/ErkHRT61TgL+Qauw0JuSRx/1tQKCmgcZwVdPMSo7lcWq+JN+eugyubrHQ96U
	 5y4ZPokQGEKNyW+wvHVKvvTgVZb6LNEDTXKJuRJ2VlV9UfG3D+mkJZV6kg8oq0by5H
	 UrprSDi2uTbrp1iDv4B9B74aYSFnhoHl/wWyI9M1yhpw3zVxm86Gel71/MQd4nGhLV
	 WqhfsbhaiLPp1akfJbmZQcGFompBlLCsDrl631d2Vmq2OifIkkwZXhNu08U1Y54IMn
	 rw2qt4aslqfNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0AAD6AB1B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517773369.28442.1228162302224720081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2caabbe8c01d38ded1d453e1443e9723e0250f714bf488996e09a69e057286aa
Date: Fri, 03 Apr 2026 00:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775177733
