Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1B62E400
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721564754; cv=none; b=M1PuHfWDfCVWQc9L6CmWe51HHWPhI95rRV1PxmbPSwkrhGWJw/uFpiMUgVLiC3Aakhc7YiTknrcMIzZlJ2b2Y7UkxnZi6bJv1/3/8HCZ5WLoeK8GLwW1fzRzAZI+pDMVP7lArwlegV8fPGnq1XuJljXgaTSch+ep7g264y37maQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721564754; c=relaxed/simple;
	bh=tueAf1skIHnogVaYG7OC1f4MMSkHX23GMmyMTDrOvPk=;
	h=To:Subject:From:Message-Id:Date; b=u5SLriVj/YkbEjtqVyY60RUYpl2LmeIaXudiUHU+pVrujYNkbqKX4OUukKpqNgdhQtVIarpLxr01Hy2q/eMguLb9gE8UbFVTtuqwgS+g533wJRsCXMvBdG8ukKFXz+dz3Jz+l70nuHcxf5cBDjvlTCgdJNRsJSW8LaAUY4Gbjpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPABQp7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPABQp7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF089C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721564753;
	bh=tueAf1skIHnogVaYG7OC1f4MMSkHX23GMmyMTDrOvPk=;
	h=To:Subject:From:Date:From;
	b=vPABQp7MN3bIXeEBUOfCKXtku4szCmcjtPciHfYcFyNIwWkNRy+xTa81YRLmSEYKS
	 DrqbHHt8Iuy3BnyClgVvJjKhfFe5Jf5Avb/TxeIDwqqNsZGxM7rsvGY60l6y1jPWRH
	 oKAmqevxrslgmoWUzxSaoAimE+QvvR87z8+pB+03GiX88+h5pDETVI5AvhWId8ftIW
	 rmdhC62xAmgSLGMwH+CXGOUYofNsiwANZO+NjYT5yWcSI+m/yh5t2/fK7ctXgVFME+
	 QVzPCfe5tphqk4XQ8P+C6msSU8Iq45yRPBZVcpEC5iuO8f/2ewHFKvoN0KBpo1SdRc
	 yKXcwtEvYGLyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79B5C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172156475364.8095.4207874437145468593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcdf7d5f6897737dec267ebf0d03c197671656ded6b60db4f6992cf36cab6e2
Date: Sun, 21 Jul 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721564753
