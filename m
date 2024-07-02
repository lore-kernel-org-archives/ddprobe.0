Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0C6148311
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719907523; cv=none; b=jW7W9HjQf6/yBgVBFb8vL20BlklZxtdJ8wEBqFOeCu0K0FKOkG7CPpvyINXRprrSZJWYXoZFAbo7o0XUAei689OPQhHcPgRZhHtXY/7z4b9pgK0GecPju+aBYL1t9D8bPG4LhtK0jOX6YxiE5/Os/ztVtpu6oDUJHLyV99ULf1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719907523; c=relaxed/simple;
	bh=V78m65qFqkAtfdzg8OXjeqt8e6LzRZego8/CeSHLUIY=;
	h=To:Subject:From:Message-Id:Date; b=EYO3Gy+qqGorBtdEchmXaWdH7vWctAZocYoEDEUI/2Q3+3hnU+XVG3yFhntoDofuAywONy+HmQfFXdITgY/zHL6p6y8wkBSHZIATpEBKQ8UQAlgrM+3ZZOU3P0B6/h7gfsje/m5Vax66uhTUV2elbyMEqd+fr0sLd7iv9IY+X7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFCffwaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFCffwaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E952CC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719907522;
	bh=V78m65qFqkAtfdzg8OXjeqt8e6LzRZego8/CeSHLUIY=;
	h=To:Subject:From:Date:From;
	b=kFCffwaz0XgnndQRias+gs75E3CTwAKoqYfMnnDuB87mNRh5ufA/antMFfX7BWAn6
	 JQm0RgRDtUuR5278nplJpbYWRmJyQpnGJeG+cbrGzI3MoLGG7ATEOdqQuzwcsQJuad
	 YZDbB9QIovWaXkh2VRGYhRXPG/YyYmTNiC+b3nTY/C2fdLmsekAnQlyEtav3fLa894
	 2VRYMMexUp3oqAezv0qIhUhr/F4aCNaihTivGa5yhyxzqOJdXHAq8SWWuxjN4kDWBz
	 nxVrYLKITqvh4fAwjHEfVW2gRHMobfz3OLwtW+wLMHqypb/emxzmU9m7Sd34AG7yyq
	 pv5093qCqLqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2429C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990752285.23575.620064936609214127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd292d0f49d060c9949f544723dcaa3eeaf6e29acbdec4b9a442adba038d0690
Date: Tue, 02 Jul 2024 08:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719907522
