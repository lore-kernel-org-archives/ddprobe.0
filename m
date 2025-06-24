Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E1730748C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750777794; cv=none; b=RqdsixokL63vKqzetDLhBh2N+udNjjJFDMzdSmQ7R2mfn/bfzR2h5OcXfNhKrgi6Jx2mfCW7JS4ERUTz94OcKCgTXayIc4TSjNP90iinBpTUtXAaJkLfvTsHHEBZWQQYjVhsGoLvuOcmoORKiQiHCU4SbA3Zgx5dy7bNi7lizJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750777794; c=relaxed/simple;
	bh=lHDnYYIKxlb6BFA78HRgE+2vY4uFUsQqCn7n8B3DJXQ=;
	h=To:Subject:From:Message-Id:Date; b=mPi1ONUcWUCkpHq03lcgcAxQI7T9fp89y7oO425wwrwo9ooORU9FhlB923A3ReWr82CImwR8uuu5ySocPXijVCvNkeEqw4e6wjOImBYOCT+L2StmxfcqiYIUGga9ACxcddize0Z9Fz8Uc9B1/R1ap5kBqg+GlER/CEQSi29fhNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLDu6200; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLDu6200"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D731C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750777793;
	bh=lHDnYYIKxlb6BFA78HRgE+2vY4uFUsQqCn7n8B3DJXQ=;
	h=To:Subject:From:Date:From;
	b=jLDu62005l7W1phhydVszpuKHb6eSgdIIOGkZSjwo2sy+VBE9WocOFwYkm/yJZtnW
	 65fhyx06TAkJInrviBtC26UQlOhIB258wSX97caPDomaffnVoMrzZC+MroxuNcjrbU
	 oZr7oYCW+nxdnUc/kBiFZMj6HL0A1wVC5tTxDG6Fy3NAbUfIEcLkT1sVg7495w5dG6
	 Ak1IVMr/GG47xmOv+zKic9mkAD1WB8tat+wZ6pZE9SktQldDuyehSwNVCJ3Rttjnpt
	 0j7EOUYEX7ZCzd9ec+7CHohu/7TIWqQsFQNkDWIckL928FUQikwgrSwV8lvUlQOvFW
	 EFsP1utbglkNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62DC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077779357.21648.1450431382854677601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2b7dde9a91a9a4cb52cec450f8b76548781c0c52e40ac086f1ebb3e8bcb9ac
Date: Tue, 24 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750777793
