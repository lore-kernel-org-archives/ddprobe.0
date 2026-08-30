Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E001A9FBC
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788115234; cv=none; b=KnoVyBVtmwOcwvU/iP+Cg1sEFdP4VItyRb2sH/azdU5LJzPU5nBLZOojxHHnbGiWFmbC95LILAxrtRNYsHwkVWqkMtfPfi5vf/dO4tYG9bTN7JjJr7oiveE/N9V3HBJBCwQ4qUSP7UEoD5uayuvUbHqRVQfw+6Evn7zn+SQaoMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788115234; c=relaxed/simple;
	bh=0El13qQacxAyIhSHNUpxiu79BDS6Y29n7G0+fERiuSk=;
	h=To:Subject:From:Message-Id:Date; b=hal0sbwL6eQFgWwQ6qyCKZKelwk8VjrM5i5bzIboO26lWpKF1h+Z2vc435QXpp01oFPZCpAVeFfxvH3jf6s33cnDW4D9w1Id2Ao9Ydl1O5zm+yxLfjYDv0dCx2RudvIZR2QRkDCu+6VzJWnZuPMVSAqvgy6LRLmLF/aBy5D/9S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFqBZQIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFqBZQIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED9EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788115233;
	bh=0El13qQacxAyIhSHNUpxiu79BDS6Y29n7G0+fERiuSk=;
	h=To:Subject:From:Date:From;
	b=sFqBZQIw1OJ1uqiG97sM0azj05NbdfdOl/WAlpR47j04YWtQtKdYNmj8PEYzH7N63
	 tG9KENw3O6JkX6gfq+C5zzIA2tYyfiHQ6S01gJu8M65VOnnByic3o0TW5ErHQX9G5V
	 6wRH5lt4/OvxqiNPiXCubh4C6dtLVCHWDs4xvLFBxm/CdUjFXUTA5vd+Pgh2GUD70V
	 ABZiKqGlrS5VTogmWDseeYZT+lPo69w9lKlUBdZPCkaHQ8Vra1iUirsiF/OxGjVnbG
	 83pGYOGWVYP65VR25g9RF5JKG6EasrYpBCYV02w2cgRNB8biMvUYmCtuANJAzoUmk+
	 57DCsCn62sVig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75B8C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811523372.3077.5859639619121530929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca5b0e67b8c0ecbb91df47bca8b61410d3e2908d83ba1511b6e6ac9b388c5c3
Date: Sun, 30 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788115233
