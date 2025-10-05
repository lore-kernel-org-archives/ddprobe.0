Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C692550CA
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759665594; cv=none; b=AOelFHWHrm6kLl2gmcKh0TIhynCpj5GEnK9PLGb28epCcXlue7rCpkaaRZ2dbWFlq/QcxHUuux7ftozHGVDskwPC8IjQqIoI8AOAa6IS78suwcBIw+N1fVcpCKMXesSXuhLZC1pXrswA2uI0t/cHtV5DlOShAfwJWf/Yr5JU20c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759665594; c=relaxed/simple;
	bh=GQOoyYv4Y0Q0G3GKMZR+QZNGCFlksFS/LIvRq4zuyl8=;
	h=To:Subject:From:Message-Id:Date; b=lMBD412arZxEMmBvb2BT6oX+vWw2h5tmhpM65oRp2dt9dElYewYLRs6epf469wOM1vk65NWWUGe1TERjcAnvLCRotaUzfawS7jJRy2xnwWoPo8HtvQAP6c6WpsjwFnzDldH3fSx9zfBDc432rVm+CbRjX0mPb1QJc1SB7u7et3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zqzp1R4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zqzp1R4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E14C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759665593;
	bh=GQOoyYv4Y0Q0G3GKMZR+QZNGCFlksFS/LIvRq4zuyl8=;
	h=To:Subject:From:Date:From;
	b=Zqzp1R4Zcm/+2eLQR9L5gLCiY4RIRBkywFW4vwNkoPjuWdKaUranpvB60eipYQU4h
	 Bz++NbVza8ZF7hby3ntGAyyknG/udVVbgRKUzW21nazX3OR79KK/FUQ+gSBxbVleFk
	 ZGCETnC24od2J+rbj8Mrh3pr3kvOC53Zia0YWYW1ylF10wuVX0frekRPZWguLnNJDZ
	 P0t/wkNBo9M8p+H6R3O4nQw0bn4jOjlqr0hIzy6z3tuEJaANr9axMKaOpEKlo0tkUs
	 kbLwSlMS9mtCYwVV0u9Nu+dMvxvF620iqw27quytKbeIX9goqxK8lzPPw4IW8PaQUs
	 kod58w6mvX2aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9521ACAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966559357.21884.5536607873869460867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4a6feac719f9aff75c23fbf9c5d2dce29d79c16d58fce6090462af354ec215
Date: Sun, 05 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759665593
