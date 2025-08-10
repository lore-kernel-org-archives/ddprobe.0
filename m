Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA2A19C560
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754865594; cv=none; b=TKIJMZstR7ONw+CmEd6DQoiI9ZSSeUv9KgVAs9Dishzy7Q9TVqPRNBSm66M1XwkXUBZgLCehM9HKVk5XTTU2sJbbH8D5/MFJC/00fX4oF5Bh1NcPbJaVot3JM5eaaffNPLYqKLYlrG2IM35MBG5Xlp+6ps9LUltUZVt0RWMxY2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754865594; c=relaxed/simple;
	bh=u61j0d7qV8sq6jI4yK4bPTlDyN/Eh1EWBBLTmlLoClM=;
	h=To:Subject:From:Message-Id:Date; b=Wk6QGY+XyoO4jQRX22+70or9chKY1f3ZVKPnajbEtG+GFFCWtL8PaYbxYHPtNHTu2hLSerH4H6WB5RA4QAMOfi50iexKID/V9FuBCZFTRAcod3pc97yvDvVpTGoHuHl0UAveYYOBA8juraC7VsRXLWM+ucNLoTpGSkI/5nKaiSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1gpnEZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1gpnEZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754865593;
	bh=u61j0d7qV8sq6jI4yK4bPTlDyN/Eh1EWBBLTmlLoClM=;
	h=To:Subject:From:Date:From;
	b=H1gpnEZ+f1Uqg/A/S6mRNaTS52lbakWERa3vj+KabM58TZw/TzwWlAFIMw5vaUIHL
	 upAtuI+TNo1F3X1NXD44zXEeZEZ6Vam0137SQMDjARpDg+8pqvb9fjtKWLtP+FVNiP
	 6FJ8TtiCTCnic0PzMWQ68e0zZX4UbUAkHVFHNi03kvn9es0QYazyyboJ22P+KuwTYj
	 4/xU9JMrJHtNS3NJa4A7cSUI4J9ELXf36uhcCGNVGBUt3ExFE/SAeVcjQ+/NF29h/C
	 zck8r8i+meIdCuvyr1aN3B/BxEulNQ9GyEPayBOzf7x/PvnomffI0vyYYdnDAD7s5o
	 ZfURTsRLWIdIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0CBC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486559357.14152.4522257307073752369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3681a6cdc841b9152be349b1690b31554bb2621e855140ae3667190ef291e5ed
Date: Sun, 10 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754865593
