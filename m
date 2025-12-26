Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3406B18DB01
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766741034; cv=none; b=BhwHYhk8Mb4pC7mFBhqMhQQRWzqihmCcrkwtJpP1hz5rkmtiHyYq1J4eSl0GT4Nxy3s26MOPe/XQCGU9+XrwfEoagpZiBz9uu5fNamqAPrANDxNxs9nAc2enK3UL3Jr1Xh1gy62ThQmMHaXSZltV9kZzxQuYV3LA+5UUlRZPHBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766741034; c=relaxed/simple;
	bh=LPc7SmK2Cg7EzXRdenYuLku7dPl7tRhjOrxuTuXFEp4=;
	h=To:Subject:From:Message-Id:Date; b=bV23kwS1GsvlDY4Mp3ysce4Y3QQdqxNxfQfT5Iu+iNTRLCvP0HmhzXShcQT9YopSHcI+KZnq4hGWHqwjVRNosOH+Jnxa0r9SCsHAKuselqlIZGkNHWOStbH2uML01JsN5ituYjrQs1nNGKJv1rbAjQkUFF46T0CR6ojZvXiH2mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFmmedYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFmmedYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D416C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766741033;
	bh=LPc7SmK2Cg7EzXRdenYuLku7dPl7tRhjOrxuTuXFEp4=;
	h=To:Subject:From:Date:From;
	b=PFmmedYuVqXX+zLTwBsvN4N4+z4JsBLO8hIhIkOuxLDymLGrDXsJZMK5aCgyqIL4W
	 OSQmpFCoFm01FEUwSmb3tclZoEhKbtFoiJopr73OyRTTdB/mNeSgNdKFh0XGbNaMwM
	 qMANwirZS8p5qvOCZxr5i5/2YTMvwavbOPBYmoQZlObAdwMAksJcTtq3FmN39Bo2HE
	 Suxm+i9pP54qE0CDZuZb45p86gAz0J93HhnDV61c2+d+ppuqu7960q13Kh9khpWZXK
	 2k3LmOOMUjFXcjScmhy3DNJR5DjBPIKuUr/lUKfCgvXE48rq1eM0H37SoIZt6/45UT
	 OAWXfk5wQkdoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4DE8FDA5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674103358.8450.16050284921524950600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b36d4d0c4bf952ab8a630190288f86692c4e69e3c2615dd372fae8cfe56c889d
Date: Fri, 26 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766741033
