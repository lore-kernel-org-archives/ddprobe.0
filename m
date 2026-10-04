Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372DC243956
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791103834; cv=none; b=oX+7NDd5/KcKvLu0OZ7El4w+H+KLFTPvqwXOknUbM3ZoXW80YJwB0ETHKi+WPAoW7HeB5wRHJA5d75IX20/7qqwP6DVW1eiS0FCS3szVMlV3tWYXy390H2t1gX8egjQNBrFGTCm8E76UpvkKsZunDix6vW+TH5aUVE5kOg69H+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791103834; c=relaxed/simple;
	bh=nB0Kc5TJsOeDnQjE/WYwCisYTq68iAn1BdZ6hBTPsVE=;
	h=To:Subject:From:Message-Id:Date; b=nwcWXn5VarLLZlKjKWvMRRRN0/kSo2UC7xzyOVa7VllxYHPJy1P7ILoCrLflu/f1/TdmEBtEsLanRcdEYQOYPGtfMprfiU0NKXqLzf7laK9upaRUU/cK9X8VkHAGH8HKCcnZoK9oz4iSUUcSsJSxImwIIoT9nxLJGVncS1Uo6Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiB99F/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiB99F/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE05CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791103833;
	bh=nB0Kc5TJsOeDnQjE/WYwCisYTq68iAn1BdZ6hBTPsVE=;
	h=To:Subject:From:Date:From;
	b=EiB99F/g25YMQiLbTkgdVU3LUoBhS9pV/of49bEFq+uQTlcprCzJ8/hta7/yG08o5
	 iaryJB4JT6m3QF8M8ZqAlDVGpoweHSQRfyni2tKb3ZKYuv9oR33t8397OnTvN449OG
	 uHpd5QT+f4iX0VUiG0ax3EhLGBT8EpzWxIJn5bz8PQKwblm5WJrdj9tz415PdUd8tn
	 6G4YnRmcJ3Cfu2iorQ6rth2lWgXj/7LpOVj5kspURvw2ZpyRuvpF4xkSkpIf5KEGAD
	 3nAVFOy1DUVewnpYFVnDuHDKdzVdcmYM1p5O/hu3uSFdHxsf0kZH1Tu7GaYaf5xS6z
	 8+cDHCWGA8mjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DCBCA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110383368.12136.5146098962760550983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8103c7b361871eb0e4e9f0d999f437b826ccc996ff3176ab1b79dba4ac8be186
Date: Sun, 04 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791103833
