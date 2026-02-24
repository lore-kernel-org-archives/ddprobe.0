Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1350D396B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771937094; cv=none; b=b0Cy69p6P6XGRyBH6XSgtRsNbS6MfKtoNY0Go9CaB2niV16JJ+g22VBIZ+ulOxAZJkQssBfewX8UGaFzlBlDP5+Lv90u47CUe0KRG2JXXrM1M+vuruVrxFmEa0TEkMSKl7PB5JRWjfnsMvZAYLV8GJwjCGGjqG7wsrzhSt0HU3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771937094; c=relaxed/simple;
	bh=Wm8jjtzotVKkBQ7VmgVHyq4xAm8K8jFuPWY2vF8T3kc=;
	h=To:Subject:From:Message-Id:Date; b=t2/8fgdedkwQ4dwImc4FYeQrkP4Jvja4Q7w/UP83tSnF7CLa79hvuPKMB0K/yKVQvNBvuEk0lKCId9SBPUgJ9MKOZ0MDc/YywysUNU0rTm8WzXoH9PS3NwiYEKOY0QmwFtPNp/EfQhzrxZ2/1WN0jdKDsbTVTol81rY7Adrl9kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYhQ2uLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYhQ2uLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF77C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771937093;
	bh=Wm8jjtzotVKkBQ7VmgVHyq4xAm8K8jFuPWY2vF8T3kc=;
	h=To:Subject:From:Date:From;
	b=YYhQ2uLRJwZK9R+W/0T9FpQFuWBK+ebOx4kD4U53YwVDachZLattp8u/XxTuzti2L
	 rP7ucbOU/rkCeLvrn1YVHjtlEdmZjjccnRAHS/rnY7GO/LOp1UzsmY7089VimXSojJ
	 clbq3sW6dthpxsNw+v//aJU+KZoXyUzJWnvz6b54nLEW3ty7GbYDOpcPobPJ4NxP+g
	 dUkJ7Yt0jMaM83xKTLKfjCZu52/YBF2Ijkf5YjPUo1rAWctg4vgBFkh+Wf9uqS6ZxJ
	 ql20U2Wr2yy1KAL9mC8+zXuyoOyN2PcEDo8i8wg3nyPxFrXqZYwfXtlfRRmcoIgz7Q
	 U3Llu3qSejlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A14AE9B258
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193709362.21071.1317146977403951747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fdce66c185aa1eb8af26869d3f9562360a853101c917c3789c0f9eb3597aa99
Date: Tue, 24 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771937093
