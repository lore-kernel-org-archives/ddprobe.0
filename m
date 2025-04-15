Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B391F09AF
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744742994; cv=none; b=GVvRJ3DBoOGyF4TjnJ7BL1CcGSjmfrXNuIax39xssTVSkc7QVqRO5Y0EMmYSV6v0gfkjmzeLiM1EBvGtqC3FcJgpstpHa1E7Sj/Ls4FvSXWBKOV72CdKC0+h8fWWB/UFTaoU2g0jW+HsmmYDIKSfEr7oeWO/0ZsVrof9FN2CvL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744742994; c=relaxed/simple;
	bh=5hsMv23UL/D3VAgx9GMmbmuBAKNbl8mHrXVzMONm38E=;
	h=To:Subject:From:Message-Id:Date; b=N6uoz8/rOCwNxyuTxySh9hEqRXG99/41hS4OPkm4UpZuQDvZ/ajc1PBg55BgALhifeX1sHvrNjHX0FoFovbGqXXw24Wg7vK+ihMj5PNwKQiwvSykv/naXPBF7x4rN7p6q1WXsYXGkVFs1Z6d9kMyLYt5qSoJd1ml3yWWWD5X7bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwJtd559; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwJtd559"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7684C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744742993;
	bh=5hsMv23UL/D3VAgx9GMmbmuBAKNbl8mHrXVzMONm38E=;
	h=To:Subject:From:Date:From;
	b=JwJtd559kr1f0YD6GXqgCiIpnwzmbhSGtGI3C5bzOQx5ihY8eot47fQKqFJTLVc84
	 6+Mad5BK8VfI44Hkk+mKRbh++w06nezeOwc77R2zAV+LI7tw8bQy+tKdiDJtgE7SVm
	 QHo9o2ALaO3tsEgLkUeS1Y92B9r3T9psCjH5zEsoPj/rfpdPsdw8CpqqCZV4KimcMp
	 Yo6q2XunIBjnOra0B9otqyKJgRAMetFY55EH8QeowKF0enzUFdY2eArHPezMuyQn4v
	 zTOPW3UkqWYjRvFkCY2sIdJi3nArvaui/fv5pvSdDy8rVivRiAQ7Ey8oInGomBQunc
	 U5C+McIbgSP/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93705C369BA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474299359.524.7491090968036271356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d046c17a3e724b8a81d56ee576e16bfdba8e3360b05e9b6eb91fa9430a0f240f
Date: Tue, 15 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744742993
