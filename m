Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FF6346FAB
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770566634; cv=none; b=RB9zo22glHsjISMPMv2MpEYflnDb1K4g6cbKmAF/FTfoA0lWCOrulajLJM6UqIjd6D/WJBWsjxwFgp36vPwXAsJpU3BAWj3pY9KkF2273zrORCeDSuUvKqV/SubZLroxa+roRsl5ChD/tDnaPHoxpSofcmTnnq2BCkSRDZ8SoNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770566634; c=relaxed/simple;
	bh=P0WLgtH38tuXVfum0zyRQWriL79IY5Qvksw7hWiY9T0=;
	h=To:Subject:From:Message-Id:Date; b=cAkMel1XY2jt3vV+lzgl9pUxKP6QWvgwZIjcDXEqmtM/DLJUguYMwxIQ9OvDVT2Z5zmj+afo+NKDpwLHnt6qG5V1DGVnekmt2+hVyatHXAW4dS2S8E9LDGOtykSXQ6ylHWqLWpW+fLbVN9ZrZddePN4+YhO/VOQvoFE2V9howAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+zwiymE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+zwiymE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B124CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770566633;
	bh=P0WLgtH38tuXVfum0zyRQWriL79IY5Qvksw7hWiY9T0=;
	h=To:Subject:From:Date:From;
	b=P+zwiymEQ+Y9MLbMw64vyMefxAyQEIddiKSEII5ZE0/YzRJqNAVIk/guAsbz4sPat
	 CO2Pkv4QKEH9YUv3nS5a1tSqhESk8Vuj4WhO3ZS9Q88z5ndB5mbxyMRqXW9hltN0Yi
	 uF/CIFJFMN/VRN6Xs4xSvJTC5CLjb6yidPkwUAd9BbiG3M1aCrzbGnN1SV2kuhPSRv
	 y18mXG/76FwMsxuChhD+CrGrT0ieLW399a2zRAIClc/3l7y+5Rrg2olgAsijlM5OeL
	 r4AseJ/0co9+V24JxGPWC64fvOrD/rLBFREb4vGaAt0n2gs8MBxPgKDtbugdfZKGri
	 x/7IXO1Y1dFTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D713EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056663360.10906.3705267191696533314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99b3954a8d29a6b0a815af947d9ed647677f869069da9da7bd45cba9aef675a
Date: Sun, 08 Feb 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770566633
