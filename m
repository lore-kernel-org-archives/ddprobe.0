Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B04C22127C
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752530994; cv=none; b=nYGCaCi9GGvsnFfhm8IcKEkTNi5ZD+7Dnyx6Ckc6cU3Vfb2yU/pUGXoB/FXiir3RCVd/GYXPHWwNkTCxsLy3jspd9OK7NpHM+5EuLzMGcoc2CKsfikqROQwa217nLwRa7rnUJiXBEQ+c4NzoLShNZguKo1CKGKzm4SKyUwnFlFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752530994; c=relaxed/simple;
	bh=5uGoJkKAgyOIGqE9xdk2/isGmLBrtAlXw8hf5/DPwmc=;
	h=To:Subject:From:Message-Id:Date; b=budzNZk/7v57ieNyyaK2QE/mpudcwiOmaEolPlZM3h8fx14MXaPDH2U/e4+obk/eP0qpShvKk8yQ8ME3nt1YRf4CAMNVrYfvgjBED1eXJvLngytBhI4ePUnJV5tuRVX6MQ4Y9rk4+Az1gsbVskoo1lghFKhF/5Zww836p7OtEG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjyTIY3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjyTIY3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A493AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752530993;
	bh=5uGoJkKAgyOIGqE9xdk2/isGmLBrtAlXw8hf5/DPwmc=;
	h=To:Subject:From:Date:From;
	b=fjyTIY3ZdpXZjaV7p0fPvbSWGBg9v+3QI84LIrfzr3f9xymR5sUJdLVAWLGv34IlT
	 2fgo4jgCO+blbXvdbsPy0wuPDe3S2UbO4PiAHkH2s2vErORfwBfW6jZ5kabNsjzoGD
	 Z4P+ixEuR/M4vPL3M7TOSaA1vreuN6+enzd+A2fxpXgBEv4tUeuinm/XSsZfRAxw4x
	 dCsrHODlNkGm07qlsIKpOMV7jRZJDqubvskNMeRZgXAGL8qiozl9g7V+6Mng+ssE1b
	 X0iNMJoX+G3Fmelmoy4Xx/psAKgGId26aZdVbMDLUfrnzblkZRDdzXYbDQ/KPtEA7q
	 W6pHC2TU4+Hhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90128C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253099358.13786.17584831630863341611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039947c66c51c84478deca12483b5b9fddd3beeb0d44ac013d5415106fbb9b94
Date: Mon, 14 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752530993
