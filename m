Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B42DC2C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752873594; cv=none; b=pKbgfNRDzUw/4ThMtGAzzg0jnI3TwYReWT8TOPkuoUbsobaCJXzxz216CzP/JavDGqXUCR+SQlGtNPFAW/IGqdp4q6N40kks/vCaWmo0rumd6N1GFIIFk84Pp09wVv26JMH8oMeCm4m7Be2U7zN0sT+mFuDBBUES55mbziEiA1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752873594; c=relaxed/simple;
	bh=AyyzPWYzJOeI3BuOlxYJEzpZN3PPa4uqHnMXNXQYIsU=;
	h=To:Subject:From:Message-Id:Date; b=DH4LTvQleTyEbie/ezegCovRhiUlz6S8iV/KYx/JGchVdE4SqUpT09dCETykWBTr2VIDaQgcSglucr97ijpAh9ZX9K0t3xTa3bKUetojwPyDTijh2Nwx8yJ1/WyPXstA6vQBEo+ht/BWll302LuCV+KbMmYaxa5KieuhS5hITmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AX5fILQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AX5fILQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3481C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752873593;
	bh=AyyzPWYzJOeI3BuOlxYJEzpZN3PPa4uqHnMXNXQYIsU=;
	h=To:Subject:From:Date:From;
	b=AX5fILQZNEGfyOIf6h1qmraN5wBC2k1RqS5Wh+QN/S/vl8nPAjqBMUzo+SkgYj+AY
	 O1Y66DhEw1XwfvpBC7vu1wMCh6YthcZ68tmtoeJvYfLAlwfp5FrASkUN1gtU6uvWXY
	 cjjS6hkivNIe4xBD8H4uvMcM/GOKsSF+QRQhZN89oZ9rh7Z5zMZNNVSHm6ghKZbNQ+
	 BMWd3rdsaKEHMQzuy2NjO3gouCARUV8LIrL6WA59ZrztleW/Jfmyxr+5b99dHQWZqU
	 aAuM+iSiZcsH4/TvBYs85AhF11s6cdUH6OTzX3+kLUMuBITGmFHdW5M1GjfGJCwwRU
	 qTW+HCp6g6+tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94525C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287359357.2369.6400701613755343713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585c069f32932d5da72ff071aca90f000803594eb364770025c13c17196e1fbf
Date: Fri, 18 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752873593
