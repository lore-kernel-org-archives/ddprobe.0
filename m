Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C271F94C
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713020963; cv=none; b=qsdErs8eyIYA6k5c4yfdY5Iq4izkYgRU/WioUpGiwwJaI+iGaBDjfRbu19dUZyCVJif5wPxRlDqgOBwswivRfApCbr5823ebft1TqO8sUTwI7U1DnAS1QI2Ey2cuyeVyKO4oagMhytVWF0PRwW7JSMBnkbFzrnYhnpenE5G32gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713020963; c=relaxed/simple;
	bh=9pCxTWFIj1OZbK2IWOidfeVpcT1r4ICa07sKOZG7FLM=;
	h=To:Subject:From:Message-Id:Date; b=WbfjtFsJ9ascFIgsptzhSp4K2fnzg+RE6yBefmQtG2FJpCGgkFJ+a1a1+G2thNaCH/J2ZHvC666uurbcaaXqIjUpms0JZSu0VrSOgPXfGW9qWGqf9KjyCklLKgyLf84EFnuPdFGzNUn0WnjBWz+f65wI95nnULYPpHxMGDtLzXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3WEldfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3WEldfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D233FC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713020962;
	bh=9pCxTWFIj1OZbK2IWOidfeVpcT1r4ICa07sKOZG7FLM=;
	h=To:Subject:From:Date:From;
	b=g3WEldfInMPEZEyZ4L8k12kgKOSVcNFoC8qHX2GXHJ+b7kYX+nWIxnfn4tmixouyK
	 fV3Yu/9AIluKnEH8iI49HiTCfX9EwbD90YhJkm7rfInyfGCL6uTWwtqwTIhVQg63EI
	 KkEeGaM1S2dHbLO6Y7lvdXLEvis++lPergsuCapujndHZ8qxK5WnZHWG8FWuLU1QoG
	 wAm8wGfiIuYTDd64HEorVv1q0v2BZHJfQulv1tG7l7vSMwYA70eVRLdh2XRQtpU7LQ
	 O2YhzTRRSqr5kC3UwsAnGzE2PxgFiu+oVpS+aF/9DJiaFdPMMYsAQPxxb7hmpQG0FO
	 Lh+SItfUaLfjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3961C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 15:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302096276.413.8153970631756623627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4a8be97a642fdffae707fd9bd864345da88406c7610d317baf7dec386c4894
Date: Sat, 13 Apr 2024 15:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713020962
