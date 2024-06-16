Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC272575A
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 21:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718573303; cv=none; b=rXhn60IVWk4jXu9MhiAkjtM61tLp0V9bG9h1k/3jdBbh5cUhsAHdnOolgua/d3fbnuXtKqfpQOs1Eklph9l3H8d4MxfwaoWaHorsuwlIbpUnWeJLW2FaYpNwc2DudC94MWb/bnpmW+UnssKelIPCQBMorhanOpg0QJF+XrcPeiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718573303; c=relaxed/simple;
	bh=YrryYg5jpD0YddWv31wW4X57THKZOK/0gsz0Y5BBJl4=;
	h=To:Subject:From:Message-Id:Date; b=S++wgBWIKAX8LFfZ4//v59qJGY17kfLdNWN4tXu7XgxOdBWYEQzuLFaJaIiu0KgVOoaJdgWgJbCqUSsaIel2Eg9VKAb29bNwyL8fJmfWHjKqbmbf8uxwvA1jOG/gZ5s6wq25wMgI1QOocsjrmgUp5XANK2p6BRPvntmebe0xLjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3UBxX7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3UBxX7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E372FC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 21:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718573302;
	bh=YrryYg5jpD0YddWv31wW4X57THKZOK/0gsz0Y5BBJl4=;
	h=To:Subject:From:Date:From;
	b=K3UBxX7bO2lOm9lAS5EMhjd7XuBmspYCb5AWP+M0CywlNxQLhmW087ILeYBoSia0n
	 RN/vf8UqvaiOs9+S/58WRCC9jYdtQx6jE183Y6GuArfGKq2nRcCi7ByGxLA6LJJWwV
	 Wb777rmXsrX31ZlMWBkZYqViibf49MdMGpAYjBzc6pM+6foxv3jvhdyNLie6CYNzQz
	 f39QoeklspOzpmmABr/Qfi/TuaOO2EexPmkI75q3HKPv3usU6aLepwJl77gutm6UwQ
	 L2jXTyxQ4P+DclTIzrSl7jaiCjCu++Vv4eg/kOq5h7iK1k0UN9kXkJ+T6Fkhjac3am
	 WocWmeyGC7TSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA194C27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 21:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171857330280.534.12964796778119027877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84375d76eff1553093df46ac76cf74f128c55c702dc5d6cb863b284630b71e8f
Date: Sun, 16 Jun 2024 21:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718573302
