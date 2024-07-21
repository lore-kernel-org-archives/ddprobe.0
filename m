Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A6B1FBA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721537754; cv=none; b=bnenkkmseJvlYpkUB5K3Jt4ZzorKIznXZzx4ScdbAWPWr847G91Jtk6hA3aDNN88kGYWfZUSQRBqbcJz+fCBjKorLSniVBtYMf/ZvStfYMX5M/UVkixnxVMGAsGxnhyxlsG/nNC4ompXWEINqajpImZl8KQdXGcj50PEPYh7RTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721537754; c=relaxed/simple;
	bh=r+A4CtkGvlJ4Uo/wdIvfOcfYo2hhbCMAxpciHyZXX5A=;
	h=To:Subject:From:Message-Id:Date; b=rdpRnSJvr5945t31dW2JA2bxanXCNtcxVzP5IUo170+tMn7bc6PBfMWbT5w0LfXU73IdsTTZMolmdzp/NZfOBpZOEuVOw6mvD0ASs70gcBtGTmO+AE1V6dlVbtTFmHnr3AOLzPLV84SnUqrVu8/IZFpWdL1REI1J8l/IwzvL92g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SC2KDhgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SC2KDhgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FB7C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721537753;
	bh=r+A4CtkGvlJ4Uo/wdIvfOcfYo2hhbCMAxpciHyZXX5A=;
	h=To:Subject:From:Date:From;
	b=SC2KDhgtb8XJJiIazZBj3HKiKJz0RB6LPaWuP+W5JglWzFUYQ4YBa/u0YPYCoORH2
	 Fdqd7Ba25plLs5f6QaNjCr+Gumd3zAyitNVn1nu8Wjg4n+UCR06n2bg9DvEjm3vUav
	 nkig7y4Es8nG8a6uZ0hK7dUZG1ZbmZ+jP/wp2hWWslnPvV6gNL74n1I19NP0xR4SpY
	 R3pkF1rsHamkdhMmmmXj3qPjim01PkzdE3BKQ2/UK1Vm0j+BmG2LXmeirHF6khuRZl
	 MiLkRJCdtF08gXfJwY16NPbDyQT9oCMTU+G1somzpCTAky+NOOeY7rf1ewl4e5X7ai
	 cPCEjZGR6pAmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D7FC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172153775360.11908.4593980997465624980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa594a2f7ec5a0852b53a0f0edf92365f9dac0d5c849648c632e29d1fd82d9f8
Date: Sun, 21 Jul 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721537753
