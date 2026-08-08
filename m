Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4981A30F80C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786152034; cv=none; b=L57YEY4iIRcWudyHMief0VC8ljd6r5GBBJxF3N5yfVOjMJR5mu00dTeb9WZUi0sxGJUdNWsaaGMP6Qb709Xz0LlS4VhLXMy76NuMKAyH1Lz/VsmIevmzOfABxERolztxayZyi/SFzV0/KoaZFjk0E2NZzxgC9dN3eUj2GHaBCiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786152034; c=relaxed/simple;
	bh=4TosKr9AWI4DhMHLUH4qIQiO+7L3WzspwZ84QetO++s=;
	h=To:Subject:From:Message-Id:Date; b=ncEA0G8SNNxKcwGJPBYAb/A8Ela0NyM8/YKvJnrw9wt+PmIS5kO5wqxzSiZet+E2WJCdgOSof6rVMcZt3cerVNUuseZeYn27AYAyPOb7fXd2D3DW1UWLkiCEjnCGn3Ky+ZFVyL7gGwSx6F5QCy/vT/W42jhH3X69yeedu9Il0j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCp/wyqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCp/wyqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93D5C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786152033;
	bh=4TosKr9AWI4DhMHLUH4qIQiO+7L3WzspwZ84QetO++s=;
	h=To:Subject:From:Date:From;
	b=VCp/wyqNcneY3UV6qB5oWZISv9MHzE7pepUY1uzWqkLu1/+x88wYFELpZ3wUzastM
	 XpYzsNTg62GtiBrwY8MEBa32sC/Hn4oVsFpd2gwrH8ST4njqMOlsxV16617FTlRUk5
	 cMRdiNINeXm7OQxkFQlKhcNHUCnNPvnsUTlHRRAroNWqwKiRqm8NcUw4hjo+scPikY
	 aH2IqJ6XgdR081slao8FY0nsDxFJMA4V0sFparyVTWBat1dzIVc60lhtGRfSBju8DE
	 pSjJKuvMt+wapk9QP6Zn92TvdjH1VQgfUvdMDruPTKvXHJ9h3164jyXDki00QVif4o
	 jrlPFZu1L4Kuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4D6C5AD05
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615203370.9072.4562489301637974538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98d6848b8cfbe1fcbff9aeffe47e4a5230d8d94b6e53615bee6124cf63c419d
Date: Sat, 08 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786152033
