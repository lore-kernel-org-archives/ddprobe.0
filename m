Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2975334BA47
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759690194; cv=none; b=L4ACNHo3Y0YfXX6ngNmlzHrJHD5qCWlPJiAX6+hNVe4odmM4JhdyQMay7fc9dDGBD7MSfGzMZNdtjRMXLz7rypku7NqDFB5vySdJ8dnbn3ELcdF1vlb1ycXp/ruCjx12/4AhL5vphKN9f533oxLxI9PqvAeiXtJQ8+s4TY2snNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759690194; c=relaxed/simple;
	bh=IU2/wEsxT0wkPdYQNZUNLAc3nmtFRI98+uANRVp5KPk=;
	h=To:Subject:From:Message-Id:Date; b=Swi0ENYqB3JUNMOSpdV6jnmxXxLpSWGMsonksm/awa6IUdPGdveCQMbm8jR0xOcmLxzq3qNH7TIVJeVCifBbwwgXpvYgHZxKxWoX0H9ckzaLFWLBX6CvFR0D+2rPR17YSaTACyP1hpuONK/Cx7UTD7x1kz8+2gd62D+zUlkyO1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSE/TUCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSE/TUCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1999C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759690193;
	bh=IU2/wEsxT0wkPdYQNZUNLAc3nmtFRI98+uANRVp5KPk=;
	h=To:Subject:From:Date:From;
	b=DSE/TUCgP6Fc0ngUS/cGfksoMiTf3hqM5wgl5ojHZnIqdu3h5JHGjvT+0ziuuw0i2
	 0C5osh3xdUXkxxXyx7q/C1KCjhMQnOexrLSQpSCuKssUU9yZrAJ/peO7OSrYTCD501
	 M9M6OPUGA+0q3/jBI5PRiNaadRZpOAcrrlRFy2DnL2KOjkpeSnbdeEL/SJTo3RukNr
	 uM/kAZrxZOsxKjX6Na92UB7pCInSrIt0hAsWnr4URwI/xwzNEW2d6mM654avLhAiLb
	 0zu93a8BQMV+GhXsmMPgSKyQxG9ye4vi6EkHGgqh9H4VTJZTK2C0nicHKbaiKkq7Rr
	 8PfRHmZGGSTTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F6CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969019357.30286.12244701657051545697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8073c7b063624a6ee77ead2e3c65749516194079be8e676044ead54e61131b
Date: Sun, 05 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759690193
