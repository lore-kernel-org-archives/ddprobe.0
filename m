Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D385248F4E
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760740794; cv=none; b=GQUJNuOW9qA8nYTJPnhD5pJwpy9jC80Bh8tGQ6Y/SG8ajyMa3z4vkXONXGFrGkqs1hfPo/pmCSQML144OS4ESsGL7kApLGfgrW0OKTmXLRmrX6Z05x+LGcLUgAOgUP1g+RwafeU4ko7VHBJghSKQcvNRjhyN3qYNoP94KuVfG2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760740794; c=relaxed/simple;
	bh=h8pOvnuv7xQKCs9scnfEoAPXZBEcyRga4a4SEWOH2xU=;
	h=To:Subject:From:Message-Id:Date; b=U5/6i7ztL73dfo9ccYfm9wmvuvhU4ID7W5U87xUpLVuBcq2soW3cjArzj7CdE6xswSincsmMDq/pmf0tUSzqIkkgPXH/ovGD0tDRAbVdtOfO4Qjx3jJrZvUr9s/9i/xpING2euaO+9UpkuGSuhnb3OZCDjPZuAAWPtp45Tbg708=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cb88C+Ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cb88C+Ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AE8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760740793;
	bh=h8pOvnuv7xQKCs9scnfEoAPXZBEcyRga4a4SEWOH2xU=;
	h=To:Subject:From:Date:From;
	b=Cb88C+SsqqOOfXhsBK5OnaKFPHJzRjBb5hXKzkfNPUgPJa9V1CpSdw9ELPlx0WQBb
	 3yVKmVZ4GKVJpEbGQw8MKohrAj1B+UHh3Wx24JWwHoVLJ32xUSbiTj4jiOHCcKN1J9
	 eLSBWeud+p9P7Z5qzd5MVqyN7DNvVwoFqjZ+l7R3oDfUMT9bfwYNwaTgPnFfBjQRE/
	 igkaAWYdz0qxrOhYHWA6umwA4gIDXX7bJALL9+ji+vCoQOtFa7a91DuLF+yBdePeQJ
	 /OIhoWvdcTJS7U69FMMSBrx8c5gp9pDB7daAOeA1851qsUI1Hnjt6jvd3i6nBxTiHF
	 OseJeTj9SkEVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F93CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074079358.26316.6442048310722820610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156d54efb60bd479dda01e83005cb73f46627bc0df942d89292cf99c1a4d85f5
Date: Fri, 17 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760740793
