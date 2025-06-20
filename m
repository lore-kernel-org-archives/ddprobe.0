Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1D028DB59
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750426193; cv=none; b=SZC1su1X0ghm+WJMzQwMenO+ZnHGJN2Uq5t9wV2xtY8RDhXV3pO2ZdqR5GVRl5fLIoyykXAwPHxtyILZAqRtbvZwl7VYqB2TlaxStnTgXZ0houMM+A4/DlchNq8nkJM4HN/3s2gauct7+u1nJDjOMjzzhV8JyZ1qoPo74NCYyo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750426193; c=relaxed/simple;
	bh=F/bIOpkKjFx4lcbuzlnURHTNWByfXLakL7r729LeB6g=;
	h=To:Subject:From:Message-Id:Date; b=H4dnufimZ4NOYBxLvqnPMEeLNeI1wbcsKS+nd1LEVAubXHltYkKidNOnJXo5pJ9HS51la40rrsNoNN8laPFwj83He41loeyQirVZi7e8eCUgAl/CI0Ta0W/oJY+bHTLpvVWXcmoUjE3A8sz7EYgSPqbIKqM3QNyrXAuGHHqn4m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRpOpYdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRpOpYdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A268DC4CEF3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750426193;
	bh=F/bIOpkKjFx4lcbuzlnURHTNWByfXLakL7r729LeB6g=;
	h=To:Subject:From:Date:From;
	b=sRpOpYdNm0X+ku59/RJUYUd9sJ6A3uVlNLe3XyhSNnhqehIdnjdNEm1nT2mtvoG8i
	 Sif5Oa+Pa/SZbyhKm/P383sSZObe65Gve4TGChEoOmfOyGIRmBpuXNRjiS+Qr8zOux
	 khPc41zRjmgELgFxYa0yWbSFQMfaMBwJOTCUeych8zk2q3ls5VmNkR5C32crSpwpL2
	 V3r2I7FQMsIQCvqMJeMM/QkjsBl6S91OcBDQbw8iM3euF27/3J3cwqETrtrCq3OaVK
	 gLbUv6I5pgEEBSgDl8y0SLweu+Fa19l9oQaNT/kfBZWRLYdcNQy7D9R+845e+aof6R
	 pf56T2arkUSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F469C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042619357.4422.14902776242723997147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492c6b5a15e3c4c0eb1d5d740977e1e7dff853c76ea6a3eecf7266fa03b2afa9
Date: Fri, 20 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750426193
