Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C74C846A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779111634; cv=none; b=hYzbqDZ8q2SZagBLPspJAupFXGc/Q82OpwHcWDhuHKbiQyip4CBTqWPGOyEfa04WEh9sMEQctPQKyxxcF4Jd/HUPMNYWAO5UxwDHQa2nPsvDffhnE8gBD54/hdPHKVGb3gJTBj5HF0aWEyaZww9mPiXV7mp7Y2FrRgFrMTQFA6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779111634; c=relaxed/simple;
	bh=PQNnGO4XgjM4xEvR0JQyybt8r8wvToXmi8LUTDSXVsk=;
	h=To:Subject:From:Message-Id:Date; b=KaNvAvVu7E6VLqf57/2U8LXXIZ7voO744cocHHP8rYE4yDw2rj58vVP/C74Q9koJ2R3S/O0mKQgq5zWNK1qsu4bR921B+c7u2blWpjFUMhVH3aVjjmdmMDKCx4gX94t6m7GQ+yXp5G//k10NgCLH0qa4thof2hZ2eScvSRm1P5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h89cba9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h89cba9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD08DC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779111633;
	bh=PQNnGO4XgjM4xEvR0JQyybt8r8wvToXmi8LUTDSXVsk=;
	h=To:Subject:From:Date:From;
	b=h89cba9R/w4T5k7EyLDephfn04uym7P6g65OF2mv1V3cInCb2zQglkOI5BK9/NM5i
	 IXOWfPrDMcfPGPgiXwVnsa01p/+8VSXzYKLouTqB/1dUSFXo1I01iw58jnLO7gZrjG
	 uXl5Y2jBANwL0f62a4EHuo2xA/duAYoQguOckb5wjoRf0g57YtaLRxxxD+FGTeluMf
	 eRZV14MB1uitHQunPkStPyDFzaU7lSLJuHZR5dqCFiw0H5FZfVffP594RawWwksOO/
	 IAHOUnjdtfF6zGTif5z7joZ29khB9ZAwNDluH8rp8dtPGeBqYUmwjsfbtNW/MGlGmL
	 OUFwLw5putsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CBCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911163369.13550.8911273857876885448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b399c93d11eb3a0242fb1e710e00501e74e3cc1fa1198cd4c621e5ef2c15ff1d
Date: Mon, 18 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779111633
