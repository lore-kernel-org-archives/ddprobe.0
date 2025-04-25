Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B6420C000
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745617194; cv=none; b=EzLhZAbm/C1jDinqPXnT7BE+PsfazwBz6OrYiryxCPmB+mNxeb6viQSMcthFzt79u5IpZ5H4RxyFRpsbuVN39fcG8nNEOp+s0orYAXZlCNgqj/gnfapwSesv2A9P7Pla0yx6an2wTmQu1e0fmQC5XGtSkunTK3dgGCeMZ+Xio4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745617194; c=relaxed/simple;
	bh=neWG/DFc3jlM6kukL9Erc67B9hx7z+KqIGlcLfpYSNU=;
	h=To:Subject:From:Message-Id:Date; b=t10z6Wm48/PhUrv9n1MNzKK+tES2TCEB+dTNLtZKrTXhpL/QfvnDSjK9Tzj1ddViCV4ztC/EdRu9MjMzHGCyOGr1wSdUFLoQH8yScYtvAzkM6pEzjJcmhGv2vpH35xGq1BHWxe8yNPphvOv3+zUSbuINKhTEU0lQO7DvLsnVWbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6PB4MtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6PB4MtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06EEC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745617193;
	bh=neWG/DFc3jlM6kukL9Erc67B9hx7z+KqIGlcLfpYSNU=;
	h=To:Subject:From:Date:From;
	b=d6PB4MtLbBNCF99AP6L4aNfQbhykUo5DkW41j97NoGKI2oX0Xcpy6Crn/Qr16oGNi
	 hZnZoEzelqLovIG0kwS1f/xXTrJ2S47KJYvFrxbkwYJMuAUHFDueFy1h7XI82lDt3W
	 kD1g+E6lbWLbiuqx1EWVlHAXuf0tuWJW+0aBfFjhFxF00AKcIzO+umUva9HcpvYHYQ
	 TPJHNIrhhWT6T/OorKJdN9/vwkdWsJtZIQrqvddUamFzMIpvWUKV6AcwXMIVKyTbHT
	 A/P5LlyN0tb5AafDnoF+40uzBvTTIpgARznov/Dk2o3T6zAQ+ILBN9KCUcUddqg3NZ
	 Ffcqq2yqM7Hww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2A2C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561719357.10359.9533976955562148254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b6a90137a0e9a49b840845f11e08707c060b566ee3009e6e15e6ca0e24eacb
Date: Fri, 25 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745617193
