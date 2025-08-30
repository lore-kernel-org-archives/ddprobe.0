Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC6A1E3DF8
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756531794; cv=none; b=TpOKztc4u2iFsaacsnB6TL4Xp4FlHeT0VY920O9RjVUeNqno8DKiG30SYTuZZRZYWqaZTqZ68Xyj3myLKwdhsCVqPjFFMNeK7pPuFSSVqGD2++6M5lACXDUAQxudHIvdm3uF8NEG4dsVI4V4jUZwnHcIwrV9h9v++ql5+EYPECE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756531794; c=relaxed/simple;
	bh=lSOU8W8Ks8s78aWuWMN5ss7d87j6eFhbl4JIfqXrKYc=;
	h=To:Subject:From:Message-Id:Date; b=AqQxDLW3WyN5KCzq1QvPHjqeAGJNNgfiP1GfXhTJ5ZD4SJEKwqX6BtI2eMkfiZrpqwVtkE0UZ2K6Susq3MEd8W2Tyn3+dO+y+cnDj4zhu2zjdmz7gux9rNB+B1U4WuOb3DXxMs/2HLzHBCDoHdHqfFDobmKNPcfkZeK8+qahT0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfIfEXUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfIfEXUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756531793;
	bh=lSOU8W8Ks8s78aWuWMN5ss7d87j6eFhbl4JIfqXrKYc=;
	h=To:Subject:From:Date:From;
	b=lfIfEXUWO2FwNoINsI9fBDp90Tc33V9LeuiwCjdzMNgZYlfkzmLqLmm/sLshlbIE1
	 IrHSXAuPC7NuWXQusLcK4E/P6inzv7VRnP7nRXN853oLaCxsSQnX0n3dodz12EEUEO
	 r9YTYXtdD/Pft4hiBI3MRvhsXKdbxPKIb0Q0B6ZoMGb9U10jA4i94Ts4iNJ0ped7Oj
	 y+1L7oSaCh0rZNIkxI6eBO5ydcSuAW9NQ20FJQcyf/gfxYNTSINi+yy3kjKl/bnKDP
	 B2iB1Ky10AQucVrv8s8v772qznr47O+9NSRJ2ALxgqMh4F6yjKLJd5pWktD+4AxfLA
	 J3j8PzRDpQLDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91880CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653179357.17034.17116846171420563056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cf768c10a976ab1aeeb90e5ac1b9473f86570137eef35344a65e799926b6d5
Date: Sat, 30 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756531793
