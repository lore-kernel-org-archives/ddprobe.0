Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38003249E5
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779642154; cv=none; b=tzREqIhNJDUlW8UuSrwFM2sgcd4NLy6e7O1/43+qTQ4kQZEzUFy++ykIfLzDTgjgXvzIcgt2h8VKFi4N6X98UOqocJlTj2shj8NvzfwvUdr09gKmL+nRsOc7MD3vhji4LqSzFFvuzdx+9a0Rcdco2QHxO5c5XW14RL0ENqpxbtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779642154; c=relaxed/simple;
	bh=BVdcmPcKnndRHUO66b2hEiv4bw0ha7a/q6dh7kng6M8=;
	h=To:Subject:From:Message-Id:Date; b=WEijReEonpgklnxHB6e9uQhwD+p4b0AoNAT9oc+8hPBDOq5Kx/wEK7FOQmFttIfuIlOfC21rtInQqgt+67i0geovEEEVyt7FBw4wc/6X90pkX3i9kj+kmOCBINhQBpv67Qpz9bLv4vopEF0e0PkgC3aPU3981E7bNiwKnSW6Ovs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLzLBAMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLzLBAMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F21C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779642153;
	bh=BVdcmPcKnndRHUO66b2hEiv4bw0ha7a/q6dh7kng6M8=;
	h=To:Subject:From:Date:From;
	b=cLzLBAMVfn0Yb3Gb02bejMcpWiKzMD757kVrZQO3J+USHzIIFPd11jMT8ldOmqoXq
	 e8nnSzP7zeC2RaZVIa82p+IZOHiwhg6cBr0nYirrVGyH7gqprN/ZxOMFUzDB6FAS9x
	 kyNzgi+wiKrr1IZyvsIiuU/ryRF6gcmyblTfYn+H3SXpDLLiBEhp+soh0uA1mKRbYm
	 LTOZq3mIUOUEUs++ZtHZt3c+tyEA5IB//hPOt/dKvRmC4ggndvUPw8FB8zvU8+WNYT
	 cnWUA4BpRlyIl5faIeEr8RmO4z3Oxsug0esH/f3NEPMUx9Il8ZNgjfHbJ+L0+9OK27
	 W/c2OLF5rdZzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8085CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 17:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964215368.24527.8347949401977721074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e04f0966abeef12ccd27f4b061cb6f036c88073f47f1f410b00dc4a5c222a2c
Date: Sun, 24 May 2026 17:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779642153
