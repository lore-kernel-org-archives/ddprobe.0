Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9EE3033CB
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789536034; cv=none; b=CrQJpFtDHpb0e0+OF5XRXNujKP4ARD/J32YBKvqgeKuBqXZGrg/4NvpSt26uyJEoJMZWLsIcsMQqoGjGg0ljWDEfuvVHcv+f2OQS9lcgNCZsgIjbVQWHFCeyqxQfaM3BnOpMoUBUszmlMXU9MQBspa2e4a5Qpg29z+L6J6+xvU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789536034; c=relaxed/simple;
	bh=OzNAsXE8ZYip9tvuLKvVKPp9f4kqXn22r7i1e5VQE2E=;
	h=To:Subject:From:Message-Id:Date; b=byhHebXaB6XcgNse9k1dIdQ27qUaM+lb8jyxErDfpn8BjwAcyu4eVf14nIXQVABXy/T6QCivhk3/rGy1J1TZEKpxIlFU8XVxqOYY9ggaraCuLDEKg98qfQF/mgMaatFmNYxm944xyVBkce993dUtO3GPYFD290712TGek5U5ya0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlfvmCd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlfvmCd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D424AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789536033;
	bh=OzNAsXE8ZYip9tvuLKvVKPp9f4kqXn22r7i1e5VQE2E=;
	h=To:Subject:From:Date:From;
	b=SlfvmCd61i3jYUpvUtHaSUSaAsNIny4XUm64dBfgpnTG8RDCsbWTQEWfkBqxuVHW0
	 872dP3uQRxrJ44nSMOzM3VBWh34xNq7jm39pu8EBcgzS9kANlEMEwCtQYaWRQCDtqW
	 HQ94F+WqJO6748ld3pleopE6EebM+UX9BuD0h7hDu4kpkWzIl89RZT+sAFVNnkgygf
	 ziLILqUNfytzHW2L/yXpzETbYrdBb6cMmaBEdHQVEWNmkfIOGsypnVdYYNcQj56CmS
	 rdvxAFZD3+g/qmiIBJvOEePBCEUi7LVNT1BmN4frbn9ShvYp1PgPIkmRrMP9QI4tY+
	 DKWN6vfQ1PhRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA9EC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953603369.8096.13474068271297957342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a9eb14d905c279cb55797c61996bfcfbae56aa383285e01e3af231f2827058
Date: Wed, 16 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789536033
