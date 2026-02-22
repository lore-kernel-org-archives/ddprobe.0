Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08425335BA
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771779894; cv=none; b=VJUIsJZon4nXEsYneKJ6mklSh21Jsmqo0XCccMyMp+6FTYIGVoevvWlWEGg6j8OxehreCFICf06Xn3hNCZzSpKpGKJvDpDXnMOPlnQiN8mlyhIVuGGTpKEfWZ3M8lxD8bUS/hOMWpIAR5v2EFQ2Twyd37sI8k2IG1b/zxN4G9kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771779894; c=relaxed/simple;
	bh=INEwp/OlhHRFbnPo1qgl6mlSoc9qj85qVs1/U5UjjxU=;
	h=To:Subject:From:Message-Id:Date; b=P2v8GJNQHfHlK6r6yHNMaV89RVTea6ZLBOsCkMOuBy8PyMjUqp6U3b5l4M8ZgIAiN3/GaDWwRzeyIDaMdMh0AzYOZENAC/TL3/1DUZlXQTCzG3Es1vHjIeBdDKvqE1arqaqKdohmAGxBh186LbbBX3w31R/5W/NDNgegJPNvVak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSYvE3Cb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSYvE3Cb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A283FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771779893;
	bh=INEwp/OlhHRFbnPo1qgl6mlSoc9qj85qVs1/U5UjjxU=;
	h=To:Subject:From:Date:From;
	b=BSYvE3CbflQKzG/FOUjgOsuKnhL7RwJWemTlBQo9Inu1JlNW09jF5Ff8LShT6faiM
	 u5eEZGElgkhHD+IsWWT6SeNADmrC3/AfnD9/73qEBNtGwn1dU5902QO57h3jVamBEw
	 mZvCThyiwpca+4TTyLQlta4/ihAuERVz3Klb9obM1Rt8z13kmeZ/fnPWitH7hBAeW4
	 qSsZ2N3d3UIQSD42ZUhe2jCXwJ7Ke0uhW7fS9WHWfM/L8T78xDEEgKJ68O7G4XMzaj
	 K0K4PKBMdbm6X1rTF2MXI1EupeCDH9fykv2cUZ9WhUTSMJrKq8Nb8wCUC4DkG23fwl
	 EJ0WoFsYJhWPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909AAC636A1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177989358.24705.18331390496092546481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f8a214320bd2f22c665fc28a35f275d1eb4bfc29be903bd4b8c00b084bef725
Date: Sun, 22 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771779893
