Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DED1346A1D
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756214994; cv=none; b=ONtHm1YAxEhtVO8brfa+80HjJf2WPfMmDZq/ZDEr+wkPU34C8/Q0rHBDtn75aZojpfFeq5Hn3TkQpbbeqBtbpO3GOOBkxkqiLiMfsxr+5/HkDvIBdRQ/Bjthqer0mKuGaWCDDNIML4IV0Ja18x3CsxekMX7kT/s3WKOOfnBTKnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756214994; c=relaxed/simple;
	bh=UfvwLe963vz6Rw8oYTkziWDEaRlhkPNkYNtSthbHSr8=;
	h=To:Subject:From:Message-Id:Date; b=WCXk94K8tHM7P8WG3V/Fu5exM/YoTBP9AnoynNOO7d2+mNX9tnLKNnkfjh9Hw/cg0Pu2bRoidHUoY4onuj1JnVxJkhN+EkqVnMxqGwhsIvMS9SuY5pvlvLrmWrCfvyOQ5+lQVM19EduEaPJ7T4I+LTKLhqxcCx4M0o/YRAbZlDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPtWsx2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPtWsx2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0334C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756214993;
	bh=UfvwLe963vz6Rw8oYTkziWDEaRlhkPNkYNtSthbHSr8=;
	h=To:Subject:From:Date:From;
	b=pPtWsx2d1ovzSzLHtPd3yHMSqadZrX4tzUf/T/Bn03MuRGKxR09vcNaQq+xxBEmsr
	 Y3Qxj3npHQNPWUWInAtsMtIHmemFUFilzox4ob/dRQY0/B5KX2Zzq/7R+J6RZ/Iy5/
	 BKSof7RmPHns57hY9LEF0VE12Xr5VHhAW/+kxgkSNzPpF0HmFu0TZcC5SHKtFi/kS6
	 SFqvwXNuu9Av91cdngcaVsmsxg3VGo5zHJmKBGNzPVjgFuEfCnsKciNxAEFJiJeUw8
	 AEbkxNRyczA8vsSg0W4miawZLwCgE1esC3qr7CwPFj/xc44/P0fYLedWrnKMNWZsgl
	 J/R+JeVjJB3pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DCCCA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621499358.26542.3305290828699721256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db3a5d24a163f88c184ae160c0248b94d908cadb1af5841b3ecb4c94dc9e655
Date: Tue, 26 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756214993
