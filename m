Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA9F20322
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755900594; cv=none; b=YXvO1gVSmO/Kf6kPhGSAeRHhZTY0TMP2e6XVe3NL+cSNEJs0a4DiH4JwTSsIVhKmnHXu3YwEOtf9qKr5sZpa4HGGz+Hxif+w1lgUH92iel0x5H1OCCXtutdyfkL5+v0TI03LC3XApMMGjGQNwKY5EpQfyql6WPoUa0mt6WTdNQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755900594; c=relaxed/simple;
	bh=pyp9xEvmSsCRwMg7/X9RmYC5gWFBPyyn7HV0qKO6hno=;
	h=To:Subject:From:Message-Id:Date; b=R/YDIve709O3eKG72THlsQK62KQo4MxLr2zooOacjPl/wbg4OVE1quv7N2Nj5Q/6BWYj+WLGbt1awn8XdWHoRgJf8Hl1Wi+THE5ANQk0E4oFKMUOjd+Di9RfOGoxhnAKOl9tVK+ZKmBQdtQKxEiu9facEToc/p4LpGXQXebmAaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ca88Xy1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ca88Xy1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB5CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755900593;
	bh=pyp9xEvmSsCRwMg7/X9RmYC5gWFBPyyn7HV0qKO6hno=;
	h=To:Subject:From:Date:From;
	b=Ca88Xy1/7cZ727hTnIAwCJCpnGwS58cmgcddcw+vtR3PP35MgW+NvHKEXoHbYksHu
	 ngDGUPpt8F7sBUepoLBen+mmmoiuRmlUR4Pi2OxDZdSE6WAQcMjUeF3nFDGygAhA+X
	 NSbzq88nS59nqNvbxEJw2sRzmkRui3viycXjXMVFWAuf3LLjLRuSDWQPibeJWuFomR
	 YCkTlpOqU7Mt2LX7J0UqrnOpLtqNayljqiTpTmg+XIdb9jCwtp72uDaCtWl8ua6i8y
	 uUgdFxjkATDV/SMvlxrBrouh3mVvaEYtTAtwrNsWFURcCRbZiasN375WUVcM3Zjxnj
	 o/RjVFIz5jPhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F732CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590059357.14230.12243139114361521248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ded4d33c8da5fa0f575bd6da22ea01b71192970d7abb8b64b3c532665cde2e
Date: Fri, 22 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755900593
