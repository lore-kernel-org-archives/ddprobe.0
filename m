Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D6379CF
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731112554; cv=none; b=WiMsjkKoFefXw3jxIOg0lcyWFHkfNxk80FBwT0yywZmsT3U07+qqpCET1qhpfptPZkWTfX2BNHLu3Zh5JGBH+ydQmKBY95GWx7FjpTqVOs36Nhz6YsSareB6VntF/JIuoxKVszKnLUSOPrU5ZXGco6klxaN1rk/okV7+PTNM4VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731112554; c=relaxed/simple;
	bh=XRs6Mvgth+w2MRWM/9B3iF+oiLs8Sc2IKDbKJ9pVIt0=;
	h=To:Subject:From:Message-Id:Date; b=BIDBRcBDJfLVv58/v0atzxpV0JYX8XlEudxghTnDkoVpiSbN18pWwKy2oNaa+UhL7PQBF7Gz6lZy4d6w7MtItaNSfPo+v/zPCUOpZYz73u8GkCJWWSozs35dGFI7Xxzww00TMKwqbBzcKab3GSeGqRQJvmPJbtOXVqH0nwhCdb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFCFWlEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFCFWlEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF37AC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731112553;
	bh=XRs6Mvgth+w2MRWM/9B3iF+oiLs8Sc2IKDbKJ9pVIt0=;
	h=To:Subject:From:Date:From;
	b=DFCFWlEjbcw6NHBL14p47PXs3e9eMLdUMDmNIUJ1dWkcTjrM18/FFqal6kQwuhcHS
	 y2jE70lfxXYF9Oit3vS21t7gM+tAXPaVBCvnot6Al1G02nPQThHmHfqPvelbuUDRHW
	 fA67D+XJSZFBDFyK+z4WG022PHx+Gr5XhRytAaqAc2LbKXK3dsLjTqXeXpIQ//WXmY
	 WNkHyjovLRRKwXqGL0+VoYabMy+/mKW+7fDsmFolMSKTXcDuulAzH9OIftU11I5Psu
	 k8HTIV52pwDCmAzvuXZYS/FsIVYTi7CeP84cRkzNEL6T79wLBeJYv0mLTf1AHw4jVG
	 cQOFeelWL0YRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FF0D64099
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173111255359.12119.17138261801186424801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b47869f98fc9630f2b09048f82e22d18c028b3af94293f6cae6de7a92c17b1
Date: Sat, 09 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731112553
