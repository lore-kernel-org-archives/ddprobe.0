Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C95F1FDD
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751261994; cv=none; b=CP0KyyQpx9g2GcfZqlDa7S5HWKWU0XjEm0eCXLIhw3LOLvHcLi+ZtrPo/7kG4u9+EJUVonFddIzMLz1pCZL32KrTJHRzcE4gyc0+6/eXVzbtY1Xe6URB+qGyRDZ7Ey3vvgOwQ96zNddUADhq+T3RUzLPgnPxeN1OsoeiWv3+cgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751261994; c=relaxed/simple;
	bh=rmiTgCchjDE0ncid0Kyv30C7FTCE/c0fedp5DidXoOc=;
	h=To:Subject:From:Message-Id:Date; b=PqWQtbG3Q2+nbv859GH/4fq9cAH40CQA123OHH19TfdUcfzNqo4tpt/oDLmscufqt4B4BfXBPk/4L5zBElXKaUf1MYTGQO4H58Zmt5cce+RFLypqOZggYl9iQKCvbPUMHNstrOQsxQT00r/lQZrT2mbBa5nDXrAFHt+bYyChU1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgRhv9S1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgRhv9S1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ABAC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751261993;
	bh=rmiTgCchjDE0ncid0Kyv30C7FTCE/c0fedp5DidXoOc=;
	h=To:Subject:From:Date:From;
	b=pgRhv9S1lTLXUjNH3wSeoMzLmqkXaodx+vazy4FnTFLiJt/ztH/jXlLZglecSQauK
	 E8Cu/Dt95dGBOB9ownjuCHPEkLSR0q9lrK6okmM+6uGxCNftJjhZPU7w6yQVvapCgx
	 SSxowKHAoajPxzZ4zC3gYXVktFXhLhmVS9PLjcBsEPjfOTt7c967KYQrtjE6ls4yk1
	 rTPlwZ34BxxrBk6xcvRiLSpeIDIHtZzNsE0PyGYpkvnHRMTao3B/NihB6kYDdHHILR
	 rgEooZ0lZNreRKiMk7HwBV4p+8Xej5GtPZAD3ARhrAsA5XBu957nj6+l94ZynsNLg4
	 XPSKph+Rur8OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5AFC83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126199357.8387.7434709557275114215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11517a8e72fd5cb96f657b4558e36ab8c793db6ee91e7874771a91c5a5bf050b
Date: Mon, 30 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751261993
