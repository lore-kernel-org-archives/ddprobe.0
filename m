Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB2A1BF50
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718783363; cv=none; b=hG2naFZEqunnt/wFQX23Y7ya5pqHF61Tb1Ijjk08/AizHIJ2BVhnB8ZFBtftV5VLobsLofrqe9oolfP6JJdO3sr8jnLEpn+/nNjm7SVX3bclv4d00NPFC9KYM8taVTKShWxTqvs+U0T7MrTLeyitgBen5xRc4Tfhufubdm3KjPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718783363; c=relaxed/simple;
	bh=Jsv7vFwdoSK4N7Mjn3uvt2eisqiAlqbfpwhexzeNx1Y=;
	h=To:Subject:From:Message-Id:Date; b=aVxHCM6Fvnjgu2D5Q5W1+JEGnQh757yXEI810kRChXaHauP3/iaA8fm/djrj9iqs73Zf9K0Sw5AfYETpWzTrpy0Gid5OIBnSDeLdmVZ4q0FQAGUb5tjzXCd4h4pnyoRW2SQWFEZAsCwp3z0g/9hCikJQt3dOrjSpxj0PZt+KHdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gS0J+rVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gS0J+rVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D08C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718783362;
	bh=Jsv7vFwdoSK4N7Mjn3uvt2eisqiAlqbfpwhexzeNx1Y=;
	h=To:Subject:From:Date:From;
	b=gS0J+rVyE4Utg1n+8vqVN5BmnkcY6hkEM2EkHvHyoi7hupknir+MG2lslu7erDkhH
	 LLWOK+oXhh7feyII73iRCq2injD2Snt5Styz0k12hG9i8zsJDj6MxD7D/BMQmwLHap
	 3OL4saWJKMNp1G7eZjvJDRNDkHqOpGf3cJiH1VICbSB7C/CcU4e5bBbuwJezPSc1vs
	 LOQ1i4y0X2mwppfg2UGoar0GxTRPRpjVY13/q6kRIMDSFMio6ew4rSIYw/RNEmAS7m
	 2kVFHzKAehekQQMyDQ9RtMgWfS6jBto2tvxfGCfqNRn/Huf5u7p8z+NlGHeuN4BIrn
	 uIgEVPzD7xNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16FAC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878336278.11881.4963976585196364382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8962b7347828255bdcaeda1a56e31777c356a00715b05657a75d13e1f2a24346
Date: Wed, 19 Jun 2024 07:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718783362
