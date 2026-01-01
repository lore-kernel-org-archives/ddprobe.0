Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199461B81D3
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767241434; cv=none; b=mQlqKjGoIjjTeSCNIUU3TksN1p57cLGaE28PP0NwgoCvzDmivHLJhcsmCwnoyj7+nF5XIAn/ji0lQ3832ywXUifx59uop5zIPWkbc450oDnLJlMTgGElS+7rU6jmD+0n0BPBctUSL0XprHDIVas8Agk8F30lYRPT7P2B2xSnCnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767241434; c=relaxed/simple;
	bh=RFUFD0h3a7HL0mXNSRXMjCh3nmOGVC+JYFILsLr1vwU=;
	h=To:Subject:From:Message-Id:Date; b=U+5lIVKRhBIZMwKB1KY9WSZmc3Hcl8hSY7PuxcUvODogpBMBnEIchl2v0wFic5L9XLcztYdKKBR3KMAH+9X2l5mg6VL4ZXb9GUPhtHrS3fuJuECXt8qoqGnbqPNEW3hwpJasJRYPqy25ayAD+17UHdaUGYLBZWyTUe7mH0vDVpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RicyvtJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RicyvtJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D16C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767241433;
	bh=RFUFD0h3a7HL0mXNSRXMjCh3nmOGVC+JYFILsLr1vwU=;
	h=To:Subject:From:Date:From;
	b=RicyvtJm2vBGrwwzU3svxd1YUcjEd02hZfIAxdhDp11D3Ec2logR2QilvYeDY6Wla
	 2dwRzZgJIl/lq+n6wy47II0PoS3MyqD9Li30C3qb/oT88U0HoaPDkJnuzJNGS7lKtn
	 aSU3HxguD2ZZzads2E27yGcK6+yu9OeoaHnWG2x4z2vbomm813Ssle48tbpqExFi9m
	 zzkjRraW6MVyrTHDvJQwIt0GpWhrtXyDZxN6vC4jz74AUs1nA//5SRiFsDIpY6Qa/9
	 bUy0fYZ4jLY+qF4Q1IzmPmOCKs7xkSNl26K933rOc9cdg3LVwGP3BH35E0UzjuSuhv
	 hukXrJRCXmjBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907ECEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724143358.31468.1343092618060121958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78df204838ebcf1e468286e714ef4b96ed8249c99d0daf5e14d80d9433e33c16
Date: Thu, 01 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767241433
