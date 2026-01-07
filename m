Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2250C1A704B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767754434; cv=none; b=Nbj1gsst054phoB2F1HhkR19HzI7+JS/DmV1jvQZXF/rFWgxqfGYxo1GWP9u+qnAFE95hnKcC0ffxfGtdrkzZboDCoIZ9Uts3lpZWCgl5eL+dT9+nk7t2w/w7R8jLvcxJ5RnfXSjwFOX29NqgtkyPRhHzKEV+7qx8UpNyn8C6ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767754434; c=relaxed/simple;
	bh=yXhkEy8Y34AT0aI7J6K4im5fTQObiGqxDPtl8nnAFbQ=;
	h=To:Subject:From:Message-Id:Date; b=DWhITHSwQ5M+fNUQ6IP6yJYAuXOocL3P2d8A23HDUrStvYMQ3dVUXFTaWJrKf8uzGHlIQpaq3itavHKQ7Ut4d3131Si3NQBiVRaz5fPO2/0XfSNW+nmXLeYEUeBsHrSzwCFv0o0DQuudytfRCW7Eyi7sAGr6jhhMme4x72DyFcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRMtvHwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRMtvHwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA9FC116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767754433;
	bh=yXhkEy8Y34AT0aI7J6K4im5fTQObiGqxDPtl8nnAFbQ=;
	h=To:Subject:From:Date:From;
	b=PRMtvHwX2JuuCHqqL+ad+SxqYxJjDrE9SfcOGN7jx/sQjv4Oz67y8HO6EmoMjr7Tq
	 DwRRobiWZdQpkJbqQE+lGnvWQy+b5qc5lJ6BHdjdeY+nFvixnWw16c4XrHfd9ZgL+Z
	 bzK3C0k5rmtmvK04kiM7Vl6F85nv0cODxWc45ldOpDWq/yIz5k9eGfYy60Fhz+o9iD
	 xwnktd+meUB87oovCUegErZ863EvB3K/W1O/TDxqREefyCR+uMEvSlgC0X/9n7NRjU
	 mWB6weAfaPe0gFquJ4Dt6tKMfr0OBOki383aYvsfggtWaJnpGiSKIZxUhbPi3MDgtm
	 dW9PYZqP/VKjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E470CF6BE3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775443357.11576.8242035133013933938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7ad34be5e37dfc17b7173e3cb6f64647559102c212926790949056e55cd10e
Date: Wed, 07 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767754433
