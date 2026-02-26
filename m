Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4C633343B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772141094; cv=none; b=s0d5YVDitR4QXTxX3YLvbJyD9m54McVwpZ5/gSh/g+YKhzzHzrRfqqDI/bL8unAf/e9Bi3zY1GVSHIOtvUa3wYKXbHXZrQf0rYWdCCVByIvi82gJxdObklhqNIIp6a/vawZveOlYoZwnPdptfORST3QCxPSqF/cyWEOmf+5fY1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772141094; c=relaxed/simple;
	bh=OtqXONPd13YV+7J9f2Wks+5GmZSovYv5NpJUpG/gqgk=;
	h=To:Subject:From:Message-Id:Date; b=NFTAEO0s3HGfM7Ie2VI/hYb0Y+8BqS3rWkJ6JL2scGXTfsZ75gC0AAFKr+IAwHUqmH5Uh4MOQ7VjLoyPUr5iyv1OgjPuB6YswT3AhUgHMgYTe7gl1BfAo4ZIzcpaOMSLQZO0/bKeoP+ecEbaJsSV0tmfCAyNTdmIMlcNXBPUtwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFtMnco2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFtMnco2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60B9C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772141093;
	bh=OtqXONPd13YV+7J9f2Wks+5GmZSovYv5NpJUpG/gqgk=;
	h=To:Subject:From:Date:From;
	b=mFtMnco2aEZUEatUCfVxcy7iCcLBwK0YkqOl+NlRzYXP/hX1dq75yLYCYQWH8jnkA
	 Skubs6AyVqxjlUWYPM2lq5gUs3tXK4XXLcgKqlOkjI9/wh+vhu6XSK7SpKUdfxP5xc
	 BvTgQ64LwJP3GtWBmgajtq9NMRkG3f/FixJPIi+Eg2r2j+J9qFU+I+jnGS7ILN9i3q
	 b+qhYwtP0sQp74IBQeDcjMVRDihsHRRYRkf0eMOuHP6z8K+Dj/tceyAY+iyU9mFNdv
	 uKSUKAytLOiW4zajMkr5Pksad/OW+75M1SNaFXPskIoV/RzPS3AuF8rEMvw6o6xXnU
	 4ix3d6Zx/o0Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D55FD9E12
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214109359.3673.10307410913571686461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3538d08bb7e63e5664b413e457cf0777cb82ae5fe394645d6b82d0da601074e8
Date: Thu, 26 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772141093
