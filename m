Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FA030149F
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779901354; cv=none; b=jAuigUJ96uzmg3Cwh2JfNcEzyr56x5WoQR1onvUpjAlMzazTTprYQyWuK0WqK56s/33weEftXmHIy5v1AQeSp1Py+Nmx1mAkBFPcV7f0l0NKKp7arRlDYom10Xhi5XaRHAH96Jk3+I1z/1Km3+eZY/EU1zCHv8GWBu93pe8FmeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779901354; c=relaxed/simple;
	bh=17zvlZhGnUpo50LXkdOVuhk9THCKw+Afzx2oUk2yuYY=;
	h=To:Subject:From:Message-Id:Date; b=rL3L+tXlGtUAYmxgeuAdOAFQPF/o6YyS4UaX53QDBxNuOtnGkUh5BenuY25x5tVM8/TNV/V0TmfMCDdxlotyAfytsG7RkNqA6UXdr1paRWUZHqwtXZmimQH/Oyhb4tFQKmkRqLgqvgbFF5NDejHrhsBgSYs6OJHxgxTZSP2sKt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHkMRuFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHkMRuFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51AEC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779901353;
	bh=17zvlZhGnUpo50LXkdOVuhk9THCKw+Afzx2oUk2yuYY=;
	h=To:Subject:From:Date:From;
	b=pHkMRuFI4aMC+46isZmepTNIYMCsOuPay+ob1nURSJ2VYhfUyxsFUjTwNAUKDUnaI
	 gNZ3dHVshyihLWofbg3Ho8u7oZs6nmUv2rK2N/UJzPSfFUrKXh1hosENsCJJIJ8/7y
	 nFsUKrGrTOWv6ScL4wwUFPqq/D4VP7w9Zq87o68xzU14ykqsVOE4+t73CHo26z0jUh
	 l0zIR7TzS3TPwe5RX4YhUgh6eA1oxW5Fiuo4ogauP2ku9P9lO+lp40Yb+VcCCuQ7WP
	 EUgZZgAxzKTgnlD1sJA5FF2HTROM8oBzJEM/IJIht/EomOwqVSO3MLm54KJf/gDI5U
	 f0Rc2jdjkJ0aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7E2CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990135369.25009.3784485634394952242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e51e7592707f2de37583792da8b2e74b1733809dfc441c54070b9013e8f36e
Date: Wed, 27 May 2026 17:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779901353
