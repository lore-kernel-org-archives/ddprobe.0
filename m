Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C359721B9E5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753916993; cv=none; b=cPeOKYCwVGo6rWMQqGxZQxk3733zNmB8ZlRgGu30ZO9Ui8NktDmunpCPdCnXwf2CdQnCcRe3RRid5KASo3Imh3hnrOOU88kxigMK1G8Ex1ZLp+wbZLwp0uU/LA6blzpZdpYjgls2hMIH0Of5ymRvN+5SHRtFjOQV3k07cC7/YCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753916993; c=relaxed/simple;
	bh=tSwIrLbpk6ffmlNo7G1zsouxIIBIW8/fOaC5+yBSeQ8=;
	h=To:Subject:From:Message-Id:Date; b=lY8Itfkz3o0R7k2rvZYRFh5QpLKF1+u5ySErhBinz3nEN7blpo4DKpfmltXSprkwX06KK2lNjEPNADBze9k/YIs3nR8Fv7VMjSwNXOrGFrXQtTzLVInEuwwO9ZushQjGY611lSYIz2UXAL435N8fdZg/WMRB7Fz/iep+UHbvr4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7+2nIFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7+2nIFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF4C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753916993;
	bh=tSwIrLbpk6ffmlNo7G1zsouxIIBIW8/fOaC5+yBSeQ8=;
	h=To:Subject:From:Date:From;
	b=m7+2nIFqFWHRnE7SBJIA7iMms3GFSuNS5qj2NB7uIz6hl5PmbUX6mRpYnsF9KuRYJ
	 bY8MdYuwZgtlhUMZb8WETfsB36xYkLdUeEHe0Ftxbuwz19158Up8R6Kcl2/ApI8xo7
	 +y3uBzbmfR2+BLVQlYuYtFeF1gnV0LwltsXxKFDBtl1j8MwCno1P0bYUixtFS/v2mz
	 F3K3lUejYSrVK0Bn9SgPWKixy7tyrDhwN3o58bTgNnBEldP+bqumLf9qsr/uofcu3I
	 1hwfY5/oBmbs5RZBzOH6FOIHQnaBsCFEfeLil4nVp/JIm2ic5/9DFnioqGH0e9KKqj
	 ZBB7JpYwDBt5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D3CC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391699357.29541.7656516025315867092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff66c0d5d2cfff47424554b4f289da14cb2b9415628e5dc182b96ba881eb046
Date: Wed, 30 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753916993
