Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3142576
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746968394; cv=none; b=au0Dt7fDSYEvazlSYcBWJL4gz3Nh7sWmhUdRoWRTbwIELSvyH+lZ4lZNLuJ2tRbTewfI8ouGG6zkdzEwad4VhfQ0KDVQXwaP+kZfXVJy7JskNHe7MmPVjQWPjEPXOp3lutju+yhmnxvpzMqiqIN6CtqtxdUQinPb5FoJMy0QkEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746968394; c=relaxed/simple;
	bh=HbdPQlKmsz706IUV7ZODU9haZ4HMkcu9nu69sYwgEfw=;
	h=To:Subject:From:Message-Id:Date; b=G0QVTwiRk3hSHqUDbUoN0PbadTMwYIWFro4HrS1pP/jXuLwuHc8cxE35VrUvXtZCMr7HP3nTbQA+7ps6HtPbZrzLhntPP87slxcX83+0pUGTSjfj7baekpvN1XACuc0X80AFIaKEDGOsHAgI3cQbqa28yrpYaTXIEjhH+c3HXpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAN5m8Zi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAN5m8Zi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A312EC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746968393;
	bh=HbdPQlKmsz706IUV7ZODU9haZ4HMkcu9nu69sYwgEfw=;
	h=To:Subject:From:Date:From;
	b=hAN5m8ZilvgwtSKTo2eMdg6NdkYECQDb8KZ8IlJQxYPqBCHyCFA91NHzQkqjDuTuv
	 ftlKJFeZKrEIPCTth5M3nd+8XT3Gz9AAK89K52froU3dhMEgaOjTAp5F5fnGZQHe1p
	 c8rGAbj0tDNnHaeO6Bmzj+P1Pj7Xlr50E+LiGFz7LqQrSsAJqDUjzShFwaXH6OX+xp
	 J+X+NNXfvuzdEh4vWyOb7G1jGKUOGn2HydioCNM9F5kGIPtJ3xNcg0d4aa+ms+ZPVs
	 AQRYfWOdN1ftiPITNrK3JQvCc+Xa+nTSVHIm0s8JoLVooAJw1Hf1v1Reb5KImk4lb3
	 b57H9PdiAhUKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92476C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696839358.25212.13433302234104085951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c076c550a117c01f3d7a14c0a48874cb467a26147c160742877d0161a6501ab2
Date: Sun, 11 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746968393
