Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435CF18452C
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734111954; cv=none; b=lGgmeBO1Vd+C2PFADo3fVsccQ3lDvGSPbJzI4ZVC1MvKtX8yPv/j4UzbNgEudqc25fYLc+fB+KaPuA9rGkBdppdzxK4gn2PhyWjrWfRcmuow0zt7otYCAbpQrEFmmNtMbuoQIL/P0V3TYMIEu08pofwM6RWZ4qT1cbZMF2Oog8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734111954; c=relaxed/simple;
	bh=73LnktsFGTsYgdY0EqYsZ3GAFlTkBCtE6dVMdxUl6Vc=;
	h=To:Subject:From:Message-Id:Date; b=nOfVtzyxf4QKsdJ7TBm7jCVnAAb3mgS8BhLnNIywZFvRxMrElXv0RsU9EM7+wuK1cC/tuhhOKAEbFmjaEQ9E4CLAcR7JhkPU5ls+t96ZTxhTwc132fOLWJb/iB2zVzVU7NTahHAz0oz/15yHfdL8BaKwYhQipe6TonXC4C9Qf/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uf9Dkq4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uf9Dkq4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39E1C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734111953;
	bh=73LnktsFGTsYgdY0EqYsZ3GAFlTkBCtE6dVMdxUl6Vc=;
	h=To:Subject:From:Date:From;
	b=Uf9Dkq4xlyDil7Qs/3/k+03y/VkuDPLGsKT/P/nAzBl4Ol4F2Gu7Qw6nopsySsy6N
	 aTUuxXk7ryARcJxlIPHUODdAwifSdwc4xOC8aBIgJLZbQsL5hEX2sVl4yf/55zHvU8
	 qzH/LZGoRQeRRISJmm84OWdW45G+YsJDKtHxErV4PPCnL0CcCKeZGrLoD8jLf6+sJ6
	 rvGNDqQCyxl9IOJTca5Yb2U1DkKJmGejMamsxoAeAPMiioV1Go728EVaOwJprRdu+8
	 mt7MWiA87xR8LYqKa6rq8yjwgMqYHgwrRD5xPylKaeYMM7nnobNzXHmy20VOGBIxam
	 lpt9lGCHMfrQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F432E77180
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411195361.6001.2396192871334774003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b15fd41d83ebac25b637fd4d3ef2104a46a28bd4cea662cd2c14cfff0b3ea5
Date: Fri, 13 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734111953
