Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5FD77F15
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712062097; cv=none; b=MmODZJtaVPA5sc2tqY1CuitDbbuYAkgpT0GMpmG3xueAC7YuWgrzIw3+NfIxf6EKwY1On6WyFJXTTuOEaNqefZKHmdeZm4lTWOHYOxsBLCbnxqEM2i63akZcW6TeAF3gF8uw/VzfpQHRys2+jZHmxZgcp/JP0Ha57pfqGVRsv/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712062097; c=relaxed/simple;
	bh=OzvUVqFlZN9JFKTEPKvPIdZr9lJYQdl06Yp74PIxECo=;
	h=To:Subject:From:Message-Id:Date; b=Nv4Mtf+rYUNTRUkLXX71Vesk807/KAKj+egU/chHFOqofMYyo1KvdHLad8aSPVkZGvppEF4EpIVFAVDUPUJqqEx38s2GNc+O9Zw3XHZCD23nP+WIO2Z9lFc8NHP/INXi8KrfdchJTSXEK8lNfSL3aDhEc/RAlEHZB+/4VmfqqdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONpuhOyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONpuhOyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762ACC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712062096;
	bh=OzvUVqFlZN9JFKTEPKvPIdZr9lJYQdl06Yp74PIxECo=;
	h=To:Subject:From:Date:From;
	b=ONpuhOyY74JvHg+R3SOv/fWciCW594+9jHSVRR12r9HGCtFQSU5Sryv4lEA7vBStz
	 rKyc6KBuq1O3ce5P9TweradZ8F+6nukmH/Pvlzc3gY+SFplzmJ0E2QS8/6M2GWRgv0
	 kR5ayAxZW/LAL/huCHFtV/IbCoJ9KtS6wk8dcLcUTj3YZO88tr95POiMoq7VhcazWp
	 55+5r4CEW6eXCWW6V+O/4xtaXhQpUyZ/qinWAXUWzkgJSkxGAYoGI5zkV6FTORcqfV
	 4iAjMTjwmqfh7rFVPgeCGT45vOS5irsu+k6CSvI5z7n/IerwYQAS03pxUC/ZuyfrS5
	 /liSYpJ4e8V/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6228BCD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171206209639.18807.2793884365504484364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce87bf81d7fe8ffea6aba8b7a1ab6a79fde0da470bbf235dae0738bc545f7ca8
Date: Tue, 02 Apr 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712062096
