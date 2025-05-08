Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E115179A7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746701994; cv=none; b=LwyGDIg5Z3YSmlyOk9QAmQ3Wlj9fBCi0bas5+UTNpB4xj2Bm0RCAMMrJuD/Jn98GEy6l46QPIn2itPpMRsjgSTe4ENUGwiMP4ew3ZKLCO17BC9ZfrQYcI9cdixkQ80HmYMz2ytDMA24s1rtEyOGh36V4K/2ZGc0kMlNWanv0rLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746701994; c=relaxed/simple;
	bh=14D4KPNizvR6Od4NZrhpX7VSi9z/ljvq8zf1+y7lxxM=;
	h=To:Subject:From:Message-Id:Date; b=cBU7bpePEz5g/dkjqHuLE/tYIbCrgVcOjMh7JVNZvFItEeOPAsRZA0PleKKoYOuZDPcMxtAdIE0oV2+ixicSiQ/QfAtGoL+XBUJKCXcRuxpWT1HvMRCQod9BXgqcAZafALTvin2PHOcN11JZM1zzGDOaS+IavHuKiWXzIb8pg8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnWmo40l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnWmo40l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0719C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746701993;
	bh=14D4KPNizvR6Od4NZrhpX7VSi9z/ljvq8zf1+y7lxxM=;
	h=To:Subject:From:Date:From;
	b=JnWmo40lBYh66sL3dLy6bCrZJ5RfatAg9TPIRm4XgN+fg6qZfExqVymkPeELzqzve
	 dgGdTz/MsYK86HcLmYM4CPUcQxor4DnLybd+CNTzkLPKkcEpuk25AE4h/6z83dSsuu
	 M2Zl7rABCicwP8zt1ok5S+HeNgsXDdz1ZafOf38LHB+0jQaOzxXEWH8wOh5Uo9aMmi
	 zil0VDjbp790Tv7ddcjct07bcC3O8kynbaOPbuxCUGXC7RVJbxl7w9gNIIQ8HncBgw
	 T6PQ4qSNu5SIcMs/rDLqKgGWYe1gkGKaseME+5No0QyLGsM1x1p0TZ2jskoJ017BBJ
	 y7o3vHzvwbBbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3B2C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670199357.3524.5501486488178656899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35bee6f39ce7dbc88d380d4a62ee70c9cfe77f30ff87e87310c91eb56c725e2e
Date: Thu, 08 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746701993
