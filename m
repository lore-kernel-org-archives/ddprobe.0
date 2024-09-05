Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F833D6D
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725566754; cv=none; b=N+gPMZRV3qX5fDcA3Bw/HvGhVm5cZd+AkX3T7qKoG1HWXtZTl209vrg8VXVwpNfz2FFacRzcsTElGrPbcLZ+70IHu7Xmr+uayzmoZ29pysBWkgScKaReVWJsps3ncaWLAJliEBtBPhlKHxStRr+Gv10z0degYPrYV8OONMzYR9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725566754; c=relaxed/simple;
	bh=y6LOP+f6NYW+JNH+bxqwlb1J9HtWYuJOAXWkfVenPs8=;
	h=To:Subject:From:Message-Id:Date; b=SnwEgArQHLLSVftpHMgGjCGgM53e+80oPUfbibGpwGf1OwdIMtIwsNaWum5DxikQSHcjFCr4qg9bvYWwqlXsa7mLhvJhSsy8lutM2SNxKrQePdNi4rPSEXf3O9l+6C34viYVguvRPCvt9HsV+pPQhhk72k5OQGwUjyWSL//iC1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBtV6Pos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBtV6Pos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11D9C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725566753;
	bh=y6LOP+f6NYW+JNH+bxqwlb1J9HtWYuJOAXWkfVenPs8=;
	h=To:Subject:From:Date:From;
	b=uBtV6Pos4rsIATTws3JxwHsmkRNF2Fs/f48xpvCoHBoPHEXDuoyhRvGiHAOKdIDYS
	 md2xNf0xVLtV/dn8BmvdtTOhvzyU/fLLU9NZ1WhlH0zvejfLKspyZg/oBDn7pYrhf8
	 F+9xpoOtIvuHViWJRtJYbduM/HZM9atfMEDNk/X4AEUEKY5kSDmcDMWdoJXu8BsOaA
	 mSvMeZRX4aSwN0FRfYQ5VHoOj1R7+td9JshWXJSbxoYr0gdpCQEJP5zCGefH+md7CB
	 430CGUuTT/IYLC4Z7zTPIvpRN197lfSJaLi6IOXRWkTUdokrb4re7rfLzEC/QKUaYb
	 z790waylQEetg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1305CD5BB8
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172556675361.31858.9573888806612088259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9905024ec12243cb9eebe3cf9fa1e70f3cb4dedbee8f65ac9c7d388ba06fa5
Date: Thu, 05 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725566753
