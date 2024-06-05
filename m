Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF0C190463
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717569383; cv=none; b=PySCOw602kYeRKU4dT3Eee9kUhcyp6zawEDzwAJH0In1vU7803nzcv8xOgehiTd9froKRaJKG8e9nK4jSjwHz5tdRUDY4VZGmTCHF5qvh+tgjve0Jn/StrlDLWB6l8wrZPoUqnmuq7niKwmRLkeXZNKcWt+PNeDXwzs6zqwQX+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717569383; c=relaxed/simple;
	bh=CB9lRhLDtmbAkhMTBkgAqyHeuyvmzkgiszIfFenrLV4=;
	h=To:Subject:From:Message-Id:Date; b=lU8N6EyujwndOkZjquaN4C6B9cZBMQwYPasfXgP1WYFsjJLP7tq8w2bXo/lwRknmyJKUOXQ2ktssr3K+L2sx04Ax3+egZE/+AtBb2qXYI3+FVgX4Jm1MID8/KNJTPdtKZQLqOZMGjmtfNf0AP2GUzHbbuMHsekDI5haXuH5zQvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBNDa5MP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBNDa5MP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D439FC3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717569382;
	bh=CB9lRhLDtmbAkhMTBkgAqyHeuyvmzkgiszIfFenrLV4=;
	h=To:Subject:From:Date:From;
	b=KBNDa5MPr7Lvp0m2D6DU5Ws5ljJRl88GK4qLviN3vARdZyHqfrBY+Kd8d9zRzgaa3
	 ZpRckpAvMTuykFan81bWQO+feDmq93LMcW0abPXMxg6P9gciCXjno45J9IIjF76ycE
	 YhIgQYWEHt1Fy5ZYLOR78wQOc3VVr9b2DZrBeBeSKX+HLO/huyWhAwHY6ns06F311h
	 sbQqawPjc1BELqFb75dZ7m+yEHrm4b4RnsgIFBQ1DoljTY+0KSNShcDpqAVnX7lHLW
	 dsOqzLXaeuJvlrp7hybtax1r33t01vofI6DHWxOQ2IYLoQUm69sqmaAgDIKi5rW4Py
	 vQym5X3f8aEGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20B4C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 06:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756938278.20134.4854562601940591640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54aaea74a428a253c8e1973ed716c8c2c4d995cf9f09c2d0301d8afd844edfc5
Date: Wed, 05 Jun 2024 06:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717569382
