Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE1922370A
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787656834; cv=none; b=FsEH8X12zy1bKfLVOhJ4Q2nNdYeG4P85mfp70XLucbPTOHWXgdfccmONMv+ul1/9O6mmUs4R8VdOLH7c8rnGECtPMqlKX/ecUEvRExM8oIX1t5eRmPPvADb2vvi1EIOD4U3atX/5I77SC0xpI3s5/A34AH7KTX+lRJ3D7RfoCRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787656834; c=relaxed/simple;
	bh=XeT+F57TFKhxcv1xw7h5s+DvhP54PkVZ2IEhliHtj+E=;
	h=To:Subject:From:Message-Id:Date; b=QZqavk/3sBm+PGRAzJIE/zVnfg4c2sPkyRykO2ABxkgWbqmlBlA2+k4Z0VHdiZv4iUAyg5hvSjhkrDaisIz94++hy4m1xVvEqyVt0ODOn5JwpyZ/cWFBiZf8SaUhehXUq0KvOfr1p3CTQxtmrBVoxoxx1whOtEs5tMvceQH/zw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGIF5clY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGIF5clY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD51CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787656833;
	bh=XeT+F57TFKhxcv1xw7h5s+DvhP54PkVZ2IEhliHtj+E=;
	h=To:Subject:From:Date:From;
	b=qGIF5clYtfmrCDwdr0Az+tP+ymUBVrBAFvfjHR5ydyVl12n90PX8FBHm385rLEbl9
	 eAITE5+/k7Qh9D/uz6/5EvGrhseE+PwJQJEy1pnhp9Oc64picxCuikUYB00leZel4s
	 iYnuPeCyOdppf0JTMx087s9F9NEuM02VcK/iqXWXQvrHqlAEr8Dv6vvKgXBqZCySzw
	 LIj1bOHstCITyG4o6XIG2NMOnoxr7NebVR601pJvAARkv4THO3/xwBP8jsKm4/2M/4
	 HOBqd2FZU7O9eORmpQYiShXMsarHpucml6NjbwmLzVRT198W7f5qj0pffgAgBwf6/c
	 E0wWi39jxInfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA44FC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765683368.23737.15446138236562597951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720dc9668bcddb5628958a8b88c81b1f197522d9a288142cb35d656d96ec2561
Date: Tue, 25 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787656833
