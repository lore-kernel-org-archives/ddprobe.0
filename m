Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62B723315A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758179993; cv=none; b=C9o1x09vT9rofpPb37t7cANOlpE0+fuAip12JrCxUdFY8/N4Apj0Ziz1unmTzf2RzBCmqlHdAYgooD9+vXGyBK57QACL1StGP572+Jh5OIId/SFe7zsuYAVTsr0a1OGXlJjd9bPjqv+0SMKj71YfekepssxHLsSdwUlqZ4wUAUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758179993; c=relaxed/simple;
	bh=0jFIiNCNmQO188j7GIWDbqv5+wTBNnH1mP0OaCg6kOs=;
	h=To:Subject:From:Message-Id:Date; b=b2GqiUlKMHN15aPkVmfCI0M5A6jvND06TE29t8KhfVLZkkWlwuhIFD31mhn4Dz+dPDOJX6k+mpfR4W/giMd7/t+VSL9TQsFPDgCh4lPg4cSOF6Lk+YextTIXpn096/QZoQMLZgB8NytRiJyOFk9bFUzMtN5twEqYESKwX5blNNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVj/aiAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVj/aiAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1135C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758179993;
	bh=0jFIiNCNmQO188j7GIWDbqv5+wTBNnH1mP0OaCg6kOs=;
	h=To:Subject:From:Date:From;
	b=bVj/aiAwnmy74hXAKvBHJTFrMCbtvbtUIrva07pgmcjldFcHs1XsuhBxDly4pD1TV
	 F5ocvgnXr8pME0kqdNJjUtBLodkiEMHZqH4IB+MdXLnHBDjSTfxvC3eyXczlLuqSZ3
	 66YX7f5Sumat6u4EhbDQp6WmVNfUsD036rLBr0DthrfSQzfkv38aLkWWJWPwy0JvZf
	 UjGnav+lr30MZpVPhPFBybNrkpqY8/n6m5y/WJ7jjlOg2y1YfFM0tSfiJUh0DKAKPV
	 BCH4Wvic+jVFq8Te3nm3c6eff1LcInFunRUW9Y6DNLUSAFFEgn1E1RgYHN4Tgks/Gm
	 g09L0tXydhuAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF61CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817999361.4174.11419242106153062264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d635fd3ab9564d55908dbacf1ae44dc63dbf6fd25e8138e06df4c168ade0ed
Date: Thu, 18 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758179993
