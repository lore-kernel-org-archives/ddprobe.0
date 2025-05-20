Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED231C8603
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747759194; cv=none; b=DFVcUCxZBHr3gRuK6M1ozqaGl6oMLs3UfyzB4khsIV+KpaskqQ/nW5iosBRWuDA/wxFHljW+18ZiRjQzzIBfw5ERl3ybAdfb2k9Ov9AFEjrVOTgdR0kMzGyMV5Kferu8C7PDoaZaSj2eYm/HCGWBGKhpXI+y3Xcs3ei6DcrV+Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747759194; c=relaxed/simple;
	bh=ThvFsn77UxmszpZPB9AgQR2S6QWR7kWhlXexF4tjAtI=;
	h=To:Subject:From:Message-Id:Date; b=HVq84YQSimw1zIVkIK6EvD1/5sh3DhDJPlItVC8rlP2FlRiUAuB1t/zdzhg4v2MyJ0xJWKYCRxMIfL2flXa7zT787dc6YxZLMqXzl4sDY9vZzuYpXpBvbgJDVUFGNjpUkBUwYtZfVv8dA0ZE0PdpfrD9fuaO23E+151nlzX+2vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxthBAu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxthBAu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A271FC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747759193;
	bh=ThvFsn77UxmszpZPB9AgQR2S6QWR7kWhlXexF4tjAtI=;
	h=To:Subject:From:Date:From;
	b=GxthBAu9rTY+PHLDXG+07NFIf6TapZ+oApIvB6M9T5YFG1lMUD7VxD3tBQyDg3YHf
	 WMIMFMjPHRRlIrBNrC3To2zMqDzR0kzSqM2bxusQk4thcN0fe/lwlqm4aAxBLoyop1
	 jaWOX3zMmqcF/9tHqnD6QWqzPoFAlbCx4kqf00NPYx1j0I/MPv4vX6aZsVttXZzc9B
	 iSllGa3uYqF2dxZ+WG1LyCnnTHRW9guI2B96ic5vGuPs8oOkPZ6BX4su6I+m3+y/Bk
	 jR+CwxIE9urQMOPp0aL8CHIBGl2jSG0aPrqgvMfBgj3kngGzYv3BFRzlU48wKIGce3
	 OAM7agb2og1og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10BC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775919357.13431.3895204942931184786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5edbc9d6cdb1a0db108cc1e8b4ce1d97f4f4245ba820de5fcc6b9575463c2a51
Date: Tue, 20 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747759193
