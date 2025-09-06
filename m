Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1591C84A1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757145594; cv=none; b=UAhZGO4KT3EpcdQ1+xm+way0oxtFlwsZoQAJJjZtOA1Csr0iMk73b7LpUYn91aAS8UOfQfEGy9z887YaO5cgniiNUcH9iC0brHoTDDWS/QYYJ4OP8TtH0KoKAxs+BAEFDUNRQpPm+5vkkFAfIKTKsFBuMRy4IBj9L2urRIAmBLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757145594; c=relaxed/simple;
	bh=1XVRieNtvQb7KyHMj0Xl2bKpaW2xGSFJjyX3ZSMn3L8=;
	h=To:Subject:From:Message-Id:Date; b=SdaY61T6ViYxSroPtD5dlrgYRt04m02YMfEvu1xR4wl/mJeujrsqfua8yqVJpJSTAWEXr5MHa7U8Yc5xib4BO2ZW2lifdst/iXIhObpkbdRHLkUiBVR4yGXd6Twr8xqIp5c6eGZvDzkWy4iAaubbBEg1YvOJmFt3eeiC8I6OFaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZdJagrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZdJagrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757145593;
	bh=1XVRieNtvQb7KyHMj0Xl2bKpaW2xGSFJjyX3ZSMn3L8=;
	h=To:Subject:From:Date:From;
	b=DZdJagrAorO+PXerqtnBJHOvmvx3lo9mSinBm6HYPiVWvnm5GgJNqS5KjybqZ/y31
	 akul8u+oWCLC0DmNxGcJDv4vgj0XHGSifCJMgeTHzII4PLGIOD81ZOx6g16rvlBqze
	 4rkdBAA4vAEyYoTTIgdmwr8N6GJP8lpZ3bjmllVi3lxvDn3rgeXkdOD+uAnmUB4u1Z
	 RiNhZWNPl7Hs4UVG+dBFCPbwi3MX9njbB+UOmLJ2KAKHDyc3ZErrEwXL3LFFisjtW/
	 aDx9VI3KrejCfHvvj1rkzA+T0UdQWSasSvZ4akwA002V4rxeiluKB7Tk//7m4h0Dw+
	 8toL44+yFu/yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94516CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714559358.10469.11362998525003809961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3a14c0c9f2b678bd8c633cf608975d1f22c43a86a408d3b9ae36ce290e0e8f
Date: Sat, 06 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757145593
