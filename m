Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DCC226CF4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746826195; cv=none; b=RNx+zUmIctHkKB3+JqCnOKjsx79omUq0R9Sk9gCY4IMGTuF5399tyKxil1fRtjcTjZCZ3C/Mk9MaMbuj6HmN+xjxxXsq8WajZRMwzfk/ko5H6rYaPa28yF4zdS84Sxjr7ks4miSppaFxR/ZhPZNmd1bTBQpxWp2pHlXnsYasG5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746826195; c=relaxed/simple;
	bh=5iaU+PhG96dZr9QzKHHBVQae2aKhXAtVrO+dER6Z1Ek=;
	h=To:Subject:From:Message-Id:Date; b=KvQW6q/5sr9qMr50JB8bo7QeZruSuCruHGT7SB8FPwXxaq2twix5xSEyQpODJrYAFVQpvZe/EYxkhZxnlyZRrwh5uSwO3rSvM6xvWT1BvAEHQL30g/XFXMEWuET7s+570FyGcZUgr/V4oO5DlmTjkm+DiLCYKWDN+GAXCfpEzgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQpeYCJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQpeYCJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D997C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746826193;
	bh=5iaU+PhG96dZr9QzKHHBVQae2aKhXAtVrO+dER6Z1Ek=;
	h=To:Subject:From:Date:From;
	b=pQpeYCJ/geWd1h0GGXUZSbpFC8BVyYPvrIDKYYMrVUg4TdtDUbLu/5jqI9V+l96LI
	 ZBT2iJKP3lowQtYDHN8rSF33hiwjrt8D3QP2w4x4n9Di88rfI4ZTlydBMDdHx+mLAH
	 5P9Ie9IhzbBV5J01cOFef90/CSO9NciaWRrStVns3JrEviI/dmet8G86Z8rXF7zKS2
	 8wVU1y9PgapnR6BJxHNW4EyM43Vr1S3fr7HxlXtW/nGghPOStq8ZPuphCE0/kQ/xiL
	 Gf0qwVlZeYy6P8sGRnEZtoyKPQb64R6EFR4CreFgCkMOULsaqjVeKbjLselStVHJPO
	 V8xQItzG4I9iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB42C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682619357.26410.17728287990642089169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74f2f1d406af324e59a8591d690c0d52e383b03658f6800525511b061322426
Date: Fri, 09 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746826193
