Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0361933DEF9
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774065294; cv=none; b=CNhDvc4+3twC81SxrE3qGH3l/XciDMKhvxNFDAZnljzRfXmEgRFzuLnuWQtQYksmDrRgNss4QC4iIgGuCRE5mq6YwSkIm42XO+dTTvHFcFNvmYTmzvzyS/n+khJbw8UMqDrDmpXbGOH5QqEoeALHucB53WzbzGGfV48OKpXrgK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774065294; c=relaxed/simple;
	bh=1DSgl80DUI6MofrI9o3o+PAi2+Iw0MrE5/GXIL0ilcQ=;
	h=To:Subject:From:Message-Id:Date; b=drESbwZE087HqhTKiaJhg/M8JFl1ZlF4411Tfc2Puhp++6sciR2D2LzT2On1u/b5m4Ph/CFFLAJ6dy7jsYbqX+K86VYX1M5mEzqv3xfTibFJJtinvRWGZrQfcZldSSkZrba95O3O1A6+hyfTHCR8pQ662PakDrIwZYPNFypzxRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvxG+j63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvxG+j63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A0C19425
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774065293;
	bh=1DSgl80DUI6MofrI9o3o+PAi2+Iw0MrE5/GXIL0ilcQ=;
	h=To:Subject:From:Date:From;
	b=TvxG+j63CmWlnmGE+d7WZgA9JkvrePayO5p6VxCRFhl3QVZHbDtG4nrZH3S/v7FEd
	 l3fK+aFVPeF7YZvEQmurFxEao9GBLpsDzHh62TAOogh+P1ljPa2azS8DtD7kIKk2Ts
	 T4DqCPSUlhKhK02ESMks0yKwmUh4HCdfad/GO7+I5OG3crLiQaTrDPBQecUF8vK2n8
	 LhWaOOd7hx+JBlMKCMfv43tRzrrgbmhAnn21hF+oRc7d9ObHuuPTgKqZs1KryNi5eB
	 matNYASBMzfcCXN6UlKGbN6wPQRVuPGrh+CBxyC3byIU8hnclDJty2Y2EO4s/2uaOi
	 R3dVAraWPk+6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA6108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406529357.19299.6638652629239707378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434b8fae8fcaac95e107086a1d370c2157c672b590c9b526e4351ad9f4cf43cb
Date: Sat, 21 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774065293
