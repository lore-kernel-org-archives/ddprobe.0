Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB71184E
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732493754; cv=none; b=HjY4oX0vBFpKmOb3B0M5t6R8d6b8kn+vGqPVPS6gTti0pnv7mfpfCge9sbvOs1XM0zIPYPJTdXHtlqQ/f0qZOn6neCZVubIj9Y28T9nf+qwtnDJtMZGAOGXgrB1DJauiCpWy0UwqCOvKbI6RhZGCnqNMV6CUVE028VxPSkzrv7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732493754; c=relaxed/simple;
	bh=N8foaiT0lAjeOts3lOPk+Gkp93dHAATh+V5SyIS7OK4=;
	h=To:Subject:From:Message-Id:Date; b=M+jXbK1Go/QTWbeRD6tOSm+TahkYUNnHi4ksN8CKWj+jiTo55SpyWzPaNcXYheSY9O+rc/qjlLgDW/5yOA8Ozw/TUauVSL+CVFKqRK3Z9iAqwiCRA60IAhOtEPQyNhmzePGBFKgbT9rmF5tdqkauzQNuxX5XdBE4L6foA++kTmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQGA711c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQGA711c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B458AC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732493753;
	bh=N8foaiT0lAjeOts3lOPk+Gkp93dHAATh+V5SyIS7OK4=;
	h=To:Subject:From:Date:From;
	b=FQGA711c7V4ALWaE5DnEmUleh99TW1xaMApbgxsASLXgpJCZiuL1Sou+KIylGVCeg
	 LDzutCdZMen4q+ZAeYs7hNsW1Dn1QCd083w5Tr1m0DJsu1ChIAMDHl9jRRgIApRIn2
	 ErN2KyzsIuKGcG44xytREjlrLkp4Gss4xMQxmaTz7BjktAQIJl4xxHy31NWLqsAb5S
	 KkfMLylTuXcA1eQDKHmPZMlEzWXqQpvvM9xQR3BTJHuYFS8p31LzBk+kFa9m3l5Mse
	 5LCxLGdJA66bnKixOrjPHfbUkI60yU3FW4lh3kx6HQfr8PQ5FKNiVREo8v58JOqeXK
	 nSCnPxGbqFhsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D561D3B7C2
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173249375360.13181.2746605512539606444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8fadd04ba4a1bbbe86d5f317ec38be409ea9bf3e7d8edcee2a9db18b55dc7d
Date: Mon, 25 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732493753
