Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E1A1459FA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769282634; cv=none; b=uDSwzdo5ip6x5g9nDbR36h2LD3y2xLEBDlB4Y4SG90/8PrJtQVkykr/EPiQQpkbOqGFfy7h3zvJoWHfPY6/jI0UGpeefJyi2+MRgcTxOU7DPbh7TWchTqeBaI1FBn9QDHCcR3mAd3zAPaOMeXMH0VsDK44xoTPhnvhQVv8Biiag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769282634; c=relaxed/simple;
	bh=nMdekmlLGhFomncFtgsauyNnicmeCj8fjD+2837tMnI=;
	h=To:Subject:From:Message-Id:Date; b=EXoFIvzBvriHNfKj3FHTdsQ6JqMgAPS4u9p8gMLjEVkI6VphKf57wbkZQUpDg93qtEU3vr90F8e8z/3vk/sr9B6zTMUOTF2e+OrwWgA1Zzhu7sZK8L0dF9wjZVvaOyRGg7UCSO2a2tqJ7ELCJFC6wDPETlwoIWCcmx2J5tJW37g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5jjkK/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5jjkK/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BE1C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769282633;
	bh=nMdekmlLGhFomncFtgsauyNnicmeCj8fjD+2837tMnI=;
	h=To:Subject:From:Date:From;
	b=E5jjkK/Uv8WAim1e3ZWgUOmWt7daInCvlSL6sK8O5fX4d/rs6WdF1KUvwYVkieqmV
	 q18wPlc153YJ2EPdl7Dj/Jr6G/i0LonpzQUC1QIJvhOK/ijPDVi9jjTISDqHvY4r67
	 2fI0szZ9X1HgqqEo6okZE7mJeHKAQPg5AINzu7EXHCKcZtzWJmhqzyOCa6adQMzghZ
	 sizZklPIVMotPU8NPJAP6u7KSXuIpd4s0++ofvzPIabHUZu4TsvBuUaeWwp0c3axjO
	 N1Gver2/id2niKD03yyC8xl7qNlitsVxssssqM4APWGoVwweLAuW+wroahQXjPWbV3
	 izQSZjh9MJBNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBD0D715E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928263363.3314.15149046573712379990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7aaab7ca1d8da1a2a09dcec14356b9860f19ae161be53f5e1aa701148c68ad
Date: Sat, 24 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769282633
