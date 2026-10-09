Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4986826ED37
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791504034; cv=none; b=L7LPGfe5r7vighPef5NFZ1ZUfE6KM9NMpCZuD2KrsOVd1nAoUMnIphXpgmXP0S2rpDc2oRrgw7m+lu0qg7GzWCZ2ij57hiEhw4699+/wg7m+q9Izk9iPhVZtmYZI1cdqupgUkVvaMdiOlVnXJcQYLWbsx2sG23Kv3fRkNGeGbuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791504034; c=relaxed/simple;
	bh=8QVw5Js+7aXkt2zn2PW7MDSe0y29+VxwOhu8SYCw+Dk=;
	h=To:Subject:From:Message-Id:Date; b=jJ+HdHURfkEcutAD1BQ5WOqZKkVuMFgcc/vZDUhNrBK3y0CKiRvTjvj2okF8IV1ou7OuOV8bNvhX2gVARSCZ97aaUffXjrOS+/WO0t90qr6VsfIIq5h9RTf8aO7dlVS5jzvOLd2CONxHJ2A1ml+6nBpqViep19lA2wV1FOFgZcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsBNcsrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsBNcsrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D8CC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791504033;
	bh=8QVw5Js+7aXkt2zn2PW7MDSe0y29+VxwOhu8SYCw+Dk=;
	h=To:Subject:From:Date:From;
	b=tsBNcsrgb3FPxwX6yRZ/77Stl4d8vi4PorzjtgamqDfYyEitG6MCKTtMlJZ/I72j3
	 vD13oxHbDsaDPpL6ONvKHSAJ9iiNgegsF9oQntSH2jd9Bt7d/N5X3yHP6W7AYg13fZ
	 HSy3edIdqsU1F6i9WHM+SdRpaYUMO4yCINgagvmzhdOb76yz1siBTshaJEy/Op3KoJ
	 olQhl1N4iIU4LPKg3frJJOPdvJo9oa0g4pyoLsJEtX8h2yZew1K3ceA8PKg6rZ9pJf
	 T3/sxqGrHfxaWU4U+2+PGRkGCaIjsPUw7rX1NLQMBXFyjrgSRzBb892pqbjgSAuH0I
	 sFUeiKceHAryw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF96CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150403369.16535.13972011094320275550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbfa557c7b250eb08dd8157e2868aa838b16189f3d1aa29376a6b82d31de0deb
Date: Fri, 09 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791504033
