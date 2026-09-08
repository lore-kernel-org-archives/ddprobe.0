Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C244C77B1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788862834; cv=none; b=c6XQLwxYG7cWEDgidPPJafxu0QkTASlRCTTMyZUo+5+IByZMOp/fCTzqlAQmPNMfQD2da1hjCp0lGkjNAJ5PXh/oLRK8qEKlSY43gWEh74VlX5O6aS4vg13fpd7652l8gBHi+YnkHBSe3oV6DdVUnhlDSQ7Fe5sTDhusyArbxJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788862834; c=relaxed/simple;
	bh=mgLppTF7xfeMkPB6ZpfhgaQzwsVkSL2qCeOpq+gj+mM=;
	h=To:Subject:From:Message-Id:Date; b=IUJnX1yzSZnN55Kxymmm2bDLg4wH30tSlo1OPVX/YkjvvA7QQwUijbFe1v8+5RjNqJPypma8xhMHmv0aaEwPsSUtkztFx0s3nPlBOYfpLD3wrMcfykLXAv3qn6pMOHgOY8vsdwSQOrSVL72shxwtqVZ+6B93axiE0iRnNYbXuUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFUfrF1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFUfrF1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1BCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788862833;
	bh=mgLppTF7xfeMkPB6ZpfhgaQzwsVkSL2qCeOpq+gj+mM=;
	h=To:Subject:From:Date:From;
	b=dFUfrF1tLL5lDBa7/XKdjwshMOXqv+PPHakfep1DU2lCgLSuoIflj+D8mqn1pBdny
	 vZoLcc1FrX/tszQQTpDmosr8Y5ykcLrf0vDu4oax+5E663UHJbi41WWUN6sr60tVxO
	 Ars+I2nRjPACM0qY8J8d33pQkkuRUsBqlB2OfFJmtrVGW1zzjXARDdYMzK1bAputF8
	 ddUSAiRbzAWjd1LFZlkXvvf7kkRGRiSiXiemqpBTrEkByUFrZXwJSqFxRimPIdTzX0
	 Aa+GC8HOaW2gu5KqZtGUFm3yvQmk2dmYHB2DN/Jmgg933oVrDm7wpgw2mfkKr3NyL6
	 rHr28vV1QKNkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70B4C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886283373.17788.4596722280579710088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270f6b69898dc4c62d14e85948bb77bb724d4dfe98b7fec088ab5c8c6f8e90be
Date: Tue, 08 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788862833
