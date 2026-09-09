Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E9E2741B6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788932434; cv=none; b=coc7DCgCySxsomOpYTWjraqIQtctu4la1dZgWeuNPzRVZXhuNyEVoD8yscJE9nHD/Nrs+JCcQ0cv64+/O6O9iEzCDV6G7zx51dWTDsZmoLTJA+fp4IavRicR0qRJvl7CGA1BWu+hDNSMiCS+PHXKkvJ3xztnIt9CyRH6z7xt4X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788932434; c=relaxed/simple;
	bh=5LpWlM0C31msV+SoH0xHPdnvmsGOIunTVgqQRa1EQOI=;
	h=To:Subject:From:Message-Id:Date; b=PItx+0zldHy+DesgUO3p38kFU+inpj+5EkeLAPR10nnaTcxCrfyIU6FLFqj7SRqobpfBYCLS8uVSjraNga8KppsegGoj7vZ7LwiflUQe7TrwzMIXt0GTv/wr+xuhbUotWkvO9MrGfENsHUbDtpY1tXVlLlZKY38+DJqVEF625zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWSSbFNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWSSbFNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD57C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788932433;
	bh=5LpWlM0C31msV+SoH0xHPdnvmsGOIunTVgqQRa1EQOI=;
	h=To:Subject:From:Date:From;
	b=gWSSbFNyBaQn1ACIlN907S9z7Qa9KYjGo/W46KfwuuOruTBJNXdACUF0oeYJHWMUs
	 dBgLmXa1i8NwUnQyIPGZbl++yRPhefjx0eFa+3tbSTVqnmgvY1pONv+E4h/pAbLTSq
	 3R01qMbpFutjNp8U2NKjYspLQzPppXJjCrqtP6/1FTED8hb5arOB9RokSIPQAl4dAw
	 AJfJ9TmrmJV2KqtjSyFz+DuFpszhtMqEB/r+0HSfoq24CUvQHiIz4Av8ZOkFew79hV
	 vWZrLNV/xdUX5TkZ3Bw2Tq+Qi5kWtTp7rRrEJC2GktuIE/OwT6kwNFLEZTIAHTm/Zn
	 TfGoZWmJBUj/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA332C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893243368.13379.12469395276579581689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b607803e9558b15562542c3cb5cfa5ace0c3b41d3c5d9006ebb2fe443347514
Date: Wed, 09 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788932433
