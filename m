Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61190214812
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788013234; cv=none; b=DrO5fwr0yXNQOv0niHw/eOSS8EBiI67hij+oSQxXgj4mV2YzDwaY9DHeV8nFVeod0kIZeEGzydXrYpuRtkNw0i2B8FKLBAwpeaCHGAGR7QPGEZ3No/3H9RmYJL8w425S7nsfzUhEIRVQcK0zfOXrsdn/OC/JG0214m47fzlVR+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788013234; c=relaxed/simple;
	bh=jmyuTasdd7N/lrDh9RS4v7saeFAfkPqcLtNFW5AEPxw=;
	h=To:Subject:From:Message-Id:Date; b=A5mV83YIuFa2Xr9agNCqvNxWvh2XnGp7rRjACuSfu5WqSAGMCD+qeVQLkLAjkNEOrv/07UPH0+y3q5C9JzorhiiNRG2tXwExBSH4Ywm3oroi72BtwE4EtjNbLrEln5Jgxy6SQ298WXYrccmC4Y0FyJ1fBH+4sICPFZ/Ixh0un7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwMEzJLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwMEzJLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D258DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788013233;
	bh=jmyuTasdd7N/lrDh9RS4v7saeFAfkPqcLtNFW5AEPxw=;
	h=To:Subject:From:Date:From;
	b=lwMEzJLJWVI8ITLYU56LiG3NeOxW44SBqB5kK/A/cXVkrD4tmuwnpd6HfCGIgu74K
	 IddiMVbd8LCCTEAOLkaNJKF2JiQyVcSou6R/K7h53i5SuUxJJSe5AWrKtm2cTPu5EP
	 f6d+clhNb9/onLa1O02dZYuc9fSf9HxzhokvbstUWa2KnTX2NoOf+TBMIz0WNjzUBd
	 5apwlJv8MYPKVtJha035Yg4aXyTOSyDWCogaITUICmBMT+bMTZgAHPCHRQFgNQeUEJ
	 W4EDiVhSekJ1v1PmVrD/nKv4USM/c6gazNA8Y1/8/3d2gwoPW6KpmfMr16VjgJFKCe
	 i6+SB6FI+BY9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA44EC61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801323368.29207.12302997437251243922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839332ec1212d4e1c4976923ab1959174da9b426990d4a08312f9d1ec21c58fd
Date: Sat, 29 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788013233
