Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAE518FC84
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717761443; cv=none; b=iihe2vWgoKfj2Z0ZLNtcSeelFMKsRU13ifEfqYyi+s5hMAbGXaAtpLpjDIX96EvXkU8hL9lgWX41S0jUI228VRCuyajmg1zvjDfk+g8xkuAcNus3ybd0PVTCha1G9pltjlxiQ9/jXUrFJ8kr2CCJMTu64gmoQuqxZgJVZO1A9RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717761443; c=relaxed/simple;
	bh=mbTAoDTs2kTjpRyyhxdHbxE9JJkBVdve1ogFW70w4p8=;
	h=To:Subject:From:Message-Id:Date; b=mfj/Y9sM8X+4F6SYdkEKD0BnThYsGXRx7j4AlsZ+3b0v5vnoMDEMPPVlKTXNtZD3t79HaFkOT7jcueynhpKrWzgQG0qWRwbm3NO9jBe+Ywy7aR+u4qNJd3v+6vFfAr52EnQHx6Nsx38cdgfwCmIXE6VHfUl/cD3kM5l24RLWn3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p06OmYrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p06OmYrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EB7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717761442;
	bh=mbTAoDTs2kTjpRyyhxdHbxE9JJkBVdve1ogFW70w4p8=;
	h=To:Subject:From:Date:From;
	b=p06OmYrJSxfDnryLColIl+GRBOKgHG1lN24I/pIbdZPsiFxeYK6BGmMezeAwuu2yN
	 KJDKQSHaENTUu2Lg0wiqXXcQnN/RLPem3xC73j6osPq87HnW0HR8PUAQkvIPCAsz25
	 oklXQSH54k+7ONm9ZAwthNThCBNWOGRQceF8kaF1v66mrp9K59ahjMjx872hh0RN0z
	 Z9KgpnRbYo9Td8OcB+orVUn+vI3d+mKdR+2OWLB+OsENfg/8FpNdfRXbCxuiDqyAAM
	 3YB7dU+nBrwTlhEYYyJuwYCQem7QGozrRBv085dXz0bm+6bVNOD3qlkFjwycpPHNHm
	 u1oY2RLAJ+7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C078FC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776144277.13085.10858738728748713739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8585eaca8a32923c8d521f3e4a57a14b7dcf011f34f25f3732a2737034d5365
Date: Fri, 07 Jun 2024 11:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717761442
