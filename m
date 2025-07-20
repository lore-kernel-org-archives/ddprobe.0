Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C546211C
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752971394; cv=none; b=pcpf79Fnnh9xtp0ek7qrIyIyoB5Ivqwz5Dz1/oYH0is6UY96EB6hl663C8ogKMXL6mWF2aVrFoWXcaAtqE3pmhSbc6gl1+39sEK1YSTY8sJrILjFBuQdGXKKS3oPJtSfpHCa2y2L2y7TbXBIVB/iRfa24AQJBuz7C0N/8GuP9kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752971394; c=relaxed/simple;
	bh=wv2OopD4ApfoAKivXv5zXNP0391ZfDr3/JPU7rTZa30=;
	h=To:Subject:From:Message-Id:Date; b=CGp1wF0ihC/6eppufaWWO3evp1WbwXXciupCvvbsXmzYMrRCix4spJUVnpYL0th9mT8N+9KotqK1sXZBQQInJF34wDlI4DhRYqKEi4I0gbzSSLXOdOEC1+J7UXzYy37fVY9P2eVDuftswuMkaWiWjYhp4eGSjqxEwCafz4f+zLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOLgiZSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOLgiZSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752971393;
	bh=wv2OopD4ApfoAKivXv5zXNP0391ZfDr3/JPU7rTZa30=;
	h=To:Subject:From:Date:From;
	b=kOLgiZSF/YyUk3gjGCNsUi+i4GYi6Q3KOAuNkXgD0qoPpwFqVBGozTPR3IRIYcEw4
	 zj955vvuJtWaEzMpPwa7EI9YKSefr1sxNhN6jEfexbZQh4T86q9yzZ55FS0xy2druv
	 EYnDGOHMB7tLYvRuaht3gQgDaqJsYJLc+5C1KKs7uTzvf7BU4595+vMXel15foV113
	 nFVwmFbqCw6F5ZLsFstLIc2kjXSCRzLVuU4RXp+nUQcEDB5V0FOt0biG0elkH2LNe7
	 QVVjYkaUmcEHN4j1acD7Gc2l/N/OlztOnRK8d+OTDmlm43duySt0Rmpwe1P15bi0/6
	 0ByqgjkcIz6xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78DC83F34
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297139357.13498.18391576222786508455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10314d8e54afb8565244c9917c2ebb92707ed38071899381ff7999ba09d6ba83
Date: Sun, 20 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752971393
