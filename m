Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064E837F007
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773140094; cv=none; b=ENMgqTn/SxN13oVQLDkK2iBlSVgVPT1DpQqFmZNCziSaRcgs885PVPjF1OJAb59fthcWvWwUz3k887xdRi4iSMh7wR6rDsI1pt1ItI7d0unv5NWQaAY+8b+Hde4SN6yjzFo0Ool5lh/Alf8NngWcmbESDeDLChAiZdZhBv18PHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773140094; c=relaxed/simple;
	bh=iR1kVfdB+awrOo4/SJ3gcb5yl9OAGbbILjmuItEi8fY=;
	h=To:Subject:From:Message-Id:Date; b=ma8G55cfCMflxCTk6Ca2+ciBsOko6AXt6KAFF+Nz9wbNqi35qALEf4Add+3sKeA649pwYfufW+9Bot7TdCObhwNvVRZbE+zn08J0VBpnKY1ctFkorgN87DPxfc9INSePMpoBZVHoqKWSdQPDHdUxked/2uFEKDvOEdGVY5FuDIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gv1Xj3rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gv1Xj3rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA6FC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773140093;
	bh=iR1kVfdB+awrOo4/SJ3gcb5yl9OAGbbILjmuItEi8fY=;
	h=To:Subject:From:Date:From;
	b=Gv1Xj3rJ7+fh54D+CvAZg3bCWOwi1231SQQgvFBnUIGobuF1nzRmE9eTEfhw4tBJ2
	 9IDVKjxGSdxIur5qEUW2BYQC/4PejzU6XlsPVU4H9rxHpF3oO8Xsx0DpIOqdQjX61B
	 VRi814fpnJyNR6Bk5MlH9GOrBgyWYTWQqO0AkFJPm+Cz2lhhwuEMBg7G+G8yMok5JZ
	 Shoe4eOWavEH5Gu2HKM6wbUolGlXbsZ7zn4QwphhSb3GwASIXgZHi36Xr/qsFdpRUA
	 /9ZAn2kwI0BJOdpo13EvZ3TIApGKOThyhbiKFXfm11kz4Xr395PtTfJuMtwrw/X3OY
	 K38/3UPocKCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC7EB1043
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314009357.10992.15222536100702361822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9849aaccd96eeb2c33f23b0aced5fc613dd830b4c41f1c94514b1c57d38d1e
Date: Tue, 10 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773140093
