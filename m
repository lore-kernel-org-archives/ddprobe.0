Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DBE4A29
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746340794; cv=none; b=u/ZKEQ2jjb9PrX2EbxPgFI3JpkvMr8+EJ2d2pqvRw+D1b98l7DOwdCFcti1+oVlwEMqH1wM254AAuJaSNnrxOFKJ0MuFWqvVwaI32SZ11PsesKJCyS7p7K6ubjrIv3yMN46AJBh4HlvFhER3tF91Juy7G/0tHG5zwHTSlTUZq4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746340794; c=relaxed/simple;
	bh=gpr4grBbVa389NfCBY3ifIFW/tg+YJobSC3/5IwJX5k=;
	h=To:Subject:From:Message-Id:Date; b=iqs9p9i8EqAqqU13bCInhUGmcxHKOkbRH+qHvUzRPQJ+hJ8KMny8TwLJtii01T2jUri/Ughm4JMOcz30bYh8DJ7/UQaCz660kFzgbDVqknTukCjt/wSRuLVNdIq++ajQwpMEUSKMMk0UGz/qfcMjKgl2XUA/zbHidPj76XCxHPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkQI5Db6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkQI5Db6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A47C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746340793;
	bh=gpr4grBbVa389NfCBY3ifIFW/tg+YJobSC3/5IwJX5k=;
	h=To:Subject:From:Date:From;
	b=JkQI5Db6hXhXOkuFP0TcwUin5d3VWu7Z1p3ZgfMn1yjuba56zMpkJf8MO/l0yNEPt
	 9nKZwQ3GZsDsjxaWyH6M7s068KOpB4Kqel788b0ZkM8AljAV2LjdxniAW5pjmkyIp6
	 ZrNrmjidULoeFTVMrxRFQbrIs2ykEJJ2MtHVdhb9bd6itASQMS9P3z1imEqe+Zm2vK
	 J8vV4RoU0e/PFJjA+z4zDUDTAd/MWJijVASDeBGlBywJl+9B8FGBrvuufJBodS4Csq
	 8f7WfPtjr50ClQwGg99onqFTbrVKCrdt67o5d78ldICl5LrZ8G+JVwMj68of4tJVnm
	 vk6QS+2K3+DjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CD8C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634079357.6472.12884198272696989163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e408e7f46eb2ce92d067b0a38f0f6350fc9e6527bf190a685f3f51bc468f80
Date: Sun, 04 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746340793
