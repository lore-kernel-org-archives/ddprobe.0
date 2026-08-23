Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F67E23EAA6
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787525434; cv=none; b=aeKAsrMqQRkCAivLt5gpMrjECQyw0Y71rOc1UPGgiCicKOBmNQiTj4j8Gl1gYxT/+W2P8h/R1O5vK9O6OomUGZI4w5PBnMytg9KX+uz2tlzpOTK147ejcGTW4jg0H4uD/yI+kvoBnCR6zu9tmZljqMH4XHEiS07oaTCJWtT7MBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787525434; c=relaxed/simple;
	bh=bb9h1JvuLKwaVelf2X6TvGB5Xe4CgcvNpOi773KsPs0=;
	h=To:Subject:From:Message-Id:Date; b=LNJxNmfM7HLbu9GrDfKoWIZwoSNjkdLVPsQUYA+IzAoEPKQskySo4ohud3ZFLucYf6ueVeaG3BC+oT7s4sYWxpOLbCp344Zq++v503ltxZS5k8L3jeFvZyvEm6GvFGA3A/knEctbzyUz7D56shuC5wYJK3vNoyrLkgdZmVYaScg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itg9Qre6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itg9Qre6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36E5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787525433;
	bh=bb9h1JvuLKwaVelf2X6TvGB5Xe4CgcvNpOi773KsPs0=;
	h=To:Subject:From:Date:From;
	b=itg9Qre6eGlZ1VNWCUe4B5CYE7NlVFjTZEKfX91aVE0XkJ8UecNdwMuhVZRFBOqUg
	 na3EDAEDkeOEJK5r1O71dv5/6MPBtxAuZ3QP9Op/nHiDQsYYoyUvo8EkXLOUDF6sK3
	 VsxbsQ2g1kKUuAafUfzkRTU3iDdP9HUhsmE70J8L1ZnSN9+wBVHdBPYcr5q1qp5dlV
	 gR6PdKjASgYbIu6Zs0C0ZYx1o6jVPBXdOA7z75UMkz7+OFjp1hzeoIc4W1XrS2dRZA
	 ePfO0rk+4OSEMnTyGZeHV0V9ZMOuEGaJm0Z4yczImlZvdUeE2oVsccngYC/0It2UXR
	 G7JcZcji4GVLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBDEC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752543368.29790.18421889619048034911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f40a8f90bf63637310fc281d7ec84325b8666c93d1afc4b0d332aa1ff815819
Date: Sun, 23 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787525433
