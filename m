Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5224920E6
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743373194; cv=none; b=uUMzfbEbUREuyeKmlLJzdr9lD9UiEVPEFOns8666Aqm6DMSLWiSfrxF2bj8EqGV6CXNEc/U+4hUpWKllhxTHhxyrOrP/QY2N9slVuNxD4yqc3HEVehxmBxnm5lHYOf/wm2hyXNW8pcujaaRExMTmfzfMhBoANewA8rMW1kIMyzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743373194; c=relaxed/simple;
	bh=TSCeSCE72M/hzXN7uOA19ZTm7gnbTn5Drf6r2Xw+G+s=;
	h=To:Subject:From:Message-Id:Date; b=cNBmRpUf2dwXfewek0ZusHqGT5EYorSzClQYiPpfsKG9gbASIyGI2hWtDG8YxBlkLormneZ52FvezSFZDto9AvjoYvfA+/XtUx+5PSkeE5+683+R7sg72c90pGpeaLJC7Q7RVLereumh2O+E2xveeNPGzKWVGtuXl3cDrxFV+Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlOwFdTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlOwFdTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEFCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743373193;
	bh=TSCeSCE72M/hzXN7uOA19ZTm7gnbTn5Drf6r2Xw+G+s=;
	h=To:Subject:From:Date:From;
	b=VlOwFdTaDlxaxM3F/irY4Q76MbqPuxmRPUC9E3iWvYeHIomeQnCEfTtNxwPXPVwBm
	 BllCdt14ZtHy8ekLyLKKDXQT+wRRf+eQFnkRo7JLni1sq1U3LQXfZvmA9fhZrV3fiZ
	 WVpgyYeNqiNF99uDvDuBXCzudZwuTlCLp8EIfL2s+6JbZrdV8iyZkLx6zXp6vH53Lr
	 phpZs5kPRn6/Nn57V8yKmm8/cjSgEyFZCs9pX8gW+dTBSjYacWYu/U2RVJG8JiDhbY
	 7zCgHKkvccOWCkHVddjG4o3kzvNmXKJyAvcMsvIFXcpCmueMisoTB44z8eU+CHxhtN
	 uGaZJ1rs27F4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2FCC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337319360.11873.8404950147169534271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e906d4c637f37f9d158c91f0f8457d278cd7997461d29ca62989540428ed91d5
Date: Sun, 30 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743373193
