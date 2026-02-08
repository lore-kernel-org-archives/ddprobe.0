Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20817284665
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770569634; cv=none; b=GrY9F6DPGTnU+/5CjjuInM5xfK7PpT/fq8C+xGMQgIbyRmg9NM+1e0Z9NtCLAqUeZJRFbApTLUbf4NrCpLc+nXvISNO5M2Yw0Ln6Mm+XTNrp9374jPFG/L35rV9EH2n8iLQXSZeVJvfPw8xu9aSuPFwYicVTh9B9Udce3q99uS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770569634; c=relaxed/simple;
	bh=pfrayWnmQmDi126MFgfM6WurnE5h/5gad135H138+t0=;
	h=To:Subject:From:Message-Id:Date; b=SsnRcav9VeP/HrXYYCcPqwF/3oGHPZBWoFINLen3VsXHGivAZqyzs290NJFIUPEcjEKXdJzTxxiq79XOAs2UGT4djpdFTvjnZ6bhWVRo/W1ZR9UPuOeX/3XESJaslU00FYXZJsTZkskc5JldJR/wKwZ/mDTatQ2K+ww6+qdy8yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/TDv1Yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/TDv1Yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0209C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770569633;
	bh=pfrayWnmQmDi126MFgfM6WurnE5h/5gad135H138+t0=;
	h=To:Subject:From:Date:From;
	b=J/TDv1YpGi37JsSzf8tbpwPEfx71dE8RaypuRIN7VhvpbfhoP4ewALdZapDRTnIMh
	 0DoEuSDBl1xAxZ6a12Gxumls1GRHAcb72EyBFfOXQVm1xzj6Dk4nxai9INJ1BFTrlj
	 Pzl+/Fq2s+qzAWCvIZO2ttbb1YK8enXLkx0J3eAp9WCvWRf+C93GQe1cdN7U37FmSY
	 AOr3LxX2YgtQT2ht8zhdaGfz7RNxckqfaoKJ1JwsNXk9bu95PP1hbp2q5qMFBbYYdd
	 lWNWnVJA9SVUFCO9ekleStu7lBreRc+UPOt5v9IQQJFbMzJNR2rpS4zUFvI5ry4TB4
	 LqaBA8/jOSPEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965B0EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056963359.2942.227117161304620306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebde87850234f812260e1af1df6cc14cc83d76ae6c642886fec248584ba3266f
Date: Sun, 08 Feb 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770569633
