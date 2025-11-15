Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267302B9A4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763188194; cv=none; b=Tz2eUb7SL0bfTTVCJ6FATs8Eo5sgudD6+xeEct2R8MhUxWmbnVfm4qgolFUMmWGaILKsUwYjFbasJuU3ux2ywGUOVtogdXBBd9t5TDz+ft27sdumKm+bulVJX/nAfsXxufXFbz0qjm62ro1nonQ7rfdzy5REew62vaezE1dsIPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763188194; c=relaxed/simple;
	bh=FKPDI2vW+T56gEKvCY/92fmzAhANvXl51D8S2/8ib0o=;
	h=To:Subject:From:Message-Id:Date; b=KV4QGt/7L30tc1V0roLTzrOIPbaJfAL7jxalOljNQHlv3VUP8AqtHS8eeeqpbvcVB0uh/AKnKpV9LwAs4PM+nnM5v1bi1C79h3SgDOf924rjlDj0S4lHZs7yXY3KbS+DOidf3wpenyMYnDp2ggvbYGaXhblpgYGKMGjuGxetY+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmQTFu4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmQTFu4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82E7C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763188193;
	bh=FKPDI2vW+T56gEKvCY/92fmzAhANvXl51D8S2/8ib0o=;
	h=To:Subject:From:Date:From;
	b=tmQTFu4UbHIPxQ0ZRfIosHF7pr6ZLSUvgFJnyaIOVyzrO0Du9Jy6TrCVEayrNDRB2
	 LLqpDR5Q5HGzOPiBmq2m5asRzODrE5dWs4GQH610gcQcFsi7dCzhc8JYgRsLwY+AJc
	 k3UWhtUlRC/e0VKZqP++Cx1x0Cur5FQIpfXP0XxL5Z7T3g6+Oq3SZN7c0r69dhpi4T
	 DYfRhy0p5ZgGs5VNkaK+CULhlN9I4vRhpm5n46/Vw1Gvo/j8XhcX+vXGRaumOBIyzA
	 qj7sRO3ZQ6ToJENM9sUCR6acOIRUcUPP2O9tPTAgrl6AC4nSf5QHnIAl7YzRCw34FG
	 Pb+LBcCq2UmKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFFFCEACFC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318819362.7457.7104375499366688396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c8daf6bcc5c40360f5bbb8009ea664c0430c80b5e2f3a3480145213b441953
Date: Sat, 15 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763188193
