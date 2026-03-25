Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4A213A244
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774410894; cv=none; b=YKZIVH4I7m3RDy8nblktJ5fodamHrDS941v6PcRP+/YW/iEXEySqjNfcb451lVJ9ffCoUawpy47yd7NDWmwZ4M2M6hu7XUtsoYi/HChVwLZwOeTxhwxyN2qq3V9Kp0ztYxpRMSk8dM3u31j+qeNryx3DU30PIY0lfkWR4f4kF5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774410894; c=relaxed/simple;
	bh=Qh2/NpI76cYWflRiiEKG9nOVjNs8P37seWChHPnFfP0=;
	h=To:Subject:From:Message-Id:Date; b=S3hKRKq6BpEOuwbx/JWVRz0JY0ooUw8mLt3w2nw4Bf1v52vWRhT9mMfl1igqzASAJO0SrUPINQpVRmN9js1Q7HNrT6rI7jnX9zSMtHeRVfizGJsCREa2cxDjBlLfuJ44sCqMpQjVF0teOA785+0dBWdgmrfuTN9Vwl51SI+nfrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgFfvXoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgFfvXoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32E9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774410893;
	bh=Qh2/NpI76cYWflRiiEKG9nOVjNs8P37seWChHPnFfP0=;
	h=To:Subject:From:Date:From;
	b=HgFfvXoSt8781ZDpC8tcba6NWu/yOilahh3uDPwiMG53t9sWHhSoVuw/HrNQdfDKa
	 Xrs+EncwHKRwItzlR2ZljF8hoWyfpvQPFQCYdAfoYGJz72xQ8SmKYGOzlcvsh2JTT2
	 azXaK3ZHKENHMIdl/IKKJIIHnMUQOS4KcDhRnfIKJfVdKNcnBATNaeQal0Z12P5TSq
	 XbBSN4QaApdmK0cteCovNBw7YLWOtMj8v9vr8U9aNdqoyF9cwwSHIhK+VY5OlPt+zS
	 XD5Gu7n17SHx1YymyM6QA/XhktG5pykd6tEAi9qRk4zwhTyC15yiv3jysm5ai9au3r
	 Hdo8C+g06Nj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92124FEA801
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441089358.21487.3991315261811107090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ff4b32715a7546ae0b25e72fde12b1667c12ac07a7975a03c0b94ef6e41845
Date: Wed, 25 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774410893
