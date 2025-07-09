Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398AB21ABA3
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752105594; cv=none; b=eK8L1tt5AU8k1E6+f374DsgXgTAdkkTZaI4ulys875HfF+PbSYtDOan3k/+j+Q0Mjv3Oua0O26WhwOPqe07xROvnMBMQ5Tt/AhKsI2hYo2ZbBnJmrgAecW/GFb18Ar2wNVvX4mI9v0MEbT8fvE0sw7qhfdEvW1aUCvwm7eWTdkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752105594; c=relaxed/simple;
	bh=6kcPNrfTIerEce4bqdUsxNoCWVpPnssRL+PMMUiMd1k=;
	h=To:Subject:From:Message-Id:Date; b=Xptd33NcvVqGQnI6MVYKu+H465RouPzQ2hHJtB0f4HYSVUAok4ipjblryMWCL6FNpfqqt91iKBa8FRn6N/+zyfOEkdZ6xvE/HTkke+y8PEMNhiq1uX+1k7TcHgtraAq8RKImPVm5Jswqlyz0tP8hxRdVr7eOduIL154bQhG4bMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JulYcT3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JulYcT3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C0CC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752105593;
	bh=6kcPNrfTIerEce4bqdUsxNoCWVpPnssRL+PMMUiMd1k=;
	h=To:Subject:From:Date:From;
	b=JulYcT3Oi9/3SK61EEN45odqYEaGh2dEYVdQ1QynYGgKGjtM2jYd90Y2on9EO0mZZ
	 xa62xzq3VBDhfcBOn2vW45U/dur8xtYnaRCPb1kAf+aBNeyBRJhExZ/kgTzuuErcfm
	 l+YXyH0RtZ4NrHAsg3jXW/HoGZ2Xz0Gj0hHs/k8QejYkYnz97gWHl13b1s1IPQnG1i
	 C1h9jQ6LjOrWgFPLVDSuRB3MiUdTsIur1SkHgX9vePXPu6LMz0Zb5vpSSLtXiRGoav
	 owMknYBZnX8fA5LqerIADrW0oKWN+LoPPPqnk6YVcMiOkz64tnvlVQ1wvgWTLSrqBh
	 zt8fQu0FE6Lvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FF3C83F17
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210559358.16644.641400849119376479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ecfa47aa0c4ae4f9b9d4b6f455c8b77c683c180650413506384b4d65a61a3a0
Date: Wed, 09 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752105593
