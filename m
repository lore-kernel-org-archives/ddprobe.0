Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D53B395240
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781330194; cv=none; b=gtt1wADppxQ3ofDjGZCac6EApNWjeN4wAx7cUQ0DC372cRP5fuu4wNsB8mNrrT+b1iFIdjKL619/2qcGv8s3nnDNFv9Za9IM2lL+p/namO4pLJNEs7JFalUEp/obsDCfQJtA4i4exxHjjtvIYCc+wRNlVY4mgb23ITr1N4uxdOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781330194; c=relaxed/simple;
	bh=NSbNtFmtn+gO2hGdw7gajsJnPmuJcPnx26ejNseNBdk=;
	h=To:Subject:From:Message-Id:Date; b=GhP/frTzSTEnSB8Yfoe9UqA9fW4HCQYwCSbFtWVIuL92I4K+lT1um2zr77r0RPI79deuDK7VVVsZbY8nC+v17Gxu2y88TAga20HudMRlOpivav5VtB4NEUxhyN1MBds2VSIVv1ufVjH4hl4bJrUvDDvPCbH9Jb26uc3F1jATqTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+AOWI/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+AOWI/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9723C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781330193;
	bh=NSbNtFmtn+gO2hGdw7gajsJnPmuJcPnx26ejNseNBdk=;
	h=To:Subject:From:Date:From;
	b=B+AOWI/+38l32GcacZU/9d8wWY16GoDQ+XkbCwh9njCZbPRY6zR4w1O2KaqNJjDrv
	 oY7Nl4GFPIAwmAUH4dstnQTswLowr1O/soh9XNTe5Kc3GCXM/eTiqBcG563doYPgBw
	 8wP3vf33/grh3Y0L59eMF0yDfg33F+X93MXv59tMWosN/eh6Cqfj+TreZAVFjehnJe
	 ugW3La4GSk/+Z5JDJTdLuF1AhcrGoDfNGCD+n4UTty0YwGTq3NSwmdc0fcPwR6ueVR
	 f5fcMy6IYJe0N8Vrpx20EX5Znt4kYq7upRhMuD/M9Ld766bbw0Zq0i837mnFrClNTh
	 PDnMfTSrTb8mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4B8CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133019368.9546.1291063060910034596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651cee2aad86bed8cccbe42b97143b31affa85aad0d6aed67d389d5326aa0ecc
Date: Sat, 13 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781330193
