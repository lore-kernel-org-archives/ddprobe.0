Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157203603D5
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784040516; cv=none; b=rvnmllDLpyezh3X9zN//wLX/gpxPQPDvWlXewgkcofZ4Sn+XhAcwcY8qL7CEABedHT5rIwMsJw6r5zS5CqZyOtxIVL3Hx7JCESSveMgMnNV1zqh5SjEj+baJoYQ41K8ESQzHjvi04voMBKACdd1bAxmxPmZUDpDwuGydu9HQ0B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784040516; c=relaxed/simple;
	bh=2g1mutCm6y6oU2KU8f9ziu4GaKjKqR8YM0RDSlbsTRU=;
	h=To:Subject:From:Message-Id:Date; b=Arm0BUNRZk9V1EEvidklgbHJYCUjriHIboM4P7c7S3aWUnlxw+xVxLmHx45OshLTZlcqGesvhp1HYdXEOdIgnLZKq8WnK/MBqeeuY2x9+3/NVEbxSvuuguEymDziQDdVALkuWsB8CyBcoa3MqzZsT4Wo03HL/7emWKWZMjuxgxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7MfFlk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7MfFlk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8D4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784040513;
	bh=2g1mutCm6y6oU2KU8f9ziu4GaKjKqR8YM0RDSlbsTRU=;
	h=To:Subject:From:Date:From;
	b=E7MfFlk+LHrIKcktg8lb9lDIhVYuzUmwh6P7Xq1yzZ75UY7s645Xx73haf1LUkuVS
	 eIE6wZyQ3KlVEIU3NbJGw0RN3/JJMcc9kU/P75vn5iqawmQYBRxN3ndQbE7/CbtqOC
	 0Axf/49aaKbaCt+2t+dzkW8sDeVtr4lPWTzcjvQ15Zt7TEVjHl/GvJLlmxhEby0IJ/
	 EbFBpdqw4Ztk0SZEHMuQ4hZaOdpU4gYRoLf5gDKH+3PnkWbEud4GFJmjTa9Izvn9oa
	 Q/Slgqm4CuvaRYWKCNhgtWWPux9SILi9b3GryO2uHuLnMRWE4ZpAp3ELByJV4BoJkb
	 3jnqmyqSXKt4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A93C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404051368.19940.4480349861225652913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312aae9f5cc35b9897e6a0681523624fd8bc34b718a7acfcdea585d36ffd426d
Date: Tue, 14 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784040513
