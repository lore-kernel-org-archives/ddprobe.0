Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8C63EBF2D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772812493; cv=none; b=g8nlPgUq3jgPDUfao06BlctmI19LceQyEgyzViNXPfc48K/D/+zJTqzlDnv3MfycdRyCXK6lA12nlXqlUW4h+70nkQQBWgDMoKk4IyFk5lokNhOSyp36l/34xrwXXLwUs+ZIy/Pm+uVNpxf7WCwrW+BklJkFDb+EzJA1A1cazcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772812493; c=relaxed/simple;
	bh=IewZNvtImZDkRslCXJseMcI3iGeWQTEhtQhGHPmXk2s=;
	h=To:Subject:From:Message-Id:Date; b=WVvUvJivTWHHrw73QXziGLeRDkRh3+NuaYaWrdlqQ20Gu+zxWIBMWudhOKnABWgRjwbUl8Bzhdcx90CZrJvDr/cZVWK2ubakK0rHfHIMjxW98+MdVXYKibse8RjARh2tFTb0CighBAmZ2kgNAh1uRR7G87Ajcx9pHu2oVyEBBt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g65TWdr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g65TWdr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B0C2BC9E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772812493;
	bh=IewZNvtImZDkRslCXJseMcI3iGeWQTEhtQhGHPmXk2s=;
	h=To:Subject:From:Date:From;
	b=g65TWdr1OsXczRBe5ApYx4BQKaaEw4Ozb6jbW56hlD9P8bvYhpOzu7UI1kjQj4pKc
	 8cGChfvS6Pr6LKpf0I5zkFhz56bvZMfTWnFiS+KgC+lEXcE6Le1dd8r68Y0KVleGLY
	 nVM6FB7TGhttfogjwzMg0ItBB+t+DVNUGgdxqeoye5R5wz67A6nLpvL+MMdEV+/Q2n
	 NhjWv0F3ZWBPX8s3T8JDQBnPt6252MpET0fA4Jn1Rsqiv7ORWuSIA/Kw+wpNCFcljn
	 +a9X9ErcHmfeKS366xHp69jgj4qk3ealRqpqzEQTtT2WAIccL3oDx6u0EVrunc7a0V
	 EduYg8M1uG9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CCDFCB61B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281249360.20234.16791873895577820365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294d27544089dca3c2af91780b016d12dfb2362d540d072eac9f0e64d64693db
Date: Fri, 06 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772812493
