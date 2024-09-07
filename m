Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4356614D444
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725748554; cv=none; b=Fj89JtlzXC/7l3MCQ+j5y1T/USmNygN8UXEgHznay6bYmmJZtKgbcpwXbra0JdBnc0SnB3+aZYyjH5nnczEXu3H6MN5isEoujp35eHwe7ORxjeGa11f9oEkGdLL3fTyyeGUQ3zHXD05dERuYSodwAL6Vw+dntH18wKKKUAPJhbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725748554; c=relaxed/simple;
	bh=8cQy1lBlf+PwSC9Q2XRDtaFsseAnbq2CLqJAvIefNps=;
	h=To:Subject:From:Message-Id:Date; b=II/VVQaKSCotd00pb5PNFpK1cq8EQDfq/44jIGRhDn5DfyMkMz6evnUENmhq5P7CXst6Y3sBwM9VLfb75sez4DtWzrwK2ghDLV6Is0Zoy/t/vS7mulr1p9RLjyMGM/YmgNOTke/zRL5atH8VoFi6sDldk2I3Jgyktuk+FgDmlNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n655kNOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n655kNOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A9AC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725748553;
	bh=8cQy1lBlf+PwSC9Q2XRDtaFsseAnbq2CLqJAvIefNps=;
	h=To:Subject:From:Date:From;
	b=n655kNOIKxORBrBRTk81K4OY6UdFeiuaA05b4IhYDgpiRfaCKWGe6FgdHY8X86AXF
	 XxZLwUzPOmm+63MjvEpuV+0/N9572FbbfOckHRBOrSLy/PC2f1LTZ0gYwUMNFTJ3kI
	 r0+SbVv0A/AWn6Zmy8peaIa2qi4g/er9Sxn/BWyeA9ug/0Hm2pypEPo2oSb9RNgJ49
	 PgPYOh67N92jMQYpIRvF9zdey1r0muaWsIG/KARWp2G7BR7H+6KftTHPfqphNtCZmv
	 e7DIuZQ0SO5i0qT7KQBeN7gV2GlxvMP1/BZaxe3Hdjk/dHKcS0PG3PK92FI3yq2cuu
	 QJmhLC0+LnIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E275ECE576
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172574855361.2196.4146088695446301282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af0dad3fd86f2fe46fa87413787c3e90581cf420aec6a834b93205e3d813768
Date: Sat, 07 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725748553
