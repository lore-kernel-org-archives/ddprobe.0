Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AC23A1AC
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726776353; cv=none; b=AwAeBypzviv8Jz7x6QByFllON/AcHdRTBzVL2VNAoeZ8ONh/nIipGr1g2j/0/JF0tjpIQHhec/Qsy18ay/UxFTjMwRKdv5oXxrpT05yT928JBlxWVPTzeYELhjuty0J9UgVUmM30P/YPz5m7YXxrs/iUEwWDBZBsCYCQnH7ntT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726776353; c=relaxed/simple;
	bh=peGTm2ZC77vg9pRqEGltfAXkrODJzHJNBEqjG0YGqZg=;
	h=To:Subject:From:Message-Id:Date; b=ViMvZ/i1sFuUpTzEJxzCltmsYHZB/JO7phYJ0b8p4RpN/ba8FPhl76qzPAu+IwPJiXfMvlDdCNPzrBKMI9dfpOfzwfRnajdix3MVLLz6SlUCkQwYQaaA0WkMBEJ+zNfN1Nx75Lib8E4FD/h9RDqw4XzGLlbn9yDiW6GsKw63Oz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INadj/3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INadj/3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86A0C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726776353;
	bh=peGTm2ZC77vg9pRqEGltfAXkrODJzHJNBEqjG0YGqZg=;
	h=To:Subject:From:Date:From;
	b=INadj/3Wwqj83ljLGnUdym9W1N2AeGpEepDrBW5/HRFx7w4Wwo82gqV4Pyy6gBU8T
	 imlAp1kUyNoiNmuRMPOtdkQ/8RPNN47EJc4FId5x/NQp0Mvr3b+l80JFIguCH8w3mq
	 3VSO7J4jvpYSWWvNcTmjHBqR1Ft6xPF/+qcVh4CXENiWJjV3Ln4Un9bv7jLOF9yw6I
	 dbsJzlonBYPLqLW6uylSbaUxhRGZxCPsva7/0GssBRx9Y5dN/AyDRbRuppd5PoVHKp
	 e+EqbZc0DoJF683jfg2A5U/dezUoxJmgIegeJA+mDDnJJUmxOhwwD+fiIAdLICe1tR
	 K6XVclKitRNZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947D0CF3967
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677635359.12318.8298491623953448555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fd6763331b15529f12ce81af9d7dd914d98c96d3893945efa2f8b14be953de
Date: Thu, 19 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726776353
