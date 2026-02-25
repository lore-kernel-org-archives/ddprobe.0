Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DF73793A1
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772061294; cv=none; b=B0H7WMOnhKeFtw/AVAqsOJYaw6d3y+gNIxNsac8uPEYRfrBO7Ywwj4I85T4fwGCTbvUs7eiClF0nHAjB3tcGuM4Tnx+pbJ8a1xplrLJ8B8WMt8OEtpfOV033KzK+1X9InNyoYtLhKdfm3dtNkoWLzvME7ASeK+Gv2eYoGrMEtTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772061294; c=relaxed/simple;
	bh=YBnatYOKgVRW7Mw2hik8hIhobk5Fw/Uel75rhm3ZO9A=;
	h=To:Subject:From:Message-Id:Date; b=e5gkD3M5h6s8SHAdjoCD3V2x9Shmy76JXbY7Q2O24JeYWVWA6sxNzu3tJZCx19Y66VsGJaN+wB8Nfbzrwq/EmcWwC86x//KPGD4WqnnMBdbfeOCnSPQ933hZCwmeviEI/ON46h6r+WyYU4GrqQJqW3MWr6DgY/o1hPgJFai3pU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCuv4zqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCuv4zqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE90C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772061293;
	bh=YBnatYOKgVRW7Mw2hik8hIhobk5Fw/Uel75rhm3ZO9A=;
	h=To:Subject:From:Date:From;
	b=jCuv4zqeNXX5CtmwQuZk8RewPfnYanEKmQ7pwewk3tU3Bgwvh2FgsB8RrcD5KSiqi
	 phaMkZqyhSClPcO02mqxC36hWStGcz5rrswgn+X9vSXMY2AtEnMBU4iOIyXmVHrt3m
	 RhjcZ9zG6YKx8KM0pxu/OTZew4NYFNan3T2qE1hrPdRdUsF/wQWUwbAxQ57Eh2ZNRI
	 P71gpNgCvWcw0oWNDuVaLrkLowIVGqk4iKnWE/2CRi7GAzPqSATPl+m2VuqMJbJVrD
	 rtNNk5jeceiBiuSx5znbBCm0YkVOXorvAR1WpkA/1tSV9ed0nX6+jf1G7bOQByyhrn
	 JtWgi4uJ38NVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A29FFD45F9
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206129360.26452.4390940623298636106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff43db95e193cfab564d247ec0f2957d2d1d325e7b61112b4bd0951bf7e928fb
Date: Wed, 25 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772061293
