Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440BB216E01
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742564394; cv=none; b=Dy9SFddEIZ/BPBtZt4Uk0vupgG09GI9u/huXNIqrFP0KqVDoPRfnN8Zq4RLPn1l50Z+T3Z+99Ife4krAMpQw86vEQuxH5mVA3x9H2RSHFdi+wTz656EOGWSDuYICWUQfUO7qxNJ9vy49Ixkv1Ws0ypDzjoO3OHDZFMvuAlGVp3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742564394; c=relaxed/simple;
	bh=QWrsPsB75KPhaHMDH2RCul6WtnR07oXgqMdhKT/QslM=;
	h=To:Subject:From:Message-Id:Date; b=QtsMbXzGN9+PxzoK2VTTNp8RO3y8/aBLctzhSIbr7dvYmkYYvjaQKEcCzFfhpwQ1OTDM4Wzc8dro6+fNBq0KuGfyjfY8wxbWdthdScjVn+0azjeGJghFWr1HpvKU3o4kCrYcaprD8vsb/qV7oEGX0xclVyhSmBQtz2tS7VHQfNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNLQSbNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNLQSbNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2147C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742564393;
	bh=QWrsPsB75KPhaHMDH2RCul6WtnR07oXgqMdhKT/QslM=;
	h=To:Subject:From:Date:From;
	b=ZNLQSbNmf3LgixtiP5Umo/Q4yUAOJXlSIw733NhEnOURz6Q+JrDVm7cLLBXIvrx6g
	 oAyIPoqunZYA55oMlsFS1MGPmJI/oODqZloOzU01vcvbRHsrrrLFvkpFbnMsZi0vhJ
	 z6tN2FHG2FtOu8rpTZLlUq75GtBHQvf2pnINjjqd8bzZdipdkKDGKNop3mXYS0CWM7
	 upYxHjpwB8Ylh2xvyr7kUSqG8kPHxxRi1v74v7PIHILx9v3ZFfS+9Q2EJnRfiiSPW+
	 HaCnqlXA7mWIeT8szjnI3Kf8iTncqmbwGCeo13edLCAlVdLH65RzoFmXUhH7hhKUlO
	 p7oNhF9aPcWgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE85AC36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256439370.32100.7608939654769441204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2d0622f9f742c40ff0800ddb29c73c543bb7cb32bc9ad639fbb9e9ae6547b0
Date: Fri, 21 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742564393
