Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA6E19ADA4
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732794354; cv=none; b=k0PEvNPiir8SHXD2SrpyerZxNY59ijjfUDdx1ibzk/KdclXnGXkyK8PC6VZ/gDeSQPFe3SBmcWkhhTPIwZO6IKfOG5EOuvnVnmc9NYcH5ll3klMNSqmPmSLEPb56PMk0PSkNkrR0avTs5u3CgJP1MRd4gPdALr1vE9h2XIjGzuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732794354; c=relaxed/simple;
	bh=Eha1U0zhKlYb/s4c46kvcilzo5AjjBpGHqdRpyFzWfQ=;
	h=To:Subject:From:Message-Id:Date; b=TpRdZzXf6ksL4V7la/0FFaZwEWaPfNa6NT6Rcl+EtN1wHhl8YFaJR6TzeAaDPFF5+6X7pYcSdLqwS8h+UMoPL9fcRSK+ynaPTnly0Zslwpt8x0tfs9mSjfjhTs9y5u1Q4ezHEqxHTiyUMB2fLvwA3RyP5Ybbft6KI70vR5GhVE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx1ULpHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx1ULpHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD34C4CED4
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732794353;
	bh=Eha1U0zhKlYb/s4c46kvcilzo5AjjBpGHqdRpyFzWfQ=;
	h=To:Subject:From:Date:From;
	b=Vx1ULpHlS0E3BGN7r0Kk1o8RCGvFpyaGENPoTPvSORyvMQb0xw9tuKcQHrD2/eFfv
	 7RyXroFrVtwFBPVm3Tcf7jC12dH4Ljaixet0Bd1PBvAnq4i6KQ94Eo4IVJk754qUNK
	 tab2/AYQGWYDSyAIDrB2dh7AtUTFYWHtVklgBMTFTy8NCZIHZ4LYFQgQw8XW12PbhP
	 nnKd+QRDNwdCgdmne4qkDk1ERmPg+zqOgOb+e147yWAETOOszbLJ5g5DHK2caS5b+4
	 tU051jQHvpwHLOZz1nb7gsPg1JtOzx8WPbvzl8ePjI1IcolIuSwHnYWeQvYt8fwgGB
	 362PCkBBV2dcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E02D690FC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279435360.8873.3502620616395211097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72fa08ea42447b0b76fff5c6c76d4305b4553222f7a66a5b14eeb80b4fb4b97
Date: Thu, 28 Nov 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732794353
