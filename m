Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8304037F324
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792030234; cv=none; b=HI8Se+vdnUOM7I8T876OeitFx3sd0MRnp6Oxt639hxRURwMzHHKt9fTja3OG05neVJzbDjuhyghUwjpGz5/qevTigBt7muiDQ2gie6fFGsW/ul2hpzOSMFEy3ew3iYx2GMWAEPQrNWt4LGEBIEJcSy64p6JJjIZ0MDsbHdc+8tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792030234; c=relaxed/simple;
	bh=i8Bn9jEW/l9Kj+6vN/9EHXjZjwGMzatbkmT6GfkEpUc=;
	h=To:Subject:From:Message-Id:Date; b=L8Gwb625gHjuOa7XSFJiOAt+OHKCtpdNiZyaz2bqm5r5rYV7lBxB5dnJZ6HjfZIcKJBvRxl7+EXUcNVXr5KQwu6mgYfFnU+LPDfvRJbcx5B7ylt3f9X/2zq8cRL6oha6nckf3RiPicFotiHW8u0/M4V+29vvEy6DuwMRPjRzKtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQMZrlDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQMZrlDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FB0C2BCF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792030233;
	bh=i8Bn9jEW/l9Kj+6vN/9EHXjZjwGMzatbkmT6GfkEpUc=;
	h=To:Subject:From:Date:From;
	b=hQMZrlDM1a43cm4D29IgWzQnRe/eONuAgu9e6Iiev9H2VSdjPTLwYkWYGN1Hgo7Wk
	 RxlnUCzNTg6ZJH2FGqBazLKGGxlzil4vyiGHb8dfgD0cG2Vo5FV91r7BnD1y9BQrLS
	 8HpGcdFSdYNoyOrBcrRpdAsbigaPb65mscYIm6xFA6lGbb8nEEyRuRIAsHB0zukl9i
	 79P2gYFmXTbKTZkk7ZFLPRrI2veQEV/FlXuiLfX83CRe0A2OqDJS0sUDumebPgcj/R
	 AD4TLE51WIjHn25GKN0MrcUqko27WoY5f2Vc6Q8ZrQb7UBzM2iZarJVoqdjZY54DwC
	 fUprbdOu1B3VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ACBCC6B30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203023371.21390.1409982680853195811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd151442a470f88df3d59d29d0e95ecbb4dd2ba6332702a02e33dd31b5fed07
Date: Thu, 15 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792030233
