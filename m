Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046191D52B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705433897; cv=none; b=WJ9QeEZfE8MTxgXlIruvW/9fWAC6CaMw59uMPlQlOcdLM+qijcbEdgwas4G7wMoIUKJp2tlxSv9m2RoV8bXAdaHIf91O+/zkrtefRcDOUdBjZHjrE+UEbQUtHTdQkFfEl4MsZFODGlUlyy/qWCH+eRibH8P0BZLWRaIKA11SjrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705433897; c=relaxed/simple;
	bh=3kSpJrlGiU+SfU3MkQ8khkNQrdpqz5o9VOnfWyXdKjg=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=UVMoxStl5DcH8owXIyqigGdHfAErTF+Fg8CtEY3iGqQfCBt3FN0ZkzHPxDY4AT0/rc4vuFBr3XsSaDyfcizyTJr3+Djg7qPGr56gzPBwyhMs6DdGkNArOoeNh4C61eqF7FSCWZLqWC+WsjvCWDIPK7q/tEciNi935j84MF/tnAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5EbyNkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5EbyNkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EBBBC433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705433896;
	bh=3kSpJrlGiU+SfU3MkQ8khkNQrdpqz5o9VOnfWyXdKjg=;
	h=To:Subject:From:Date:From;
	b=C5EbyNkHfV+CRZvpAAgLkydvlKlM5PCeOucNaiD+v5Mpq9hYXSNBeEWnoNuXXK7uT
	 FSIClWpBpq/jHsEqZ14zdjaunP7cZ54QeHIfmafgo9uzFU29RO8nsNUsTZz0sSxxll
	 bzR5I6EfpR7UBNL/dPV3Wku1GHEwZDlbmTAwvz69sZ26HFjyjMEDCtMWAjmCnftTYQ
	 T8R0f3S5OmrgL5snFiYJGXHtO+LjcKCTACZSN8WoyZ/9myEa74HfYSCkgXxvVgf2dw
	 5DQZaEwGmJbtzjRa1XNSdCugqCSG6fI1RIm3VbRI5S/iPt6MG8sC2VO5XEjhhNvqbA
	 UmV3LYhbtScJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6821BC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543389639.19124.12597308230188844714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad0c7b80d6c517de95ca7a46d81d3e8c85cfdfe1aa526ce7caf4d6d66ea0589
Date: Tue, 16 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705433896
