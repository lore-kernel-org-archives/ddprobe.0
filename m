Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1763618A6D0
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724146554; cv=none; b=EFOEzcHX99RFj/KUoYwePDN2aeOT0vjtO01PltJKFe3ZMjOXFIeSOLxBZwTXKo0LZQkW41pdEx9lsOPJk1wDwTa3bCInLBk8xzYDlyBqBadEaNNCAsQDY4HmW/P/mz4ezCtJA3hQ23JZ4F9kZKq42E1Z9cIplYoGL8BUQrnmLos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724146554; c=relaxed/simple;
	bh=3Unu+KVLq8EgVQVRScUJcDBFwiaLyofJ4DDx7MLaheE=;
	h=To:Subject:From:Message-Id:Date; b=D5fyB+Vg1iwPDXf+N/cArNyJgeiwvR0IyKvAW61o1Pn/tlQ4cEwXRKTUc2xT/GpQc4Sf3zPbe5qdecD+7fN8wCqK3Fv/JG/JZZT7LdmfSBcZ/DVwbIOUM67G/Q69S8PsDgjaEOuRDw77N+RORXkB9Ne2MqftpBf+v7ER7YhJacs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIUdxnqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIUdxnqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89D2C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724146553;
	bh=3Unu+KVLq8EgVQVRScUJcDBFwiaLyofJ4DDx7MLaheE=;
	h=To:Subject:From:Date:From;
	b=FIUdxnqLKAPLP6D8mMHoouvMycatzyb8fPS0WGSZgllsJlucNQdgOcyIi7i8nX8Ar
	 qcEXqqJeace29RgXNGH2K04PFjiG31c/rdjE+ghu0HlF/tpgiqpeZCJrQozdLMhGjG
	 f9JicTf5dIIBNrP0Zr/Iylz+ExDqCuOQQX54UZDwYDSg0HJCVXiE91B8n9pVcqs5pd
	 PSa7N60kf4zZmd63facpybWof2AB5UJmA0igDfHO34CDOsH/RkJdg8K1YglDAM7Wfu
	 4kfX27Nse/tlKdg7EFrv4WvVO8x/PzVr4vQ3q2rlfGKqAr2kAPYa7+Yl8rhYn5VDBw
	 DEjAd4B2+4IJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A6C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414655359.4498.7722315375822825810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465c2ea2b2ca3b0e09fb7a440268b556966d5fb56bc6e3b4b85851a5cc6eee87
Date: Tue, 20 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724146553
