Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4896A3234
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746926994; cv=none; b=mTBtY5mQeG0irWWZGzPaA1NDCF8p9i1I+ZHXNmsd4ehtQ7+eY/PxG3gwWxwMbQN+mb+32qixlINigtNPgCOtDKc2El2G1r2CwM4W8x+sMJ4Jclvn24R8LV2eonfo2zI45Y+CrldP4QK33EAOqTSbH0SvDkQM/QUiRTP0QEaSeMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746926994; c=relaxed/simple;
	bh=KZZQxVF3PhGYQ2Jo5BIIt/F8Xtrti6PjiK/TJc95WRM=;
	h=To:Subject:From:Message-Id:Date; b=ly1JBvk/WQe1YDx6udseZE8iRGAItVbHa8R2dRto7eZre0/UTX2OlrcHh/T6Lqh7B4N5jW3FG8ouaXBz9hZvhhvlGuwR1vBCy971OBRk3pZhyiP56jj0bzrelkASag6Ib2p03eFC/T/wUz1ZLGscxVFFh+k8BFhIXPsnHVy2da8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUXPLtYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUXPLtYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A739DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746926993;
	bh=KZZQxVF3PhGYQ2Jo5BIIt/F8Xtrti6PjiK/TJc95WRM=;
	h=To:Subject:From:Date:From;
	b=VUXPLtYK06KxXDIrYO/7Gln5CL6FXrrOJD2yT2h5AJ9mh1spQdYZDqcKSzyBWMWq8
	 bCoeRF6CoztNkEksbHJ+0R9LcS+VCORCgnMx6e0s5MzQIz8GdnqAKFzHIqlfNOQreo
	 LkmYuCGC+QBq6AbOtcS1EJUli2WUZiF+neU3EiEUhQqmacuJFJVkoSd0jIP4libxUm
	 vFIX2V73ePdGNMvRFlSldERFOAwUUOVvNHNe4CHVDZ4iFpQbf3W1gHiqW/5Zyjxyjp
	 fCeLozOGRyOC2ce+pADcV3YfKDmQ52wlCHBcZASDe4ZG5naeBZbXRMGE8RDy35jFMF
	 MBI03cUrQLp0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C6AC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692699358.5219.9755675337306335223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80de02e4b95b7e1f9e869027bfbc0f3163797c9c4c3e7d341852fc01f3bad40c
Date: Sun, 11 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746926993
