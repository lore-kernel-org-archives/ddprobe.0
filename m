Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464CF446AC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 21:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715031743; cv=none; b=Weyd2cei2+bd0r/AvyLC7uDaKV0k1wvGb7XXKxKyhodK/Te5bQCumLc8Rd4fi/ro6gAdAlSI81PfYoE3CFSJUHL18Fd8s9oHSJx0b4VBZ1kEZ5NnQFykrG7Dz9FwUyqerN5QNj0iui089gu56kVUAHFBY24d8NSFY3epoIwu6ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715031743; c=relaxed/simple;
	bh=QQqJe8uVdbRMmW87xX4VtfCkVVv1uoDNCJBOBAUQI7A=;
	h=To:Subject:From:Message-Id:Date; b=LaOzgQIUd43JW0x4jPWkeoyepPmpAFLCd0P+4Qc5HDv/gVDv29Nauj60ajDevczIGUCqIXCoqR/htlTqVcR5Gac/tewsYgxmX37sve/JqxQgZCsI9b6/KyLmtvgC19tsv4QuaPairSCXbNi8iI8IEsS9Okp1/WuPBG9CKe5ubrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYdhdb/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYdhdb/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77B1C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715031742;
	bh=QQqJe8uVdbRMmW87xX4VtfCkVVv1uoDNCJBOBAUQI7A=;
	h=To:Subject:From:Date:From;
	b=WYdhdb/hfXSEeUQAIiOPPJJa9sSYx7L8DJkiB18+Nah1YMcakcdzvB7sPiQMsN9w3
	 qUsTf/qRWV32T6XZO0cGN0M0odxil29YdUVoEENxoE5d2Mxl/wpxEoyWiwHH23kx+9
	 2q/PJ93Ab6ZkxUwVtZfK4lYxnOfAZw3wXPcSJCXfHdm6hWoSXVzglaF97WEqWh9n7j
	 ggwCo1vAS4VO56W0X5iOupe7wQ1CMZoCfNDYAOQHLZgWx+5w447rG4HClcHVrdYAgZ
	 /tW7B1iBXLx0PlBvgWKfY0g+xjW7LWe2wCP59DGP41OtBu1t/tdAbIJjMPGT6Pm3fw
	 1t3PEUb5KBAqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23E0C25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171503174277.19669.8481849271884043232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9672184e6699cfea565056cd9a5a710611f95b6cd9bc6e190e53099103ef0e4d
Date: Mon, 06 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715031742
