Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DCD14EC59
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719428003; cv=none; b=gVxaYj/bVfBdzpUr9HwlLuajXgTTA76S9J2u/rT8vCmu4004lKmc/ttn22BroYLt3+PplTpb/FEtFGvlezWrbAmx/gPFpw8Mmp3cm/Dk1ZDZQMdKLIVG5pNgUlNFsW6Mnwhq9hghUvz0kIa+Yy38ybCEkAvKuyqWp5HIPXSqiEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719428003; c=relaxed/simple;
	bh=qeuQlulrwG67XFnej9VWK7PopCiUKQG71PUQAqsKSj4=;
	h=To:Subject:From:Message-Id:Date; b=S1XBwu5oNmjh9RsTpG2co/N9OPdLfMk8M/BwcCR7q7rKh+kHnHbN0GivIUwrm6lsI8TpptlDTyxUZQK714tHwcB9Epl59r9DwX7y5GN6tdnEpLTNhDCKCpiMjRm34CEYffLciK35vb+bzT+up3yETMrLHUbWKKwPvtgDIGCu/bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBpBkRzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBpBkRzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D394CC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719428002;
	bh=qeuQlulrwG67XFnej9VWK7PopCiUKQG71PUQAqsKSj4=;
	h=To:Subject:From:Date:From;
	b=RBpBkRzCif6cgZ062Z6uyCmwecTBEX+D9AtrOqR+CpTEAwK8O26W9csdAtTkzUngx
	 sCiRNYCdFqErRs7SEDO3cXKaQpV3q0vF2ZqjSXKX2Re1rF87Y2lOWTH536chL2Qhcy
	 BH8SD7FXRyO9igKl8LlFE2ZiL9JindfLz0BBQhZ/dmaf7fSL0IZfBeqf3vsxq5/J1q
	 x70mygjAukkOGa5nA9efFU7neeS96cF4KdbNwgM3co2YngU0FcbyoYRiUH2NKEEyA+
	 MtgGsax0zyjLAAZabPdbgkqZKXcYXvUf/BZDY377jOG6/iNrD/l6cEL+3GNu6Mvjkx
	 CuS9wHFNDl5iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1335C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 18:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942800278.26177.17620962090241879901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e91fc78c0a0f688dd505483ff0a78ac0e2eb1f581b03b7ddc916934d63a2e34
Date: Wed, 26 Jun 2024 18:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719428002
