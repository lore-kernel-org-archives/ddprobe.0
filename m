Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255D71BDCF
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758395394; cv=none; b=L0bI8HbRjwl9Q3qjssY1KVqtBRfDSi6THjvXPRTnRsLOibbxlGQqo61VOPPGXJSOa/JWD4GAYLhTBitFRpn5V8uwBhGMKyd2qZBYAwdZHJ0R5LSWkmFqUSg4R+T6HBqeRr8z1TRzgDfYmN7nYlZ5EGuD1PzsDE3/KmcbMI8z4J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758395394; c=relaxed/simple;
	bh=KZXTD7ZJpC74jpRQgQgR0iSh55lz4dZy9PC+MQgKG6w=;
	h=To:Subject:From:Message-Id:Date; b=NV0Q+hx4CfjxBEwIFBGckq0lyW6ieMDCXxHnPD0tRrHnze34GNQLKdscqxMkfzycjrkTOTMeDGi1Pili4uXLTzshjQTxMxeRXj66w4tN4w01otgqj7irkZhWx8x57CWvtMKHGtASzniki8MJ9Cdq2NjMOCPxoHILKjPtIao8cmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHSXz6RQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHSXz6RQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63A0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758395393;
	bh=KZXTD7ZJpC74jpRQgQgR0iSh55lz4dZy9PC+MQgKG6w=;
	h=To:Subject:From:Date:From;
	b=MHSXz6RQbfoyRvkMvlrq0l6WQEVzhLdRcLRo0hLHZyyUQtt5mNf3/Y++xvLUA+7x2
	 mAaySJa1A6RSMy1CdYbbkmfgEDx7I78v0k4unFrQ6FxhF73m9EW+EQlQpmI2er/kgB
	 xONjNaw6LSSpxwhF8oo8rdSQpezrYPzcvvC0CYZ0C5OeobQ9WLg5zeE0JC39SDiYel
	 DM3DpNFguUzSZFWD3VMMck9Su0+30VFndXwOP9gxhZhDG5haKHSUVSXYp1erKBNt9x
	 VQ7Ln5CzCD90PV1h2jjfHtFZ07R+JqzetAyPHyK/sbGDqPNL64k+sIgmJQGyaj0bHr
	 P9n3jnWfgY+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F4CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839539357.14290.3657407318025955302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28be0afc5d5e6d80b36ec7ca57d8b5117a16435ad5a605571b1ea19fbaae7523
Date: Sat, 20 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758395393
