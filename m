Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735E12C21E6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789737034; cv=none; b=MuEn1KMBI6+sbBw+EPvPf53oAc11WQnIhwazG5IOu7aYmTaIN3DGv6O0JeHVl2RmE+zEZTK3KtazoyL84/Dq3FLA+QKXOsbTJCM/f+45L4ocYie2EbDn+JL9HD2uWuVj3wukLfCUJD6G7T3e8I0UWruY1SCmMxQk2oQZDZJ9epE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789737034; c=relaxed/simple;
	bh=2TfkuRU57cG9HMJLsZfZokbU8HiU8j1aFv6jTNMLMLE=;
	h=To:Subject:From:Message-Id:Date; b=s63CXDdvhApvG0GsdzQ7zkxoZyoB8x9myG8i2Ov/Zr0sAIE+fSNGb6rLxPP6RnKJFTueoqm6MpDjgRFwMdhVin950PZWVxq17hG43bRQgBSmI18Z6wWgtTBFYps7ReLDmPMclsQA6Gb8fWEXkVUld4/fTpIdk9S97e5uuS08B2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wf3eV15N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wf3eV15N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC061C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789737033;
	bh=2TfkuRU57cG9HMJLsZfZokbU8HiU8j1aFv6jTNMLMLE=;
	h=To:Subject:From:Date:From;
	b=Wf3eV15NM4kcLRrgc08ZkfwMb9r0NtIIvvrg3G8FPvYGhZic/Inbwwcqjk/gSYsuM
	 sjpQW9jVtM0TaHprecL241y5e4B4oPBUgxmamH8CRIiatrI52Ka5Gp4FeqQGiQCe7e
	 6+PkAfBbsvO6o7+c6AhdLCJlmOnU4YDiDUNrJauX2h1ZN6kUSSkcwJvfu4mmO2hiAJ
	 CDSEnjduCEaxZnIFkVpu5V7pQgLV0xpjdok5sFTJJrVTWORN+T5u/A8tCGov6i4EzU
	 PpxiQti7Jxsf96LQcc5n0nvgEaX4jGIN4AFw9iIIeNs0IxzH4WlUaGEvsWjapj61UY
	 0j43ZAGFwpdqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A982EC982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973703368.10461.14480591242693142172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb49bbcac5950e3dde826ab9136625ef3efb4c3d9c93711337e63ecf37e70f2
Date: Fri, 18 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789737033
