Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9FDA1A5BA3
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742942394; cv=none; b=gpi8824ra9bNfG1zF11JcINZyUHoo0blPjR2V3AO4SpCE32STSvCIm+w32xlAzVdAI8tt73+wo/5Q/u6xdLIO9lDYLRZB23gEEzjdn/xKO5JStE45MAcCXcVsBOLILVdu++icvb/JaHfzHG7oV0aG3TT4nR2+bdT0vsoSNYSUIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742942394; c=relaxed/simple;
	bh=77AgQdYcnWvoDggbjlPZywRl20f3e5PstE+yL8sNYKo=;
	h=To:Subject:From:Message-Id:Date; b=hfO2VLfOxjMQaRhLl2ei89VgQMieov5dck5Yue760Ou3iNIJ+/VzvprX3VNf2EA9GqEEcldUQXc/q1Dfb1xpq74OzWSmYgxuGXRdqf2Gn9e1Otz2AfXQ3U5LP/YbUq5UFnSf67pUu3BuhdRG5/7RGCjtOY5FRhGP2zxmlMqeNm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjNKTYkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjNKTYkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90A4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742942393;
	bh=77AgQdYcnWvoDggbjlPZywRl20f3e5PstE+yL8sNYKo=;
	h=To:Subject:From:Date:From;
	b=qjNKTYkEWm/1oYNmhkAcaX+0Rv/eGobtHebPJD5/vMo+e+fyx5B1xALwmshn0vEcj
	 dfZGG3iM+SPxxdztBUXygYjzM6C7xgi6Ftpq8eWTXnnDnsuKuDDlCJnZg5C/W70Lpu
	 SUSIsMjhlgEY5e/Y7b+EJ4sELfxg8Ijq+EkkBHEHUttZPvHcw86km0W8tcWbNr7Yn1
	 3VGziCwhMm5IxMvJqzzvTZnYcYyDDHeSfZ/l01jQz716Ur9BMQGmnybMbifzDDCjAR
	 ncikCFGB7lcil1m1KXixn6xXo/6GA2UvtQNj5KWo3ojIRUN97H79XpveT5TLHLHPg8
	 HLF5+t0/DTMZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E92C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294239365.29665.8541837869640629153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea6554cc13d40d4355b71f730f8785b204ee8c4187d7877491873c9b3b5d03f
Date: Tue, 25 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742942393
