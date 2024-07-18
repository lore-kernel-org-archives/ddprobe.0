Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E3B145B29
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721336754; cv=none; b=BeI3Obql0Nb5m2tHwpjsiLrA4V18yPTOoGYZLTxW6qZhfxiBOSeVAE6VswlmnMI5NebsugmVi2AOVOk1OLp2a6bd6aiRc4Y8PMIOMGdaDVdwAv+yiqmlaNFnUglJg/nyOsv9hpnXyDoSy4wLm27ojNu1dKwPINOcAVmThGEFk38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721336754; c=relaxed/simple;
	bh=b9YTnnAJnibHv5H8/YbYHCViL9FXU4QDKs0VgjW9RIQ=;
	h=To:Subject:From:Message-Id:Date; b=aGFIxicXxpt2/MecUeeSAhruczO+DEW2mHpQwh4YdD9Y+I+QrCIoBSXM+OlsFuChJddhp5NkI+lojilRanPszy9+rpQyXqzTd3hAAUBMTnbvlpNEPIhLn0w4gUyrpDC3TETVJkZITbJU2rJzVLMyjFDVmITXo9BXVIoMrTWlVm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqkgDkFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqkgDkFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A8DC4AF0E
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721336753;
	bh=b9YTnnAJnibHv5H8/YbYHCViL9FXU4QDKs0VgjW9RIQ=;
	h=To:Subject:From:Date:From;
	b=VqkgDkFumfF33mbMT8Eam4kKr/mbhHjEn/PRg9UY8HQZHuoRIDLIbuv6HccSL+mGK
	 nMlg0VDzTSNvPS5RscsBL0OntLiyLcYHRy3q+g5iQOh3lYeHFBDEb7Bmq+vkVEqzKd
	 /TaaMSKqI6kWSotRAq8KgH47MhTvk0IwIiLHZOs2lB6prtx/B+CC7x0del/3MGvZ2/
	 1Y/GrkrNX29p7h/24ZoeDVeyMayfiwg054gLnVNmFR6G4OmutgVKKuV5vKJwRDmCaz
	 sEn19p4njf/++OJIkjUQa1c4t1szGRqlgR+pSV4CE7F+cvzn2wap7oiB4vfNkCSQtn
	 WWl4FLrkE0Nig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0409C41513
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172133675370.20096.5022108190156878017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a04e1c125150c1f61d97d36c13abba5a3a0021936cf7449a1d7a8941e10d7b
Date: Thu, 18 Jul 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721336753
