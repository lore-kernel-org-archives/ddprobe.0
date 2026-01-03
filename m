Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E89420B7ED
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767458634; cv=none; b=IoWIcrUXVIXVcLxx9/sfY0WUCkbNspNziPWXoTAGflHqm2UkZ9XvbFWGI6dgK3JwzQpIt6gOsAiU/foCwcsjA0A/dC2rEGqS9Lly9sllQ0/kUqnp+4ymCVVkmNJMnIwkKxnQvwnyVrf2qVxgItrBML6Pmxq49gZMLjPlgIqb1LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767458634; c=relaxed/simple;
	bh=W7HiMAiqj7uyvPhQQoXenAQlW32HwC24Unth1nGS7Z0=;
	h=To:Subject:From:Message-Id:Date; b=Zgw1Q3Vi5U3xWrrBQPBxeGMAgByti5tSPJSY87M6ohK7CY/2sSh8zu+kX+7DOiaBCMvLFzUg9thGiYGjvhm/MmEjtQ07Wn2pn5WX3rwtDuC5kWA9fVyohE51ri/DirxunO0nVmHHPy4prS1zuDuz9RfZpmdw6YLKFNPScHhw4Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nppMygJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nppMygJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10B2C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767458633;
	bh=W7HiMAiqj7uyvPhQQoXenAQlW32HwC24Unth1nGS7Z0=;
	h=To:Subject:From:Date:From;
	b=nppMygJJKVNNSnk2diULSlwOZy76NfDsHQhDY0QzKptwbrHmLvqUWz+P1vPGmgPyF
	 DlgiNL4Sy90YKLQxUraDx4pPhF+z42b2/WNZWwtwccGz018S0y6WPDoR0tjhiV8wtZ
	 JEXpzh2OCS9GJ5w/PwuvKzPZdG1oL+UjRWWBeUA9apl/jWte+z2ZlnKAAvKMuNY9Zr
	 KuSh5UQKC0ColWvauz/0FaOGc/081hG7cNTjqiRetnFKItZM0RoS+akaPD5RA5MWIs
	 Iz7jBM04v1sdyRumTaQzaudbDHCecYn/olu1pIXHCj0KYdSppFpzYpViAo9x3/FzZA
	 KkYX0vB6zi9Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9229AFC617C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745863357.6195.11453644194496551310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ed9b0f4b445d3451e9a85ad925ee24d5a24cf1ced9e25a6d84b5db20aee019
Date: Sat, 03 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767458633
