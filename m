Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1871494BB
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744852794; cv=none; b=CQR38M2lt2/CYnMQORS+/kVj5hzKbl1gydq8uMN9n6l+ck7//x6a8v7aFI60Mcug+n/VGZ0UsTMIeRV4JlDfeKGDxpbmW7zkqXUoCahTe3jOlQSZ7IqxGcHPOwvgfS9ZC8cfKTocHGJDuW+ThrHPY1nfWAeyWDQsScAyzEUjSPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744852794; c=relaxed/simple;
	bh=3hE8Q1vBWQG0pR50yt93SBMtcUCvcVfbRuLD1rNOPJ4=;
	h=To:Subject:From:Message-Id:Date; b=RoIp2u/DAOeSpWVFitwL0BEyq+E0cYmL2P0LoYqKzvoLzN0hSdNAoi29ODTWjbCkSJT4h/sO81l+JyOVwDlB2EOhwm24CegxDuKW+7nTua/JPZD3tmtItCrsHYqTUVfwJQjxm/ecFQGvnsxa6TKXyTkD1rPslxY6Jg9SulZdIik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sX6M437a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sX6M437a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A153CC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744852793;
	bh=3hE8Q1vBWQG0pR50yt93SBMtcUCvcVfbRuLD1rNOPJ4=;
	h=To:Subject:From:Date:From;
	b=sX6M437a+5QaEI9kQJ0YaqkI1h898eUWcYdu4sjHeJunISDXYInlehWCiz+fB2F2m
	 yoERnyxnPBa/GENwopi+mbllh3qUgbUDOnTDH5+5BURH2EUPV45k8kBk0HN5/7JXZL
	 HFR0BDW7TTAeb9GRh8/xoXQRP/nkRf3zcmRZh8HVdwtnaNkzzL/JsA6oBy9dCPJeTH
	 bs4ngQ17js6x+wLbbqYLrTByrk1pQBGbHC1rabElsqMf2ZwkRNVzYIn69Jge3jGwGZ
	 aoPy5BVEeNBzM4cyNFgwvw4ajz8VVtscaUcbUIG9yWlfmmQ/XrH1wggXLAcSpXkd2q
	 7agcFBAXkXOlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC0C369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485279358.28768.18334384715432560789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d6657a674a8c960ac7d7c091f786a46a7457569b7e99293d4a9cf695cbe9fa
Date: Thu, 17 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744852793
