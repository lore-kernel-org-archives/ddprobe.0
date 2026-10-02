Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315DE47C0F2
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790938834; cv=none; b=YrGwtc74DuA4J92dHno4TMLk+fne6F9w/ygakh0yFlHx405IXYUaSt5ASCNIo1SgFtOgexJf4Xt+DyrT0uN5fkSxXj/+u6x+F/TUj7CeVGmLWgXYcf/wPmQAlcPCm+eiJcSNzLhPJKXVUbM17YInzbsJTp7UjMG2mO4EVVVlWas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790938834; c=relaxed/simple;
	bh=4aMvkhMYwNI8FXfaJZr8iBs9H89Kcox+8dTb4BzreHQ=;
	h=To:Subject:From:Message-Id:Date; b=dXcpQyiDH3r6qKhdlhkXIwi3s31CI44vDQ3HfbutC6Oih//b+js8mUDszDxPnz3PyHIVxRtiMIqAtqEHDJsUyQ0NJZ5aSIM3/ZkHmXrZiahy+sZ6eRwfA6cQh/kgXpMDKlpAuvOH9CnC3dMLtwoYYpgwO2ek3FoH5tGdjbF5tLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YY7oMdco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YY7oMdco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAA3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790938833;
	bh=4aMvkhMYwNI8FXfaJZr8iBs9H89Kcox+8dTb4BzreHQ=;
	h=To:Subject:From:Date:From;
	b=YY7oMdcoEV27SQsfaBZQYKpMwv/VZOOjfwlieX1R315FPUxel2dTlO5zGACVrdtt/
	 j7eUGhTidWIuejO95d2wsjnGRlln5KNb9Tn6pPGMuUXD/3eSYvF+mz5T9uw1q6HT8j
	 BylA22NV8aVyx3+GkHJ5fvnDYarorEfaoGGaRuAkAATHANxLAY8hseADRtPVfhKTu3
	 YYQjw6+4X9ervoob1NcHKTrBruLdOxd5sVNbJK705cuk9YvxfoxJQjUrde0paFk/z2
	 12PCJdtY/NUzbfWnRPRCNyi8LVRn5YxDvNI8+S5upuVANaTl7e66ULT4HdAp1zkQJX
	 sEnIlm0t68kDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B44CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093883368.16872.12314651854666255002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2dd208dccf7528d0992fff9646a671ce61691a90af795eabfad6f989e5750d
Date: Fri, 02 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790938833
