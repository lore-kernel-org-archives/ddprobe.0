Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E29FDDA0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721010143; cv=none; b=s40NsIQbsdWQaxhl76nRGP0ZfFr//LCDciWvAPRTDI/ro7QxilsL1d+TzqSjyynr08tHGx/MWRnPfQXCswywu8Is5C6zc0bAZoNiSiVBpTcXX0q0JjaSSCdq3USaEC2w3Wln4gXaxVLoePr/0RFpvsCZvnb3B9ulwgroaO+cREg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721010143; c=relaxed/simple;
	bh=S25WIgOQHChjHqvF5Ltl6GGxtkIF7FJ/XqaRSkbbWrE=;
	h=To:Subject:From:Message-Id:Date; b=IZCXitwSIV2Ru3zAyGwrNQqxJu7RxytSSKBcBKd91Oon1oyUJCzeMOH4tIxKOK1cU7B2q9+Upikb6ryulPwg2ZGa5SUEE9jHflz51l7V5kvh/pkkvrkkcyq7qQ0Wxy6191OWJho2bhrKV1lb6peOhQF96crKVelYXGBTBge2KUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFPxaMx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFPxaMx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1E5C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721010142;
	bh=S25WIgOQHChjHqvF5Ltl6GGxtkIF7FJ/XqaRSkbbWrE=;
	h=To:Subject:From:Date:From;
	b=MFPxaMx8a5mdju7ALq9TlB6t1fKjUoNuDH8LQFhXB648UikH86mUvQop7R11DHtNB
	 cGq/ySNFVwllOrdAfSr7eQxy4qJ/eXaMsmHqDnQFfIXD3xDbhcqYV75mMgjSqrLn9x
	 1ZsAMBpIT7ALyRI9LNBbNIpn+CJi2jgi8tc6jkK8c86lPrANT0DWO4HaSG85PiJhvL
	 /u+3A1wqAbMda86/008lj3af5q51cUiSecXcyM30mzShjEa1jD3ftSkNd2wMjZ1Xf+
	 9rEXDs4FtBJBvCheMPsArac5e0XTEinXWrdU23YsShoExiCw7hBFP7AA601239jXdp
	 nMoiyeUeP5DfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7288C3DA42
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101014278.20657.10659745789016479931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c875904189436259fb6cf538b6b93e55c38cffab3575c3a1470e8c10453c82
Date: Mon, 15 Jul 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721010142
