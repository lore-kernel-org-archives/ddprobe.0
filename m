Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B60A322A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752477594; cv=none; b=NLM9aXnlp391qFbz3o81V0KPcSOmZwfSIBzyt0tnaS0r5ONQTTdxgpFZrtbM+qkukZpQR/E5BXP9Z6j66AOKb6mH8EVUTwCCuxDHGvNUYHvtZTBbcmsNxZa99w/CxnrAYI+C1z/AZKpYnjoEGfwSSkU7+iGvzytS5Yf608/Q3hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752477594; c=relaxed/simple;
	bh=04HVcDd3ugvNyAdSiBPmF5j5HGFMM7SPPKJmJZ3OAQE=;
	h=To:Subject:From:Message-Id:Date; b=rL8b7goDripifx/sVwW1pEbLv/gK8dxfpu4FDaHderxhqbYZxDLqrIBXDtQyHZE7KCa3wImDwAB5wXvPpVKAKgI8VRN12tjjJ12fk37TgkYGGULiVEbkbKZ2sQChydOTi+ph/Pp7r4A7UPdrOgAFC0pB2+KbdPDwktmYbUU8Ks4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpnfehYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpnfehYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F257C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752477593;
	bh=04HVcDd3ugvNyAdSiBPmF5j5HGFMM7SPPKJmJZ3OAQE=;
	h=To:Subject:From:Date:From;
	b=WpnfehYumyxpCz3X4L5tgeBMTVQD19ZNuywANELF6cJQ49c35S69qEcYoeZcjAyo6
	 aDXo5Ss/+8AHBB+uYBJvjnD17v9KaJYR8w7eNUyQbfYv9A82dB5wAQn9xtHAINpgIC
	 6vLv7eWzvKahdl6I0/hwFADOYn5X6ajS1NgPhRAXgxeZcFFL73qDR/xwaJmMAkFtcM
	 AkPjSsH+fPJkExiikOyC/k6KjPiBc1pxFMSi3+HsPPnlnZYZu79/cN3KH58uGNWO4f
	 +fsbSS5HfNxrniAgnhYLLQS9fAqzEul+wwx8WX9BeRmb09rFMZiT1Hmu/JzVIQI0jb
	 ZHTjLqqCBpyeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E5C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247759357.10823.205623470428049148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62459abc833d89d8f3d8cecb14045a021cbb70557f647aac1a59f5f1d0e1589
Date: Mon, 14 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752477593
