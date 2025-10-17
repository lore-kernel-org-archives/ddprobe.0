Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F48330B11
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760721594; cv=none; b=dnRO6le9apxiCGgrWyBhjCRN3QtvcnhpIU2gLLo2QCfstR4Ze0kQBb2KNtPUe2deRcqr4ZqvGIrkkwsYVeTeH48FBMnSJ13/FWjbs+LNhMIE8l46QjWsyTY7LcEcKnwb+SoBe8dV4I2K95mJS0aJxuLSC6N+34rmTIeo1UaDCQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760721594; c=relaxed/simple;
	bh=kKjXBETRUJOoptSjHWJBGyci7nFXFvMimd0K/58cbfI=;
	h=To:Subject:From:Message-Id:Date; b=sdhbsLy4nLjWoqMoQ+mKR7xzjd0koh9IUgkHDAo1rq3fVcwywIlZQ2T8X7cBDfxpvCR5ghfXZhQa0jsNU8nW5ImkGG/HTQPV++UXzYHatWak7prjiyQNMkBC3tKjDVl0kHL/tK+9WfoloEo4CXlRt+80D55P1fw1AlNBp3Ka3JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPJbcK+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPJbcK+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A691CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760721593;
	bh=kKjXBETRUJOoptSjHWJBGyci7nFXFvMimd0K/58cbfI=;
	h=To:Subject:From:Date:From;
	b=UPJbcK+AbyK+nRSxVe9L++V4VoSabLPAAUtHBzDnU4wLCGT9ZNgfey1a7vm041uPE
	 MuwJxcCcOfNFxMbSG9UGs1GmH2glHXtjGFC7IPmv1I/03y5L0+NKnQxckmf7V69oGQ
	 NDV9FCig16ikiqtgarXV5IkWOVya/7wWEz2jNe+FwimP5ShL/GJx/dGwmGwGEDp5gf
	 vm2GMTHkkb/h0mrzAMBj+7AXZMZKfqxaAfUxcVSLdofyX+J7G9MxV3IqFipuuJjIC8
	 JpUTzt6mgYj4/7HCDNvDlvd2wva0n7AXpx0Ed7Hl4AzhT+dF30gOUz4Smdm/ngPEz8
	 Ci1Qns6qoYrrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9237DCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072159358.5199.3988334624164969979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167493309dfa553a7c354808bfbdb193b6b706a21ead0aee9d8619e511f6cb33
Date: Fri, 17 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760721593
