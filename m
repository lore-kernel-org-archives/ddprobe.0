Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47100136347
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741056534; cv=none; b=Qy7V3zKi0sDg3Y+1LYaCRazbQYmthJkqsHq1BBdwQtFGHdFtarOyrctU/juuooMppHjmQZEDAqb49mi4J52q5Uw9LJ8YEgYky8uy+03uOmsAZhEyx9+TkNzB08qTNv0INM2nZqIw0wzEdHnsdqd6dg5wqW30cl0wVk7u/ieQ7x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741056534; c=relaxed/simple;
	bh=yYa0GVzyXjlNZa6LsOPn3DZkVlLkocE83RETLc7ZiYM=;
	h=To:Subject:From:Message-Id:Date; b=acr6rG5yEHcZBpd0VsT1EXSD3WAGguAxJUM7c6c3hUa3BuWYqkRNLiFPIJSLsuEV6LEcnIjPtWiIntMBQzpRMvvv+1A+Q2AlnchLljv4F9t1+j91bRgPSReCy2Qh/uw2Ds0NFEtMJ0esE5bak1+mdCOyVsq0fZfNxLqMEB0oHws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bp4vwpO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bp4vwpO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A32C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741056533;
	bh=yYa0GVzyXjlNZa6LsOPn3DZkVlLkocE83RETLc7ZiYM=;
	h=To:Subject:From:Date:From;
	b=Bp4vwpO6Q5nqQeb1j3gZlHFCuYjoCDa6PeC55er9elwm9IaUpLKeRDfoIEo5e5h46
	 yLGaX/hKvYQ+mDJdjwwsCBs2B6QDM8/K3j18+FSdE80BLOqOKXOqaFU6zzCcvwS5nS
	 hSltnWSJJA6WOLzJvnTTNBcElorSfWK+PPrkNWpD4JgD7lLBzh8PwuamA2x1xI5Jjk
	 glYLDmzEccFytR/D0zDb2marQsFoZS3ZK9pMrcGIcZWSkUBuQwAGrb+XRcL7gYa1Vu
	 6KvzR93CRTh01O+otQTd5H7ktiZB4bm2HF9aVr9fYlp7L8Z0BLT/zAnne84tgmOCtK
	 eGsoi5Lyiz1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A075DC282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105653362.8432.4567140033194246995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c558a0374ff28cb8f06c3f77cea24b4cfd061417aee56c8b03ce3169bcb0cc
Date: Tue, 04 Mar 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741056533
