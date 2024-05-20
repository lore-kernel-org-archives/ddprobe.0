Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62109A55
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 01:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716166943; cv=none; b=L5D2QlnxYDfM2PftYtD2b2Ntz1kbBiOmCRPf5bv4p7GBrNpH8A/sN6Pkv3kzMJapTE5SU2qza10XMQhQ3F2gS9U4K+sqdEJ4YG022bzMENYH6be3NyNnqwO8Ul1b9ONdXqwWwwSo6py2O6RBRU/cacg3HeR4cMAPjanUs3vGzcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716166943; c=relaxed/simple;
	bh=Tu6+CNrA2vRqkUQaov+S5/nsmUsgmzkJLz44B7IHFZ0=;
	h=To:Subject:From:Message-Id:Date; b=J+0k6kpe98Mb+87399GDN9DpJq5NjUcwPL4hbPei1HWQlqUUCSTWv7KePJsSbFzwP2nPyMMyIE79qjZiWtvRfiVp4JzwQs/IXJipLeuyBJYZcXpcsO+YVppv72o5CGh8h6tksZm1EbcHDUW16UbgrcFUaxiU5AQLGRPZsyiX9nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFF0DqvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFF0DqvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF429C32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716166942;
	bh=Tu6+CNrA2vRqkUQaov+S5/nsmUsgmzkJLz44B7IHFZ0=;
	h=To:Subject:From:Date:From;
	b=cFF0DqvHa2Bw+uE0+wABzhilHHJqxNSWEbGAvyhwz2KDj3qymKDKPZSkyzTrQ137R
	 45KgpkiCEIdmJoDvucftYJXgbWgu1ReBHdAOUC28M83kCcZqMDF71qnnmCW1eQUqEb
	 5zPVuiQoBACNviSCOIV6SBRDziQt78QcuDcCmbI05QInksns5Cvua6hvemNTbbnjQI
	 jCCvMStdff+wTspvI5kQqVHby5f8T2/U5oqSkHaHIe9X3CNf2kV1GAKmcPbXGB57ko
	 R0A7n9qIFpd4+M+TLsja31nERIo1kdk2QRahF0E31Heupxk2dbO5DdagIcMxfBxGd8
	 MoThAga/VJdfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC94DC25B75
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171616694276.19493.17626562366264275008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3084f0ffaf7d0d6ee690fdd8d226cbdece6eb3fd87a7ec57f120ce05c3549d2
Date: Mon, 20 May 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716166942
