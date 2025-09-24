Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418C63148C4
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758733194; cv=none; b=FTNUdWCLOMiKuGvTNM6NMEQkRGbB79iMw5Svw/YfX4UGt0wHwfDanlmCqLXfl1WOlKIEDPTnsnzzvTAFxYn9o+s8UP0GvhgVVPqnuCeyN5uZIpv+HRctBoP0zgUgIMAJD62Hn0ihzNBvKvpzYc0R54lW2bhR8mEgjSaKMH0/SLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758733194; c=relaxed/simple;
	bh=dTjwCzk0bvoFA/Nwwgy6NS4c3C5EGDfFsTDtGwtZNQk=;
	h=To:Subject:From:Message-Id:Date; b=OxLnwPT3dqGGn4iRY45KIq6PVqU0V3oeDb197qxa/Wd1+hUIkRibs/0XduiaWgK3zoHosOlBaQMjDIripUykSahhEZNtrpH1iHZluGqwntVbieH4WbLJ5UZ5bS+so+gb/Ar9lSpb2mU/Aqolywv0penUugYjApUfr2AQocZhIM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDZ8NzlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDZ8NzlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8837C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758733193;
	bh=dTjwCzk0bvoFA/Nwwgy6NS4c3C5EGDfFsTDtGwtZNQk=;
	h=To:Subject:From:Date:From;
	b=VDZ8NzlBvz/EZV0j1BdK/qcmw5SK11riIJPO8epaSOdrW52C5+9Eo1sUJLBmy41e/
	 1HEu5pV1RaqXbhIj0tWHlf9RtzQfxs1K/iQcxItxQcSOBylrivMqMSztqVx8xTxThr
	 PGPOab7tqmYmI3PD/9A5cPoiWdOrWO8hZLOVTo+TB9Yoq2wWO2k1LNORq5vRrXHraG
	 gPuVmImen2TLilnEQXjsRAytKaQHsaYcfziRadxyX7CWlc5s8IaftCJVuXADLMlbCF
	 N+OOV4EFELuPlC4WUzXY3d/tsLhSc00wqzG71cPxow1zZHM2vxYzOYdQO+pxMFgHf0
	 E1QgEk3ynVMwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E0CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873319358.12276.12439522449651240139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1b998cb9c9a82f56c1b29aed1c49fe0cc4f1141f522e7e1f267b1771a71566
Date: Wed, 24 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758733193
