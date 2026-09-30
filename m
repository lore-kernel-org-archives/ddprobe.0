Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AC434B1AD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790768434; cv=none; b=JffKTT0+xY/UQelfEB+19jMMnqWl4naJUGZtgCHTnYSPW0SyvBpetqUl82t/AhPYeNMNFfWJ7+ZtQmZVUtevdw8/Yl8WnZ2+7V3jz8jbJguI71rpV4pQMXiUaPlykqu8vTOvdR9RloHvNThdfB4+LhhLBn77aPE19LBw8yCwDpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790768434; c=relaxed/simple;
	bh=ApvdjduUP6moNbxStwKO3j2E0JTLwPtQLXRTCXCblAs=;
	h=To:Subject:From:Message-Id:Date; b=sg+IUx8WJyfwvbXZEZDHheWdWItmdGk9M7h7CKlwIZpsCz/SyD/oR/RcTdyeDeQISZ3VW8m/L+AZiSg4QfYRdRtz+RMCG8t6HnIxgoBQwBCRQQjOqH/jsNCDkTrCurB5COULJ6eSb2mMpBJ6vOJa/4KCMvkupL75tUl/R1xLBeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmQH6fce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmQH6fce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB90AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790768433;
	bh=ApvdjduUP6moNbxStwKO3j2E0JTLwPtQLXRTCXCblAs=;
	h=To:Subject:From:Date:From;
	b=fmQH6fceizxl7yyk9rPumLQtx0ESPorvCc8/ZuX7DFzdPutto3AouG+Uf2ceS/ZZl
	 iCtgRo/5Nz+8/vbE+ONY4Ig0MeoNPTsHPesTVrBIUBHnN5NcAUmHH+CY1i9yPJivNp
	 ieNyygJwgcHqFHroDmg/cokuMQl3c77EtKmZnQlfWBIEcBSisRAPBMK9e1QaUyCRhp
	 hqHicLj5PoiBSL4bE4nLWu3fqnrHhhsGpOcQ6z6DRlKho5qNUc4ka9WKv2PV5ToQEI
	 Bd/B9fiKy8pT5EwucNkcCr/iAtIGdEo8LaqQtSypqfxbK5bKfuYnCoMoxGnwIoNRga
	 weeDitoidY3RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95B2CA5FAC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076843368.16115.10799662065930062106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb9915205ccb71c9adc822f820cb04b89f3bd0ff97c8e641e5680c14c8e6a67
Date: Wed, 30 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790768433
