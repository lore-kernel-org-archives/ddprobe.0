Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5551A294
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772327094; cv=none; b=gTknWQRrmK+5IkNJFGzYnSDz/oAfwcx/5UVvUR6FsV6ZLQFKGqJ5KQkvDLGzOAebS5KjMbfHcsfhZc+Gy0gvkQZroVHexr4EmtVmsBcXQKoGGa9Qf85BWu5NXWKI64Ku5u+k/BMw5sH+EccWDXZW5bZkIIuz8TXAyHNMoCU60OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772327094; c=relaxed/simple;
	bh=pSIxN8r10dND7yGy4cTuIBx68BfnX7F1nIOL5Nn97jY=;
	h=To:Subject:From:Message-Id:Date; b=D9CHnDUm89BFiGbrJBht83ChrW5m099iQ7k9dkxNL7DyTSHkIr2G2cVbwklxJjWL/Rh9Hwq86MXAlR0z6aZxhqQny0sP1e8+mNe6UJ6k1nstj2GcHbv8SxyVKXe+mqILlVXCt5fZGYbVwvbEujIK3PBPq3nfyqIuHQBsr2NTDec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLp69Oce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLp69Oce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6821C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772327093;
	bh=pSIxN8r10dND7yGy4cTuIBx68BfnX7F1nIOL5Nn97jY=;
	h=To:Subject:From:Date:From;
	b=QLp69OceXdEwOP42bKIR29h+soudSojMY66V5J4dvPlQjnfhf0C2Jtign0xmGLACw
	 wkL95iXI9gFmMvAu7GeVxhcB7ztRHx+0sneuigr2tlSriCtNSulMXBJT7ABYwnVYzM
	 178dpRqYGNi+tlzCGhvSYIV1cSOVyNMFfN1WK20WtxoHtm6w5QCL1Vu//O6KoTr4BH
	 JvqNqtL/hPSUmqCUgQclriwiGb4tLxb34U6mVS2JOylPNnajv2QxhMvSyA4Hy6K/Wl
	 m1KGpYEg8KQM/VkAv+R2phYQbrbdNnaEwoMmM79QBQ6+9d0X+zjrfLDDzuA8xDLSKb
	 8KiQfHLAnprhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930EDFD0049
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232709359.18401.18031370691313278651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c666fc63431a1177b4ff46b75ea0829d65ef4e52b6565c5bc5b8d9e4547c0e91
Date: Sun, 01 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772327093
