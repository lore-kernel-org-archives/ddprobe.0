Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498444C6C
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762612194; cv=none; b=JpzUXqjV/BskUEbFQcHpclK9VbEQV53jmbTBJet6qdV/by6ZbKHz4LXHKXdFtOqv1DroIvBqrkr/L76O2ibPumrP1r26TRK3c0dI3l3haucVg6OqLBFYTHH5v9KP0550VoLhdmcH7tyjJ3RlguQsB3BgvuzQwG/pzjbxX7L6I3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762612194; c=relaxed/simple;
	bh=oh/fFxxjmYvaFmxpl4ZHwdi3wVrDbDVmqdl0xdxhESQ=;
	h=To:Subject:From:Message-Id:Date; b=p03zg/bwOLvds8x3HAFnVRxlvu8OMU8W/y1+kRvcUKB4AnKCKAzOEX7c72fo7Pdngfx0qnUhxlNdvBKOM3YPO489HLbtpuIiXDdHj+t972kOwKYlJJqKXLTE42ascf7zcVU1J3XywaQRe/pxr8rTfz/++OmUTOHIpJmpJBb/r7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qco7mIRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qco7mIRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7327C2BC87
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762612193;
	bh=oh/fFxxjmYvaFmxpl4ZHwdi3wVrDbDVmqdl0xdxhESQ=;
	h=To:Subject:From:Date:From;
	b=Qco7mIRR4h3VKA9z9aaqVsq3cvGTYZFvlS9qfk7sG8lQ9SiioCB9oH8odriiXzgZo
	 MBXGqJfgWoC61s2xi8RZ2F8ZQh/6CPr0BAfDlvj7cPDBepV5u9kKpUnSeAZYPQUvPy
	 o4XtSO9c737DnEoCKdOHNqEAiG6Xh5Emb+CIowJZLvNKIaVlmnVwSc1jdgQ/DXw3ug
	 /8l6kDLDSvNS75jOtxJbnJzm1czui1xYnP/NnM84M5IKAlHvmqh1b0tE31+pvRmkTZ
	 qc0L17piFkSiSdlINg5zJ3fTSq7QXcL6M7zTFNx1t4PHAqsMLlOCeTDt5VszIgQrHU
	 fD0TuQK5XveEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E3BCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261219357.11449.11721923823371049130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c165abbd000f4483ce1ba72f720dd033759c83409ef40f0e06e3a359bbb6f00d
Date: Sat, 08 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762612193
