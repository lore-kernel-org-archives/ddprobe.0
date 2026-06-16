Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 826AA1DB95E
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781612194; cv=none; b=hiC1ItNTUMHFL7xHAvqtl0fPh9vupcap4tILfhO3rqozjtB+LFSiae7Vd+QsiJfuRXvM6WB1TjP/qQ+oaMQL+uRAOaX/GTsbVPTXdOd9N4iIKPh10zViE9XBeGR6ZluUqyu4q0obXeejWCBq6FeeSHaanGWzH47upP1Gyt+zRPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781612194; c=relaxed/simple;
	bh=AqeG1/XwD5mZkQzr6dhwKnY2PVOJpjmc4EKWG2Wim3o=;
	h=To:Subject:From:Message-Id:Date; b=owmGt0apf8UmGKuwcKPA0Fsii40gDYhB+32VjAwbvap/GyLhdO6SVMgDOWrO0TJiR6Jke2OhQeZvqlbJnN6PVksAgLDbH61DeF7czRUUz7OcOIW+od6r0NgJL0udP+QbKHp+evOprhNxblHxTxmr29ooxD8tL40RhA21Kokouxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0h+IGPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0h+IGPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 270A2C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781612194;
	bh=AqeG1/XwD5mZkQzr6dhwKnY2PVOJpjmc4EKWG2Wim3o=;
	h=To:Subject:From:Date:From;
	b=K0h+IGPESjTCCtcuQDTF547A3vum0ako16LOpREKBm7prHm3fBzLYHr4G3jSX3R+d
	 pqFZEru7VORteOGAMLxgyNRtGN3BRmgbnH68rAlRRZV6BjjaKWg/+a2nGvYPksoxmR
	 E2vDPCKI0mIYa8bjiq7o6VWcG2GMh2ca6WEzCc3RDQ1wBM8PW4ElZLZdin4DPs8xhU
	 e8bH1sWm+W5XMc6Xw7EkLIe1lfadI45ehzD64ugwITU/MBY/bfBGoFGoTRn12uGPYr
	 5jdGisdFFNIyXi1a7c9ESR4F8FEds1MLjVJSkSwl+Gk0BERiQM7hk0gwzlkMLKcnDw
	 VSPjAmhk67e5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D71DACD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161219380.8067.12259093005524352743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bcda75beb49602aa9c7b6ae95cfd778028902f19e5fdd83418dede3fa19a834
Date: Tue, 16 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781612193
