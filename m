Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DCA24337B
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752600595; cv=none; b=ipB0CzMSuGOZbCNo7JkBD8kPgs4X+gLHRd8o2Qtf9cTkWbfPrCfDZyyrBB4+0GDiNc22S03C9Jy9aDXyaswd0uEATbW1vtiFIjDkz8HYDuE7eZB93trtXwiikphIU4fRCBgl3l2wjhbUThYcYWrLmT1d4o+57KkrG5wDLSjRUMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752600595; c=relaxed/simple;
	bh=BPD36hqYnbqMi8YquN6jeqQ4jq+zCGCzPdC+bmoEnKk=;
	h=To:Subject:From:Message-Id:Date; b=CKeWkcOnBQcFZ1Y7geM5s6qFF+nWicuiPCyUeBTHoIgrmSItw+9vLXdfcwtReuyPooKM2zccpk1N2d86pTi7/pXiUyQzTmiKwKbng5YgxP8wBWWPkcP6pIeJpkwkawMnQn0YYCG+Sp5sgz/ts/3Og974QNJe+QrfiVtoAXhQX9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBVqGNiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBVqGNiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A075EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752600593;
	bh=BPD36hqYnbqMi8YquN6jeqQ4jq+zCGCzPdC+bmoEnKk=;
	h=To:Subject:From:Date:From;
	b=XBVqGNiPT9tBV9Yp9aY1WlVwohLDBGfIivoOpuMpoVaHTFSkP0RScEz+gtaCPgxt/
	 Jgwpk2hZFqMEOf3PZ1+1MICIB+onnPNqDXzbm7Re6wmjdnmRJXZr61NLpbRhU84Tt9
	 MjDPU+ZmxVSet/cl4gMcKJJoG2uwOFB9ufzLaKFre5m/V9+4zR2WQhwWVJDn6oaGUD
	 Cmxvppu4iL+YUYKk/6fFs8Ow2LhbVoblUxS/cPMSv65k3Nebw1kSdURhxSq8Ao791X
	 tv3U2j9UJoVIwolo0FbaXfhiukY6vRrcrwo7/E+Ud/UWfoYmCNZNsBYZlQSIHQcciL
	 l9hSlh5wZZ4Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911EAC83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260059358.19559.84484254523415950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6979f8f12257ba85ec9fc9fd1b1e146edb086329028bb88daed98418ad4feebd
Date: Tue, 15 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752600593
