Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A0E5787B
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715955143; cv=none; b=mHioFoZBBgy6/FrSkNyzEaIR7bfpgTLQpl+EggIwB1l9f8ygtSB6m2KBJE3rA2cmpGIjqMcDLgGsoLgF6X172Kw4E+tnFw3qWxw/T5kHsmBBS5Ac6irE/2lcS2ZkZAZm1/VSVOXtgnP9adLjASTNH4mzCxWuwvn1EbDNSXg++Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715955143; c=relaxed/simple;
	bh=sDCfXU2rIuqzNrydxHuDIqPJ7km7MVwpmd0Mq4vcMbE=;
	h=To:Subject:From:Message-Id:Date; b=LWZjr/nx6xN7VQyJakk1EOztsY16/URHKu4SVrcngJ1XG8WFqN+vj4hZ+e48lFdUUe6IPFvlbcuLfZy+84mB7PRss3gPDg34FQpVgl59xkD10XP0rdWFtq+hQBE5Njz7u65XoNKLid1mi0VvXzY9+Y13yf4rJAPcUvduSK4jy5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnpy+/Ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnpy+/Ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE742C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715955142;
	bh=sDCfXU2rIuqzNrydxHuDIqPJ7km7MVwpmd0Mq4vcMbE=;
	h=To:Subject:From:Date:From;
	b=qnpy+/ExwcR9LAclEkBG2SQkmaAS4nB0O+i0d/NDruHueBYB66LQQCAQjP9kH0jkZ
	 PGnncKilKGPSfA/CaVjqwTzuAmQvLVn8ZCJdZyxAVkv8Qtui11eD9ia8sumQtFwhj7
	 oUdUWO2CWAXyYu1VYl8PeyRdhCWBeM/B25ympKA3hH2PloUIUz8GsNV6brP90qorlf
	 Cf3yZu1MVY7Bg5n2X5WqMnkz8n2L3Qu3DwjvMtOJfn2/orZy+GVXfaEb7r/VFIbE58
	 QCCNtnT3XxhuWNtHnB184fm+cIS2RcOKybZyujJwLtuxgYEx8s23qLWKFkByg+yywv
	 HruTSQmFAnnHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6161C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171595514279.26008.14700673693407365748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac87f3dc5bc21959ec59c06da2f159dd0c2aa7284170779ab7960f5ce1f01fc3
Date: Fri, 17 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715955142
