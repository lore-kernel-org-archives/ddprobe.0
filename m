Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3872D19D07A
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787551834; cv=none; b=c8at9ZAZGELPeqNyHRpeuMtMog1Xv5UHm9IT3PxFWbtomeIhFhHhhRI9py9cr1id1eP9d1CKslsc2rXGLsi73TVWnMW5YfhhxHuY/DVN9eFelY0OlC9/H8RREN32tpz4OXeUEa6btTrsRbEUtwQAawj21HaIPTDRjG6GRY/7wsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787551834; c=relaxed/simple;
	bh=gifOuXaUvhcZ3nQZbQmBpjXp/o/zoyH0heRdQ1vteFU=;
	h=To:Subject:From:Message-Id:Date; b=nCuwqDFTgtatbA34v0lujxvlOsNHDl5POjsgAVao2bYl8hQ1OKJXZ0E9JLYfQpGin1UhjIrOUN0HztItr2dcL4YrHxVtHhtJ98RUfS6YAUFPLhKHEmKLi5I1qPDmuCkeRlUWpuBgSOaRvvtw+PFL8llvJFdtiVoMvi6GtDayxGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTo0JvQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTo0JvQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5470C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787551833;
	bh=gifOuXaUvhcZ3nQZbQmBpjXp/o/zoyH0heRdQ1vteFU=;
	h=To:Subject:From:Date:From;
	b=ZTo0JvQWdL+UGwKf7ufjJlb3jAHUR0imAiD5PYVqPgPlmn76ybHO9JBZ8Rx5Bimws
	 qvQdMKdYAOrceI0IHoXOogylfGKYOk2OgVRvu4E/CnIOGRziA7g1yyrJVkdGi7xgf6
	 9vzXhXXMhDknorRELp+H2aXLP42UPyHajgmU4v4s6bawS0y67/aByQbvee1N4cnc/K
	 /hxoQkcCbiY7rb7NoNFjJUEFO/Nt3jW8CxVh2g038lBLlQrHT53V3xIYGJDaqFCbGl
	 kud6tJr3nG6R3tycuFjSrcLNR5ZFlMsljYjifjio/8F5GwhdN2ltZjBj6jq13DYAsn
	 KCljhr5t6UE5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0948C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755183368.5201.2201229185679004078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ceff4649018adf15931e41899eb9664c60af84e42946ef8e0c19b8b2c2bff6
Date: Mon, 24 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787551833
