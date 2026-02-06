Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250C0E56A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770414234; cv=none; b=NmkP4kRXcLFcyih08J6FWd0wwfrKZbZ2ZzOTgh94Dd1FW67r3vypfFiYvT5XiMOjD8oVzvcfJzyTBQ3lCLCuIY0wvq5c0TM5m7bfCG5B6AO1RF5uLcVv5rNu6jkBXbV35rm/fy2SligVTH0m8MzdZB31RCJhCx+A3QBpfuf3Wn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770414234; c=relaxed/simple;
	bh=7Ye4qDYhEl1+PYWwbmuagSw4vFQqbhxHXl469DiDHWA=;
	h=To:Subject:From:Message-Id:Date; b=RYVi1S5BfOeSxkDBFFgnIIaS+AHBR0PFAXNmSlKT/EVdxKBXKmF1qdWi9jonivyhxFL1JqlWNIszS6JDF42PPHUH26s5vwH5VJhrORCgm2EZXsDpUwbarhPMqA7rxXgnpu/ct0CW/mPL2tOKDvzMFa2P2NIuOZagLnYoIGZBSbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2pAobi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2pAobi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A445CC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770414233;
	bh=7Ye4qDYhEl1+PYWwbmuagSw4vFQqbhxHXl469DiDHWA=;
	h=To:Subject:From:Date:From;
	b=U2pAobi9+PrdmfN2YwcmtmyPwo46PkuxRh1NRUbiYNh08qlcBBsyUpQr3jYSkztT9
	 3QVER6FyNlJLDhW9FMpGNqMfDVaZDEBaIfMVMTYF3FaEtWAKkuMaAgGgveXihi+pV3
	 xjtYTjMpvkHdFI6UErvOiNGZiwEg0DikAb2EMpVBbuJCeL6nK5R/duFfCzssqTuaQ4
	 GzmLD4HWuaItkA3w7y3SR3cCr7D+6I15hnzgVV7JahnN/9IwEPzVCcT+3oFpxwIdS1
	 oWbM76HK+Kwy//Sdhz165DLkyKInEQp1qneK5RamYEzNFn+W1/s9I5iLYpdg5uOEAc
	 SrcZCHHSVZuVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95469EE6B69
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041423360.21283.13065152466858939129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b04a87ec60fcc24dbed11fe7d5ccb85517fa6dc97bc32f202a3beafade6ad7
Date: Fri, 06 Feb 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770414233
