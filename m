Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670FE7E58C
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718877623; cv=none; b=N9vTJO4mOSVMp2WZiJXTnleKFLllvQwwdC9o+SXFL3Ie0DwYSpuaDH9LQckqjNoQ9dV21bnzBDsn+AiLYPiRvDEGfjGn+sfZQLcpgRelYK9GS3bJHBPn2WfkA6uYWrEZwqWrE5rKixbALnzvyPH+9qWr2l7swD9fxj10+Qz/L0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718877623; c=relaxed/simple;
	bh=xFYR6Vkiy5lpGQPwusxO9UX6wThUxo5jbcBq6KHwGLY=;
	h=To:Subject:From:Message-Id:Date; b=ZoS7lZOwbPOlp24QYVvxF61yZEbwOcZBVWVhOpokmDQHLDc62E5bx2mFBc7lFVDx3KI/dneXXaz0VP9q3V3bxXlYUYzcf5O+LU9reRJymIYyISdxEY1LsM4REnqokdJAHmBvHICOJAwXIw3Eo4jNqLEcki5k/jEAJPFyVY81a+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHEbDiXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHEbDiXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA23C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718877622;
	bh=xFYR6Vkiy5lpGQPwusxO9UX6wThUxo5jbcBq6KHwGLY=;
	h=To:Subject:From:Date:From;
	b=oHEbDiXtibPOdspmMhJdvq609Y2Q6avxwRuIkcqhC5gGLV0YT0VyQtcz3C/bnBB/9
	 vZMbIgi7nTv8soUPqQahKAirAbVI5pfDSjsefuFH86RSUVjVmTdLgHOud9lsr+LhAM
	 HSWGSIwCGrVxx3h+Gdsu7qWXUaZHt8naLTi2BfgSVqOwqWsIAlD+BQHhaDp0FHM5L3
	 tJYFPFIESY950Q4CMNGjuqgKxiWMJJrZItzqFZGK17AdXeccnewt3zkJKollXZhESG
	 ErVpqbrd/qYSyR9rJ9r25nI14DlvrFXDl+ur8pzat5Lo6j8BKYrzGu/2FwRkDq3Eoj
	 qD4m3kjWx7eHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBF2C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887762276.29682.182400546135871357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca66e75633ba94f1f6aa490513b85a4414e14e2d0abf02242115a05e9735b69
Date: Thu, 20 Jun 2024 10:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718877622
