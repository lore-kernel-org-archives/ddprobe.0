Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FB125F7B9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780000354; cv=none; b=t5BA/Ly5rYbCPlnKW9AmOA56Jt7OgZtbEAFCLejnuq92j5QJ+Ox87uJVghbTGwqK4gK2wVAA09V5aQa/BLErr3HYH4Y3I6m/wJVv1srIJ7oTEM8+4P9O9wrKg74kRxfxdnnhxmvN3H7y3Hler1o6Q2pEkKMRiHxg62fHErCXWX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780000354; c=relaxed/simple;
	bh=0qGnTJE9FIAOdB80tpJAYnmcY1n4Etn6oZ+G0hd5JF8=;
	h=To:Subject:From:Message-Id:Date; b=lmUlCaVNUHvYjKGKV4MMRes9AWUYXGtI6K++n+cqSv3+4Sit6KQDr4MDqX2I5Z1RRYJ5qIlkPkcolpxVtMwyNX9Zphu8CoAMmOW9sPutBAiun/prZKAdK/G6R0xpTZxOquLFQmWdvenTFv8qx4p3dwJbH4E33+7JD2sgObxt3Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8Xmrgkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8Xmrgkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C04C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780000353;
	bh=0qGnTJE9FIAOdB80tpJAYnmcY1n4Etn6oZ+G0hd5JF8=;
	h=To:Subject:From:Date:From;
	b=B8XmrgkxR2SrtOlev8ijBayjwsN81YRb/IohclqHndA74g+C62KVe64sgr7fbVhP/
	 UudO6qvjFy9Ywhlw7MZTNzcZldo25S5MALO6nJabPWOe2RHTFhybgYDMEYtium0r1h
	 GXj5gIJxO62RcBsDSqy2HJhzE+SsRb2qw/Ww1OSOE4phQNkOTC/0cLnKFekx49QIpQ
	 R08kUKxCf7RTiZPljqHmujrtpNNFT/aKhxI3A3KHeu/Zghwbwrvq/0mf5//N3XXDBJ
	 kRUjPbY46SOqYKhiIY8fddK6NwNL7yA3rgm/QmRKzJPNNxKl2gEd+n5d/zqYhAWqHe
	 GwfmcPkZjo+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E43CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000035368.31985.5724781015517610610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee34ba1e9564c019819aa7fb91a955e808efe6edbcb92776f044f8fdec79bf2
Date: Thu, 28 May 2026 20:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780000353
