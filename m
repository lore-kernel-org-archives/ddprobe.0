Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F2230FF13
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756385994; cv=none; b=HzU/wR4M7cgelSdNmWiPMdi7TkpWYO89fgLj4X5sbC7Sl7ZWRPjyABVnjdnL296JZISfHnswe1G9F17eQ3iASjXzzpE5iezBpUPFax2HHaVUZR065qMns4n58aHKoXr/8LuV8tISpwTEyM7GhBx1ka/fedVWt+yvN8yHlO5RBr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756385994; c=relaxed/simple;
	bh=VNiBpEJbXdsMtO/LR4AxJyRHrtgdArSh6Rj0OCPRAww=;
	h=To:Subject:From:Message-Id:Date; b=OD1xDKxnFOG9Ayn+n7GDvcgLdRX6iB5TaUqLb+CvbxVUvWwwJgzN1NQuZfvZ6dGW/WHF37ehxcw7zrZB4E0stNFm6cUs8/YDtN8qPqN+AsKQJHnMrPBPG1TmQhBEHF3zBka53SAXPU3GIoDbwtnMsUDL1kJYTpaFkvo9VQe7Bnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtS/CWC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtS/CWC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A746CC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756385993;
	bh=VNiBpEJbXdsMtO/LR4AxJyRHrtgdArSh6Rj0OCPRAww=;
	h=To:Subject:From:Date:From;
	b=mtS/CWC6gBvibrYH2BVQ3c3cJglk3duqf8bdP4Ecgq7LP0yz0xUl8tXX6BlK347ZG
	 GZJiu1U8CMcy28sLRxMS9Bw3/qShSyycRW28JPq31L+/i7RqNnWmEqz76Y3ITMmuoZ
	 PcvEYmQ4mV0D1SzsEsHSu+zQ0aiin9VPO1TpR+3CfQHaqT8U+fsuhh/neFVPTynHE4
	 G1VwfImz247lLQX9lu/z6oJI4GMy2Ahz2vnzYG4AOQahaw9zGZx0EptHIzJUosTGUs
	 h+xbmOVdvwI8026wRtjIRkKU2KYivL+Mqfxci6KuQaVQEsob4SU5GpYvaOH0D/jZEw
	 H4xwqrEaQf4uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939ADC8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638599358.22377.1504065832890321322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6a2091ccc1cceca3b07e5ec15b2be21cba781a5d7ef1452715be5181290f6c
Date: Thu, 28 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756385993
