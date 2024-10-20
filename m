Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F0C440C
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729463754; cv=none; b=Hfjs/n8Tggx59RlPhcY6h145eKiR8qREfDkQCUAi214fvUtppW5SCKrAo+wGTSxgLi+o2MKGI2gbZv2kloQ5fuGETTJT8oWiu5GvJAqura4WRW+sxdCU8ScG1f/I5aHiNQ4nN+ANWlaj9hGZdFlSqGlgbeVUmD3Xzch9oW1nVgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729463754; c=relaxed/simple;
	bh=/2ld0lvcLEITg79FGO8QhGF3U3N6d590A5oA/U2NxJA=;
	h=To:Subject:From:Message-Id:Date; b=u43pxObyORSAEQF9/YjnrBEkOdBoxdxeHynyu7ECkstIuEPonYhXv0EB8doV0EUiM+7pr9YE5VMsqUi+/UEnkzPjeD41n4VO05k0uFeSVQdHePNBI3/JJFqEnOiTKJyTmE/AT/e3K7wXgyeA1jr56Zzaoj8ADA3bYwGbJ4XDDs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7E2MfsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7E2MfsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19DFC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729463753;
	bh=/2ld0lvcLEITg79FGO8QhGF3U3N6d590A5oA/U2NxJA=;
	h=To:Subject:From:Date:From;
	b=F7E2MfsLPL9BE4PgnpQYDJ2Ird+U9Q3f0e/CoPH0uKJCXeqhtecQKgK0QHvFrF17i
	 s1cnzq1bUdVkAudGC1IeAjN4+NGaQ0Jktc1ZHSUbzgb+9qBkLM+MElGlaqdlPdyoZg
	 RPzALBy5kqwjv561DYOstSSqpmu95KNSYuWYOdm1LMryLlVJgbhaZCy4LY8b3+XQ4k
	 2WX2WAZ4Rs5WyI+ut+xMMHQ+tx4hHLWrYCJUexml1SrD/cG35Ayqbh+92WwdbSzl08
	 mjPGqwzzk9WP6hsAtF9kEOSqFZ3MQWxMOKrtUL2VgWe/JaIb6EOkEuWxoZexbIYj8n
	 xTG4CowID05ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C639D3C935
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172946375360.6221.14518389686257419609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac44c0bf1917439a7bbfe4aba24edc62414e503502815ff84644f97d5cdf41d
Date: Sun, 20 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729463753
