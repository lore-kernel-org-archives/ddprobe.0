Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3405B12FF69
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763636514; cv=none; b=Y+Nkr4yj1w0+MeIz9O3yM0iRYH3p7/7TcT3MJFurozte/p+zpoC3cPPPg0Ch5Tu2OPJ184j3LEI5xU72c/unSHQRHJGCZnW3w8tE0OO0dHBNK8nJ0kxbT8o+ExKKQilLNkkrYWsJIAYTJDSnKeOjaUetBC3A9tBgc3UTKTdD68k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763636514; c=relaxed/simple;
	bh=vkhyuQeyfkh0alsD/CAbJX2Ts6iryDmUk3da4mS1qzY=;
	h=To:Subject:From:Message-Id:Date; b=Mcah9PVpHsZmb2DrPR99AuKbARsoPY2yhck//o/Uvt2it4M8ZtO8yoC5UUerLQagKssbSkBgW+rMtOHjvH1BkBhFpmY4qK2H+8OSfnNEPpVYGi9fcHqKHG9InJkEV95AEPWnoHNtb/nORdVCGJSG9GYf544iVsj5IoepVK09hN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiWCfEtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiWCfEtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA738C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763636513;
	bh=vkhyuQeyfkh0alsD/CAbJX2Ts6iryDmUk3da4mS1qzY=;
	h=To:Subject:From:Date:From;
	b=MiWCfEtBMJk8CiTT1uclpS2LIZau3pNeoKBFjaAbEbG7H1vPLzQfbQXTPiYmZgc43
	 k0gxxkOR9pH8JhFGqnDbDA3UUjA7DqLnPllLEtFOO4fS6EB5fnbUDzbz4WNHm54Jow
	 30P/WkQc/n6wYb4Qke+4ngM8gphTLiInsgaieo5/wT4JSj4+UelZ8h9gVGG2haXb7o
	 AxHVwqgtZEVUzbnhFpSvjcPv2VtwdAHS2ybRQBm8XNi8DY06wuUrKfxoAOiYjqgU+Z
	 zUrXC0MmTi27bh/cqEQ4ckPy6LAyUKLb0A5DFeIv4O76KGsTI6/Lz/YTrn5yDAEzcb
	 nHfB19fNXKYsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96502CF857F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363651358.15132.11820887410580115224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538c56b7234a348be942ff30910a8218d6a9507becef23f9476c870d6c57d27e
Date: Thu, 20 Nov 2025 11:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763636513
