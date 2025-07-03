Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAA12F872
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751546994; cv=none; b=HiDmOpftdnwO/kRQUcN1EBu+iagRIx9CC7bq5/vXAmSRCF8/qoOaaVK8QfBjvMF6yqT9xFW78TxGt691XMbjdnG599UMYSjNkYqhjSoT9VOGBJBysoyR/mnzVOfULv1J+N5Zdstd9Jb6rLJnVK8IaE0d3vrVxddcKIGxxyVguAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751546994; c=relaxed/simple;
	bh=O/ORdUMRsJUwPXV+ZHGW2ULR65v4WWJzE0u4886wIqc=;
	h=To:Subject:From:Message-Id:Date; b=NR+zg26W5NuE1iQ21Gjfx5Z2qK5Jg/ywt75zQE64DXYF9eukVjL5N+c2dZI8cPPh5rTVJf2qfCeT6+nmuVQRplbOFCI0FR+1XmF40n72QeaZe01QbtPqbCkXPDo7p6VOPInQAzHQ91q9a9tHSpHmIh+8WyaWt1opr4OZU24kh9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtz4qLUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtz4qLUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E44DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751546993;
	bh=O/ORdUMRsJUwPXV+ZHGW2ULR65v4WWJzE0u4886wIqc=;
	h=To:Subject:From:Date:From;
	b=rtz4qLUt14Jf5yn6/4xkpGe5Wp0fCfNB7X5B+kCjWY3qEW54bSvICHeIIx1Pa9uUZ
	 WYLpAjMKgYSnAxGU5QpmE63V47puJmNpGSQC2up8UlU+w7q4lpkHsnNv+y/8OkTNaB
	 ZVdzQztIcKamakggh0u3iyIxBFAv0b9zA679405/eY3li4JPVtxN5CWOPftGQp3A/6
	 2mpSNAlUyAyb+scgbUBirsYjHwdBdEx2EE1UHDAXX0+sX4OxgaATbO4LTisBr05+j7
	 g4ep7P8HUrLLCFZHaVwqGdH5FmAZr+0Q3bz/a1Q9fDbe+cITGwf7BIGxLoR0UFNYyp
	 1ZSWmfXwczlSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028FC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154699358.18172.17566625203187968037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd580342ee15e344aad963cd73dcc839230694577fc26e9ab36e460f31cb06d4
Date: Thu, 03 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751546993
