Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3478A27470
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765053174; cv=none; b=rh22HS7rZg8+iRkkEWrm20yAbH7RdQ/rC/kmNlX4vaufuRLJx+QksA8RmRfkr+yY2rXKg0zT0wCBG0H8YKiRH7jl1YzQ37fX4O4u0y04kvaztdJQTY7N/PlWE3GatKEDFbDyFOETb9fhP2RqlZ6XSIwr3euVWs3sIGkvf8v11gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765053174; c=relaxed/simple;
	bh=5xO2cq0Qyw8gX2dEkyd68jV1j9dj91GgtYCra0tCx0I=;
	h=To:Subject:From:Message-Id:Date; b=rw5ny8tMhKOqh0e6Pperi2tkEK4yDs7jmS/s6DNePdTh9T4cTmVl7OBESFSbFzZdn3tBtdA2g9b1cqnhoeoGsRfbBynT30dFwZC8Hh/JA2kRncWfHE8tTu81ZtL6BTPPaM3G8Dmxs7Fa9DsAZQ5zoPNA517yq0EubcXZ6mVfWkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqGzRU99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqGzRU99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA06C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765053173;
	bh=5xO2cq0Qyw8gX2dEkyd68jV1j9dj91GgtYCra0tCx0I=;
	h=To:Subject:From:Date:From;
	b=cqGzRU99D765/xhPp96NrjwS2uZwx920vS7D9VRORlydC62BwMztMsOTK8juJXRIx
	 duW9jh2pyEUfXbXbv+Z5RjNk7x2JcEY8iY26o0U4UVo5CcWdJlGCLEQvYf+Bck9m+k
	 y7JN+eau1knjfjyu8LHYJqA7WI6RHH8HMHqE1PnZGEQFVpILf6Cp2AXxk0qk7l8T/8
	 rSRKavcoAK065vIlptOSSJP5gN1bGLW++eKxeo79tN80kMMBMfp3SkO3hdL+rRDuCF
	 Hn0onEaueTWeWUHUbA4kaRivdm8sJv+4x/aoW4in0ujZPP3DyIC+7u1sZ1wIwkuiCp
	 zgovYcipJ/UJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C4D3B7D8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505317358.23463.2667614985970255860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828bfb09b9d771aad4f021c2bf3ec3b3cfe2015d52f0d02bffee893b4441817f
Date: Sat, 06 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765053173
