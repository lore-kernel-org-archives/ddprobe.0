Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DAF38AC64
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791389434; cv=none; b=g92Cah9l+C06UjB6/GMWoYO+JWvA524MwIfztymcdS57VB65W/5Yj43azO5B4bsH+1LaGqz60zWtca8spxxy/rA7DEd2Spms8WaI4te0RStWJZ6XUxU/xZf/cog/h33hjeMpXM10BxZ/O03E4Yz7Rd283HUdGQ7BlG6a8ryvsCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791389434; c=relaxed/simple;
	bh=MzSN/G1zs/9d0FPicE01bkNJh2boJtyZ3ReCgP/OMww=;
	h=To:Subject:From:Message-Id:Date; b=uXq2yfuH+D3+x4oRuzw29mlcAbCY013AXtG5xZxoZD3JeAW/Uf/t1yTrYLVRibtLnuNsEmEZK3E3EAfGLoZOPfgMDmDr43MzBhZtKq72BkJ71P2dDPEUF/07geype3cG6HVKWWjuEy92Hv/Ml1SdPp3Kqn80B9vyAPu+AmcF0VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSGBzpJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSGBzpJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17CCC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791389433;
	bh=MzSN/G1zs/9d0FPicE01bkNJh2boJtyZ3ReCgP/OMww=;
	h=To:Subject:From:Date:From;
	b=tSGBzpJVRWgMrERF+XmCY1d6w11V1EKy5WI0JBKANfhLQc1a78qm/ShCSiWRqvnoj
	 moo9wQykHRhy2NLyFSoFvH3jiMF29IiZTfPYprYzeXIu5/+iSFUFfDSpygcYB8GgFn
	 JCbeNGIX8EEEi5S3U6MVOaj0cini4Dm2whI7qp/369FhyB+gxVW+UxqeevHU1wp54A
	 Cc1JJ57Fmx9Gwi4VGo5QsqMVdZh8duR7IyUqFSOeA+GYI7icUE1YNS79l5Es8ciKxF
	 ulPL8Lx+kqzgrIhh1QpL1Il8Yfvm9vrczEBlY9NEcu+b9ei+9G1GYu/Ui1inlWMWiA
	 9W7fbJo3Sismg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C58CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138943368.11836.5275884869855816962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622f69d4a402e7d567c4326523b921c3f5030ddc3510ac689a5b3db4324b58c8
Date: Wed, 07 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791389433
