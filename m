Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113A11990CD
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736789154; cv=none; b=jVu0/jBJ51sL4D673/WpcsFS6+sQ06jSmKue+QpYpndhskZqatXJYhZmVlibevpN75ilrMkpwsEpcMuZexayLAeT/EieBSIAp19xiNY85xkueBENMVKb5SGwx+a0AR6EwyuySJ65nWQW7yr7tMRHDNgJjSFBYwseEqrZDO+UpB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736789154; c=relaxed/simple;
	bh=LZ2m0krH+oOlkh6+zdH+UFFSNosuuoPbtr7LIOaMMJs=;
	h=To:Subject:From:Message-Id:Date; b=X3vFInnZPt/IVjaldZJY4osmLleSPeQ+OaMMnpggg8G5f8lfvdsDPN/kb/xxVHBt1WH79un3o1AhrAVjGUobpD6sCUqHwVzgYDXQmWFqc/Yv3wVolv5BkvTz2DVLX0aPeB+5FwtXBMUzzFK+Ah6wxVePv5/1qLb/aaAkEEq5mok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C25gfmhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C25gfmhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFC7C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736789153;
	bh=LZ2m0krH+oOlkh6+zdH+UFFSNosuuoPbtr7LIOaMMJs=;
	h=To:Subject:From:Date:From;
	b=C25gfmhbFvAYzaZBcU4egp+0lnY3UOhEQlWBXc82vW6rLS8RFeLTQE+uIEUuPBEGX
	 Zzrn6FKpm9C9Ii6whJBaa1fOsNzB2TENcvJUw/Wi2PeheqrEGg/7ydqTc4qZrTKUXK
	 Sr67ukBffyoeeBpyK1y4g08u4QUE0inqhDdZWYOq9sTBVAQ2jm6YdXaNp798KTT25e
	 b5MjdJE9gYnJ2IzLhKL5rQMZM3f3y2rJUHezmMS5ZmYI201biKUAgxF5Q8lwC4BAql
	 cG6hGcSjH6OEDtVcspPUN7Oha4NeNaPhHwlROrtgAJBFlW6vQ1VkjVs+a3QliNIfZr
	 Y6kooA6EpWibg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90563C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678915358.31523.15651716802396484507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee11004ce35c8a93ff27766e92da826bcf36c061fae3f606c54e130a8e3c8d32
Date: Mon, 13 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736789153
