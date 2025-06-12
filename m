Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB0610957
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749698994; cv=none; b=tgf6WVl9nAdB0/Mn35XXPcCWEyPDGYY+CvXAzkp16GqW1Ee7679ZcpeM5jy9s97GShz5xRzpOLira8UvgniVmw4XQig3RQH2vtMcTKCf4TeEuAf4HCFK3I84kM/l3NXchaZ5ePwHwClLzQpVg8fbLrzJMJl76c6oyGKdDLvBcAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749698994; c=relaxed/simple;
	bh=xCr9nvC903MLLrDhWXgwLQ32jHt5FwnzriTidn4hRno=;
	h=To:Subject:From:Message-Id:Date; b=dmNrg22bh04bcbAOh6KcqIs/H2MbUOyzKrLONgm7MfIA63sNtHPLwKtFl8mxTsQoeAGWVDv4Atgm4cFHLcRo3YJvpHMtUlBAIiErNcP1zUcsMtv6pxTKGyySvY8JXvygsGpeXa2bgM1YC5eQDKN8LjLarpj5JrttolQsMS3M7C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UublP9Uj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UublP9Uj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0333C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749698993;
	bh=xCr9nvC903MLLrDhWXgwLQ32jHt5FwnzriTidn4hRno=;
	h=To:Subject:From:Date:From;
	b=UublP9Ujz/iWNp/z2cf4MQ51ZzPyNNRU3dfTBu53ow9lGYtjrCDX5ALt++mOP6hgq
	 fkisOEdvf0Pdn+atC0fUvFybFmvQyztFdG4ogvtLuIxKRnSpRyN5xB55jl07o3szxE
	 QfZ7AA0cGAA3j1uMoOeRgFGRvEmcTYj7CszfH+eVYDmiGokgMkBoXSKtmlIPXOz1dJ
	 f7uVZ4mt8RU/cInt0sBIn/XUKjGoHahKkRxPhZU1Y5B5yEELCTxCxZman5mg0WQP2v
	 2i3leyrPS5RTIXVS5NpIDTbnfoB2+ohaoBYvOCnhHK+N+9W9BfsgfL2taRbBgHoezo
	 MZLeG+dXZAKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94DC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969899357.14267.10843195025647169303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0493736a879aaa9d30c11971e2fc31ebd3831415bd3bc77112b86ca8615bb872
Date: Thu, 12 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749698993
