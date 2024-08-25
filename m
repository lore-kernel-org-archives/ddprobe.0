Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E81116BE1E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724609154; cv=none; b=Xx7Yut4FyIvmDedJKVB6ooomwGgOP8zolBIEZ0/G3HBSVb4X6MMFvx0PIyOMsd4K7ac1drnRDxa2i/VWrE70ylf9UnQCQWOLpPquCLD3jioXc1kV2rEWbreJf3CXaJQ486sEPex4bDtI87ZYavRd5mD3eZ3mj4mXRXpCohA0dPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724609154; c=relaxed/simple;
	bh=p8TODIitE1rhhqc2YEgjnjON5Hqg70pwzPiWB6aTVLs=;
	h=To:Subject:From:Message-Id:Date; b=Q0cH/j4LLWoLYSvBUVpVRgJbcJwit1ptPmcCkKZ0agTA0izgmX2BX1i0eVvGmlTDGC0BiYttUov10RuBEkHgnCNKzoztUsXPkgKyQUg6LeC92Fjdw/tqynW59CQZtj4dYgRYiz13GbvCjKEDl2vExh1yVbAJk8xNIJlDx9Sexqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4rwpeLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4rwpeLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADED1C4AF12
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724609153;
	bh=p8TODIitE1rhhqc2YEgjnjON5Hqg70pwzPiWB6aTVLs=;
	h=To:Subject:From:Date:From;
	b=h4rwpeLiibUuxjgKg477bm6maSR8xE+jNWyoUICVjJxa4S6DeLB10+RROnBzmJFWw
	 KTfhEkJ9cI0ZIp7YcS6VY7aKcOLvU6SLZ1pGhUU99uTds13CZFY/lYZHMmd5tM4o2t
	 YaFJh8P/OmXCUcHwUWmSHzzifBpI9KkwEktmqGk3JLPLo/i+9ZARbDB4XlyYy6M0XD
	 F6sDIUTU3XgVlLZ1Q8G78zUlfjdo1OWEFAe2dCI6So8yiaJRlH9ebRm3TvS0ii2dbQ
	 GUK+tZT6YfWVvvvknRDIBdqgoeqK2hxVKAsZZtBytrBWr//qgPV75Gshk8+o71laCY
	 fReGk2fEOanYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1EDC5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460915361.31711.16051061746496645423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ab57fa134d3d42b00175a320cac22355fd509ca4043f614444c267099e0abe
Date: Sun, 25 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724609153
