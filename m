Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6351346D541
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784650114; cv=none; b=CYopm+CUCAD22hIu6+Y2pcaxexehkTNI4cnY5fl6BB8Tu/uQZP7yMn5X/vqiTfQhjySpZX1JrSNqNqNHQSba/w/DqRseWE5ghH7dY9fP7KH2qOSwh/2gQyMVmQ0owlYxRXiSMlt+1JNmoFsDxANlbg0ScYacPtkimtsBqEAPivo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784650114; c=relaxed/simple;
	bh=fLwTLLodFRwhdXCy3eENyKxTT7WnjaFp7mek0FyzG7o=;
	h=To:Subject:From:Message-Id:Date; b=cZy7Z4GnyB05BHrh+kHdyH9xfeDJ2EDGWyQfHIaJt73AmvfXD6zbPvQeF70pWsQcBOWgf5VIZdrtiDx+zqRLaTbdiDWxQ21O5DY9KX/75fI+o7MgZvLVXF7D2i7EV9RebGhc95MYXy9EimKHhrmd0aHS36equxEPw7cRI2t3k2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCFBLUKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCFBLUKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91D2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784650113;
	bh=fLwTLLodFRwhdXCy3eENyKxTT7WnjaFp7mek0FyzG7o=;
	h=To:Subject:From:Date:From;
	b=aCFBLUKo6qg9PXmGuzii6JK9AKtD6t54f4WhRtWssyHetvOKH2OFH2vIcE747iYDX
	 DVv7ZlhnvC+EXITFbMs5uIC3nXKwsXHS3vWbzMCOqVJBeEpSpkwX6eomvppWig6Axl
	 BEhQtXBZ3KMy/FEXHbJI3pV7LNgJgiP0TOsNQj1V2JOtPc9HaB/bfjQTEjUyZ02O5X
	 jBQiS9I82rDc9wqnyAQE7GVh/VFQYHjndWoMK8DE8Cm9HZQZb1lLvVbkh42nk7fFHj
	 TKdxX6eBPuCsUfld6VjrBfj+bci+kHTe/moILmcl34XKE5IHPCjna15gWZGfvGHZLS
	 bVKZICu+hQfjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB279C44533
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465011369.407.331798898901538753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877f7d01185ee9354c6b2f62a600ed943054a9abbc5b53e42d76e4b04fcf4c2b
Date: Tue, 21 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784650113
