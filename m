Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3685D1D54D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730146554; cv=none; b=nq3WuFNLlV9L8morkdvmRJTTQCmIfxoJPCvWljiHyAzomdvT8xFOuyjN/x+jHDtwvDvp5iNpRO7JxZIFkzPgV3iF4UBsAEF0I0/czLZ6I4dZfNT/FdC5uLDXFs0OE+Myd/JBJhdVZ5d2jU4lUJqsJTmntqukRoJq3XO58CmF24o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730146554; c=relaxed/simple;
	bh=VwL9Y+0G0TfBboptvtofJ7ezBCTW+xYsKlMmc8s0/Os=;
	h=To:Subject:From:Message-Id:Date; b=sTqRN2JGdSSi02N/l6D34y0UwHq86MJboErOSovhE+ucndrkV4eimrX2MkKoUqQ4RF135KTgPSGwt1z/gOkIXwHr4qeBquOZqY2k1hEqZsRlpfTT0wtCMKe+j/Z6TX7mitJJTgSP91Zj2squq6ji4BseLS/6GsgX/QLuwX3mj1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdnFpdmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdnFpdmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D4BC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730146553;
	bh=VwL9Y+0G0TfBboptvtofJ7ezBCTW+xYsKlMmc8s0/Os=;
	h=To:Subject:From:Date:From;
	b=pdnFpdmIiO360so5spdag8ghMlifWO2xOh/7o30oL2ZII+tsyVqXeKyRWH3PQYOPV
	 2HblSZ2AtEeKjemc0+W5ieaBo+KIZ3ivhw1+4nMbI7TffXJscFJK/s+FR008/Awwa/
	 bilbtt7j7TR/6H3B2UFkePL03nPGeWpBgTWdXggptu/CmnUVSmOQ5kVwguDr7T40qG
	 rJhuaP17tSTl/KK6+5Uv5jx5tgvJMQ/yJ5tu3cLRQOjIdJczyig4JLYUPpLmg7tc3D
	 /M81pMu5/opFYYkXTQiUi+r4lZGwVmZZOrJpK5E0TrIN6F3Nx9xOdZrMubMCR6JnK9
	 j8dXTYTEEQ2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9330ED5B144
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173014655359.22281.8818177998706557357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d0c81a7c57d0a79b37e5ce58ff12cb92fea7419c3623b661dd71db2a1801ac
Date: Mon, 28 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730146553
