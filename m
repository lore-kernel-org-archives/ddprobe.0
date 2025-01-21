Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09021F1912
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737503753; cv=none; b=MnI3lSlgods7ld0ZQ8xKm+RcZV5qXKBcq/VjG4wCmQF22c3fqqbbCY7ZfdQ0bRCugUlWJFbwsLUGN4TqVGCxYb1BPpIk4QUa5R9b4p+iORbrt32lIARVvwrwA8J615X/A0KypnwijG6cwaXKHtL0SWMlLux6RwwPSy9xsceEiSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737503753; c=relaxed/simple;
	bh=xPmWhg5M0XWbw1ZYSwNHDNDZdZYW88Wb9h00FZ2gKFI=;
	h=To:Subject:From:Message-Id:Date; b=Qx1bkb0MoKDXvFglyefcgJLKKMEZJzemfUSel1sKQXLn/QV0jf6FPRVAeL4qUQmm0rwJQ4qWBQNTZz3SITDrBbP1n9cKLeEi/VPbM9YVIyvSbLOrjq1g++bzfRjs6TYInLsc+79hcHZyRWyl88fFdjBpt9fcirw1JSK6o6l1oi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqG+GsSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqG+GsSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54CDC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737503753;
	bh=xPmWhg5M0XWbw1ZYSwNHDNDZdZYW88Wb9h00FZ2gKFI=;
	h=To:Subject:From:Date:From;
	b=fqG+GsSu7otjEzT3uKu37qboTROaLn2A7KwMPU4Z7YwDv/yJRMO6BKIS5gpytoAxY
	 Zq/zB/go6ptfOiFYB06XWknwQJkVlVtSMKRKJBVCd11plWccn1bOaRCfyZv2axGzBF
	 LwdUp3Ofv+05GlQtWWZJvFCtIxuq4r+7SnOp58hWFU0jT4zDjltglHYeUfl42PtfY2
	 5yMH5NnomxHexTCSAwZxDg/IpPk3iNo3RsVw2wF9cjm92ZBwah9SHuN/LCzIrURhix
	 5QngWe0ItWbYtBstn9WzTQHaCvzysDddYuXNCBao3UEI9sUMJ8sLOpB7lJOVoWcIlv
	 Bq5C95LNIagIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0EC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173750375358.27278.5489025462751477060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be61b960758350a689a40cc1ac95e82f8cf2bae92a8d306f5c8be91ebf7292d
Date: Tue, 21 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737503753
