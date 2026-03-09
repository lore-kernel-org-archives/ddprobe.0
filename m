Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019363DA7C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773071094; cv=none; b=KEayJ6IVh5CVtpAlFSuAqCWXXPqfRl6c0/LxCn+zRgWsgSP3cc0GMIavj2crOD5EWC1XepkMLDKjvywjenej8eX69QQJM2tCpW4n0SHwdekVS7cV9vkMlIgSAOPsicVtSjnCB94cgSeeE4XkCK6QyeZcJMMM9aELN6U2d6wOykg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773071094; c=relaxed/simple;
	bh=YlvlwTsSsPTry4fDhc3tcLeHXoqvWLpruv78Ss3J0PM=;
	h=To:Subject:From:Message-Id:Date; b=ParLgFsl3PY5CQEdtsZH26FsCybR38FnoKkTNu1e84kxYQmGE2ynsVDVAZdHlwvgVF9IhnEMFcv9cb2mR3JOKGcYw9S5XZWZxqLB7ehmtmxHBFtrEgliLhowNXwPzPtuzXoqswKpxYTT3d8/FKcTLVV2no5QG04hTBrsUg0jbww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBQgSDhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBQgSDhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D631C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773071093;
	bh=YlvlwTsSsPTry4fDhc3tcLeHXoqvWLpruv78Ss3J0PM=;
	h=To:Subject:From:Date:From;
	b=lBQgSDhj7XpSh+eDMHqDp65bFJ5SJ9W/C1khFJ9Kv8ast8Qry7gKUALqLHECbx64+
	 J8wxRWHK8adFYjGRF/ulQMXLmkivhUUN8dKrF3RGFCcjLVikJdtCrMOpWytk9I3fhq
	 c2OnyluCY4/7daMyN17ri8339iBKP959tXZkOonmTZZL5yT4hu+QtErW87FziPCZxD
	 K8HbG2zvtggM4cdRk81lw0nroJSwVcnr2oUmr+SgS7SaaWyRn5ZVXe3Q7no+4IODzz
	 DDMqRWhmBCAFtD+rF8vPcS7XJATROoS3ZD6g8kCW1XhLoTdZxfUYC4pR2pChZaCxZH
	 s9Ps3ErtY+j3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8ECF41808
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307109357.27249.9114862859519547774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab1506d7b6b6fe9aa5e5a0880d64d55d9b4dc002d8b6b4978100ba74c9b3b7f
Date: Mon, 09 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773071093
