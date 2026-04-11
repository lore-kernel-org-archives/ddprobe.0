Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363082DAFB0
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775878654; cv=none; b=bsJQnaqTZ2/hfciVcfwb53sgwoTMRVprZVMsvNOQJbo9EbAzj7KmFLh6jsgF4//jwZ0CwdE9dsNqMpm22MrMtdk1oWTqFemVNdEyn7Wu6Lfup9E6GSBcg5vhLrPZhImkR1/x8pxotUENSEdbaDl1PqsSTL3QGA21vGFzTuahWN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775878654; c=relaxed/simple;
	bh=KgcVWrLkVcB6GmT0B6O3LNo/PcUqdlTff3J358mM/k8=;
	h=To:Subject:From:Message-Id:Date; b=XKQG0dFkhDbIZ9yHTgm3tcLOaf33u+4i7SVK+s6RtK/wQrwbALuL+kORrctTPaRTLD8No9UjICDUfk9WeMtytw06zFZ2Bbse5HUptcXlYT1hEcA/Lhu3+r5L7kdurX1b+GBJTejaelNibjDqhjsBfyRLLT842j5/E6BaOdAZI7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYyKUOuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYyKUOuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA70C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775878653;
	bh=KgcVWrLkVcB6GmT0B6O3LNo/PcUqdlTff3J358mM/k8=;
	h=To:Subject:From:Date:From;
	b=hYyKUOuukYxeLskR0M2czK5WKaRLeGcp8kCTjzXRSb+BjsO5LaiG36xCSDJ1kl2js
	 5/t7qjEPqzeMWUrSnTVhdcC1kR3gQmENbyRT8sMVHNOFea75kg0lTbT2HwqijfBKhw
	 eSeC6yK0mkiKkjDhddq3U067lAKbxZCjfgJWTuVI5COKpnlqLGO/d/8eAXxLCtovvM
	 2oGpo5032bCe1Y4Jy5zzCwyxwyI8YJExFjTydhl+0Ro+jMVok/OZZwANYOKY+fYfLM
	 hweFAmJ/O9mpWcHXqGNAUqwuSu1mudlMyP508BvqYMkqmu270uq0LHEx5N3SIcaz1C
	 ymQjdJyrS9Cng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECBAF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587865368.6766.8521282132721878291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2abb7609b0c3b8be721da8d28b55831d4887bd05142567fae40d2fa49ea4ad42
Date: Sat, 11 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775878653
