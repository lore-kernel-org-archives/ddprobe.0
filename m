Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043E52DD60F
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760484594; cv=none; b=Gjmm60Rvr5hSwn9TowWQ6HIxfZ929e18uiOOk/+CwBTDAhQ0Azor2e7isJO5pE4+bWf5zO99wZXVn0hVAZPNS8fjnhCMppmV4LxKyBetmBdrlKqdh9S0YkokSkLHJWTluL/UcHTLvCD4FyPJwmBuRLw8+k78xf9qNnC5go3QB40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760484594; c=relaxed/simple;
	bh=FQ7MaeTt2j4h8EpB3EkVtbFCcXiWE6mly6OeKnTqakU=;
	h=To:Subject:From:Message-Id:Date; b=syt/cS5PAmGJqSBZJMTSwXUsE62/TWZk5I6bb6LCEfhx4i0LGsGkrV7DhM0ryuzPQqbpjHNRnbvButsV3AdpheZo4GEQ23ZSa2N/aJaQunmKXLF7q2BsVKi+h7UONj2rCLqV1ckTv1GULb74hwbpuQEd3osgKI5R67ljIB8R4rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbgOekBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbgOekBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0E9C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760484593;
	bh=FQ7MaeTt2j4h8EpB3EkVtbFCcXiWE6mly6OeKnTqakU=;
	h=To:Subject:From:Date:From;
	b=HbgOekBoUtwo4CKGTyMtS9l1/hnLcI+8eLLbae2yj5Mrl/4WWMkJTrRXSN4+nb4N8
	 159RNminNr+DRxXPcCFHO9xKSbc4EUhsJwPQvUefXjr7CvrH+6F5mS4d/oBrqZ+op0
	 2H64yxxcHase/dvkbw0KOfRWFWAa37HK27pl+UNbeIAbwWEncyf1CfzbQVVmD16hHO
	 3b053TgoyTM51gqBP58+Ch/S1F6w4ZVX86ug9hqcSxzOIQSJ6bf8v6EKAs3+gyMzH5
	 +GiakWYisCYIiOU7J+BirDpTGMOBEiKVv0/Q+1SZ/xQInjM041Ydau2A70PtrzOl8c
	 ofLjomAkSFoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F7CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048459357.26353.1592967958000362621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be9d3c78148af2dbe0800bcc850dea4ec03724ef402c25741b5dc1e59986d95
Date: Tue, 14 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760484593
