Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3DB1624CE
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747862394; cv=none; b=EX9+gAyDJ5/ttOG50/06Ar7ULO1bdxT8BFZIHKq33yRH2EbGbPFCPfB0OnMayo5HYiYwSnmbZGobjJ6v4XO+doTOFekqsWLIzghvFvoTeJGgW8+A3BEWSwatSx5qOvsOY20p/i4dBm+FtZm6Pu64JuGDGKqeMknrhXwYnJNm88c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747862394; c=relaxed/simple;
	bh=zUb6Psec+EQBvIpSww/Yv54OK7TPGIOPN2j5Nfsx874=;
	h=To:Subject:From:Message-Id:Date; b=ooSIh7/tjEiIPkRQnWsAHx/w/6OQd2FP+iHGf8WdXltNJbZYtFQPeFlsvsn7FbfwHTIIHQTPHz/xxhMFX117wB3OxzpGRfU8ZQEXqckMrpYNdGLgwvGB+oFHotSXan3sPabA23DPLweHNVyk7HMRNHGPits57zeN8Al76s6nRqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYYy/Ok/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYYy/Ok/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD89C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747862393;
	bh=zUb6Psec+EQBvIpSww/Yv54OK7TPGIOPN2j5Nfsx874=;
	h=To:Subject:From:Date:From;
	b=mYYy/Ok/3mMuqv853SzuuES676DEcwF1eLhz3BjN5RsHAXy8KLpBMbYr86NACzcoW
	 ukPYscj424SXKNtimWFs0paU1/HfFvGj1/ITvsVnuXl+hPBGmlYoijapr7+Anz9B7I
	 uu87r24LP0V+x6PSTl7fu7XUtcOmN8kynL0UDLZ+1fuGB/EtyfMRznXXSe4si2afdZ
	 4k0A/ycj/4gxGLTt6kcYYrhgMvCH2UdaEkA1e/TchJx2qQ9cSnrVDQhL+XA0Ugco4o
	 Exg7WVedWq+ZvNBsHhCCzZa6tP6bjTH2d4GgKOWPL5yGcaJemLusyQXv8Hz0JhBAyS
	 icjGIxD74Jf5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F806C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786239357.12022.7018770870137940693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121ca4cfd1f6e2bd6707d5fcc054a6e6483ae25897aa34a2d77b1c347dd4f26e
Date: Wed, 21 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747862393
