Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639C84962C
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 21:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719266003; cv=none; b=hphrcjVyL4fkoOW4UKK6wM3RMFpDOtRIY5GAhSP/g1V4RkGQz25tMqhGmeiTEbWY7H+px9KheceN9YCvAhARpAKcZYDl2pZSlR6Z1DpvA5dh5h9C7CsHcRBmwpWvkOgLzWmdd1wGublq+Pz1/zX0gNSQLx+9c1FIPbaXK3/1XMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719266003; c=relaxed/simple;
	bh=RfLmsRZk75OPDh/rri4taOWwsoM74seSILxg6PrAZWs=;
	h=To:Subject:From:Message-Id:Date; b=lnr300w08kPKLrwOtov2ANSBBgLn4gXWBnIy81XKXbG08Om6331xtjq9lT23thhO1RXpUyTuufZu2Xi89/Xuqt4OqYs5GTwEMG2XhYH9nTUSByL7A6NhpCysmRfupmV3XIiJFycLecGOjcTFBsv2aUZZv5SCy9qGtLAn0aj2EGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEf8EFSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEf8EFSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE547C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 21:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719266002;
	bh=RfLmsRZk75OPDh/rri4taOWwsoM74seSILxg6PrAZWs=;
	h=To:Subject:From:Date:From;
	b=sEf8EFSSc9k1tioEFHW9G3TAdEL81LXBdtrk42xQXuU3mjQ3Z4sqUNnkLUwqIyWmW
	 TRqR1rQ1/Qz5V2pQTwzRm7lrzz7NlwiffpuT87CyDnNDr/b7+QFZOmTx/xR+KXAOCW
	 KgXCcQtuonk4H+prbyb3OqiROKR83WAGjEtGXXqvIHI3+DlvGVulDB7DlbrrmCRIPw
	 yI6cf6nmVsOVLtQbp6oO5CF0a8ejN49+a3Suo9U23Xbnn4lIkn6TGM0F3N2Fq6gMah
	 n1CSD2U+bJ6sMwX6qM8R3X9XhKpnqljT3FslHsXuIGRXLKIGWNd22HWNXGptX7Zxd1
	 SQShxKSuG5I7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB859C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 21:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171926600276.20222.8616244211724061282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0bfb44d2a7f8fa44c8c0218bc6ebe198aa29f6c3b9e6e1b6218fbe6173d7e9
Date: Mon, 24 Jun 2024 21:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719266002
