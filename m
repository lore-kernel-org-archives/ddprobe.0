Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E057354F95
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712635097; cv=none; b=QH+xWInfOBiy4CwUDKlADqsK3WEL2l2Y7xt1WlxD1bPuC56ATc2vWsBPXuMN6okagpDygeWXD07apstxwL8N94lVCkXeDLbfStc+MauwDJkxhOaII+KnnPuRH0R+6k31YNpuYkaGA9HNwHEZfGqSkJ4rH1ZMtdMghRC4/5DkuNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712635097; c=relaxed/simple;
	bh=pGiR31/Y1pyzCg9Sth3JKuiEOhkamVoCD/FvFE33Ecs=;
	h=To:Subject:From:Message-Id:Date; b=ZJryrZ63P3md0XZJBZDgWdlweklxetI9qUftFmndcIOhMPDuBQf+k+1b6si6SNjPWWhEqB/0oE+wXkMszBSGsCQw4iG2yJmdibSUhKdf033OWtELxxcuDz24q9vWFD0zxOUsrA04/Vw6Tni6KgWHqkNNTY0bvbwD47w74428gJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rw4JzBqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rw4JzBqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F8CBC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712635096;
	bh=pGiR31/Y1pyzCg9Sth3JKuiEOhkamVoCD/FvFE33Ecs=;
	h=To:Subject:From:Date:From;
	b=rw4JzBqrr6UU/Zpryj1fVNhY7b2oDTNkTQ/rvLTr7L250l39urrmdabUhmK61pCmW
	 ohuSnqEKHA7FvYfU32bmwkK71voh9346uhX+cLEP+Ne2ITmiufz9kZdapHBfrkqwXE
	 ha3r0VTt4IWQVJa4H29l3PQBtOKiRnj3Pd4prJ7lLdnB82q5iVByWLKhR95sVqrsps
	 NuFZviDFPr4cJib0uWe3o1VflzuggrMVHUcySglR5a3tTqV+Qy2bifqkPP8xuiI3kz
	 tU07wDB64Tb8f3NHM3J/eG9Vw6u6yBVVnMmMobgNO71WiYpozxcj5W4VZoIyAMQ+vP
	 MWILJg09mp10w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C3E1C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171263509640.14407.17036232500966256560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c6092e49602ed05efbec2111b248f17582cd3a28aa6afc38079ba49a7f6c32
Date: Tue, 09 Apr 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712635096
