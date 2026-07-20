Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BAE2701D9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784536714; cv=none; b=hUfjmGJjlXko8vBzZQl+SxI5Gh/uzVadS5/4aJpy4GMHzLtcuecuZ9km0LgUlSMYPGcRDG08ZUPKgQp4tusKez/44wuXQSdLemzzPVhFUGKYaF87O05FA1lbhEQkoup8pJjX9RFCEVhkbj5ngWkElcsIkUFBte7RJW8GPkD5iao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784536714; c=relaxed/simple;
	bh=Mb+fw5De6ZMu6KHp5p7DFHsFOZ+7p9ynX6PONgvkmOc=;
	h=To:Subject:From:Message-Id:Date; b=F/TbaXmkmzJFA1nOfH1l6IFAIb7QlO+ifZldUnpGDtNI1vTbkU8Fi2mYuNKWLKgT0n9D3epUlD+gU8GDrOmr262B9rPe+jhR2NHwiW6Dp2tZOlDidkwJ0+EnrSnPdXtRbGOyK1bAUM0i8HzsCSdV745lEDsRlxEHsQNfVxz86jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJEaxIFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJEaxIFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB091C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784536713;
	bh=Mb+fw5De6ZMu6KHp5p7DFHsFOZ+7p9ynX6PONgvkmOc=;
	h=To:Subject:From:Date:From;
	b=YJEaxIFogwRop7l8GX0wYIHMuUxLPFEaTn8kmYWg2bo8sgmJMRsOdpQe+Ov+wJgiP
	 Fxz6RRtyXdceBN1nJaOR3BAwjbFowYx6aZ5Z1RHOwIKdHL6n0q5AyUYrPsAJcp4TGo
	 cFqXhiZ0lXSA/H7Nd3L4ouOVuqG7/3CZdpW2uuN7tfjAKn+3+B4941E8WPCIYQC5wq
	 yNDzreGX3u4D8SWeQumjDMShnaj2DsKi7hsvep8Z3sO6HgTW1SAbWWgUUfnRODPbrn
	 oKZfgsixOAJ7p6zy+CD+ZCjtVLgUr3BCw/NwPVqORCOplOvjMCQk3YSVpgMJll71ig
	 ZWvyHUaaZLLdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F73C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453671368.22821.32415477994067002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e00952fdb986d628fcb4c2f118be3a59de3f52045709692c8b20ce6e799c21
Date: Mon, 20 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784536713
