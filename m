Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54836383
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719102743; cv=none; b=j44Seg/Y7bAYMNAaWaIOzqJ2VHweSQZGTDK7kqDOd3RiorT+vsuZodfqRLg08irNenHaf3kkgq2mB1qiZIUUXp8eKFk65sLH9JkNvUnQG6VLPRnc1b76Arc6n46CNdlcvObU0I5tvVABF4XLECiU8P7Ww/bmzHIwVd1bgsTGk/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719102743; c=relaxed/simple;
	bh=Lsy+ZqXoc0tTsCm0rxoOM3ADWq8H3aaN9SBr7TnKYdI=;
	h=To:Subject:From:Message-Id:Date; b=ptbknRXY/JdhTjZUZ2Og2j4aRrBSEGyZHA8JYjuVECsD7OzBZtO1NJWbHstW1mqayEYAEXgBQgi34c5Z8jSf9XwErLoZyQg2t407Vd6e4AG54qdv5gJRcLRtDDLSxrAenSeko2zhyJ0ReM8De/C5CAoUzdte9aaJfFRrLWQsCiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTz9Olyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTz9Olyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BEFC3277B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719102742;
	bh=Lsy+ZqXoc0tTsCm0rxoOM3ADWq8H3aaN9SBr7TnKYdI=;
	h=To:Subject:From:Date:From;
	b=hTz9OlynU/C1SeBKbBzjGCnprbxyzhEQdUkwBh2c6DoeE8CAzzPYQWLdUBedLa7GQ
	 euyIC0fc/UUyxChCJh5ijIBWVsGPnceScchKA5ns0II+oeStLkuJlKsqEz9+jLqohw
	 c59PoWl6+I1zgd4RCPPQMKeW115rwWCrkqU2c8DzcKTnPfToeh6IkaqVyhUyc3RdW6
	 KMb4kIvBHV+EMFeNVfz/hmSrXN6DjCA8MwqmVVNMErNdky/tPQbKQc/R4x4qlLNDLV
	 7S6kA4pBPtXTgAvKx5rjyyypAU8kvun1wpAORFB+mUZ5VHqsCBtV7k623kBeSR5QGd
	 3EdymIB4eHk8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DEAC2BD09
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171910274278.14474.6385449840649962301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec8ead05c0517d89795678964ef1378fff2aba94c77e5f712be949ce6d53f54
Date: Sun, 23 Jun 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719102742
