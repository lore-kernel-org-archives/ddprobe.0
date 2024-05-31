Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BF474BF0
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 13:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717162463; cv=none; b=TPIW0PvFTqDtJg+ifrYUe/akcWq96k0Dd/0fkZW31EoU21xzv1woxkQMrJbm04MjA5uJV0EBiRHdwnt7YyaXl0pL7mGbHxbIXqmG4RNVludj/4ijmziSTxR1vX9FRfRwLC4mPJufoWr94/SHIWH0VWIg40wImRuTEkMBubwUpOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717162463; c=relaxed/simple;
	bh=enWz5iMYvSODvWP0q+JtVgMZF2Y57p+9uK5S6ZyePNA=;
	h=To:Subject:From:Message-Id:Date; b=crKtGog+CknPdx22XpqCbiQmkURKGmwm2wwoFM62WBgj/XEQkAe3UZqT94epcCJ4hQZigVAovfwi8LqrOZ/kZcdCLpVXwRUIFs8kPbxt+IGRZJ4FHMFNhKIk3fjjOiVOe1F3M8Q3/oMeAy18M0jGFRWbRnQC0GlOIUu8ltU4LgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTVaBYNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTVaBYNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3690C32786
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717162462;
	bh=enWz5iMYvSODvWP0q+JtVgMZF2Y57p+9uK5S6ZyePNA=;
	h=To:Subject:From:Date:From;
	b=pTVaBYNBFD0zDVVwtp4JZxTE2TJt5XhT6uHvvk+XO8TaauCfv7FPG91vThm8PNpFr
	 a4KtJDyEMLOPTbIwMKuJp8lWZ8Qx9+l8v/M9PRhzTqZCVXD2Et0+H4gqW+WrVhO3Rl
	 P7d74n1Uu6bqS5TmoTd0A9zGdLK9GIEsSkOT1kyriq+hltvyaM+4Bu8hgXtMahp6ai
	 BRgRkWekqt6jr5NP5mAlwuMkFaDmUDaPpIkTuh6cGo7/XaRbJOjGUpdX92t/tkpyPj
	 CEEf3a6JHjGcszRtDpdhbGozszqFEoinZ1tgur4/KwXPEsydg9M/ybtC/eiETMpd+L
	 uNA0gkcET/hIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7CEC25B7E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716246276.8949.10198246565773904139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58554c67ea3ec23bd80053a1af6bcd02b28cea257a19f28851d7f993e992a506
Date: Fri, 31 May 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717162462
