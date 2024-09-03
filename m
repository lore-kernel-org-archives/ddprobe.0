Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0E11A4E6A
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725333954; cv=none; b=kli7ampscJJCRylf9l4EzA4V055qKvTEtluylmhwYnE+3Zg56XrowOsgqH7Rc6GVA+SiKYKp80Ymg4nK+PMoFtwBB6ngUUd9FRoZEaAFhnGp5pCXC3WyBdDhy7Y0bvdBI3jrDvBVDcvD5vbzPhxuvjGJT8qfplOOvKG36M7Ohao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725333954; c=relaxed/simple;
	bh=r6ZY73WIZL4dKUFb0cOydsZB4oWNyX6HodbutfamvGc=;
	h=To:Subject:From:Message-Id:Date; b=TPiO9nsHTf0EbwukSzQCYKOLgW4U8EYf2OWXZA9x+rYW1Wtfimcghm3hCr3CIVb2UGNS/IFjUlmD5aq66FlwLRJycS03Fa3QBYWvk27bY29s1wEOkifP2Ge/ppHY38Y/H5sjpHnJYz8pPyQEmDhcLptliW3u5sBDGDfu8gYoW+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sh1Egwzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sh1Egwzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D63FC4CEC2
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725333953;
	bh=r6ZY73WIZL4dKUFb0cOydsZB4oWNyX6HodbutfamvGc=;
	h=To:Subject:From:Date:From;
	b=sh1EgwzhOZ2gP/0TPg0D1AstemBudYOOpPINAwlbVHWxwu3vCQkdSzUUBxvPmYaYc
	 JhbhxKQTZqo+vnvIE5Wbf/EWZHqR0CmzClUcWxtTb4jnUymH5u5HmeRiK8VvD+yqAs
	 fNSLqXEbyfFEjPP004B6Ej+huHXywWVZJ4wqbU5eB8zYYejaAhAzpCecMl1NDNKoWj
	 xRX11Md576waRAP8UVC/0ahlravk9TuOgGxuBQxdBu++eKKkZyxdozs8W4oQwuoIYz
	 4jGqnIvu6SKIyJS1Av1vYYve+YCLyqHOEFThnalMoL6PLNBe+Ow9x6hAJqnCcnaoJd
	 EXe147DbRM4FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCECD3427
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172533395357.21832.14697707089494672048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3282c99696a8b59085dad66346eba841d90182da906ad724449a2acb49e19374
Date: Tue, 03 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725333953
