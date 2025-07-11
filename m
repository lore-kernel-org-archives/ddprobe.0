Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1667A27A44C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752235195; cv=none; b=O28XXKCzZW0swXAtWwFxW848/ZHA5e3ccdthR1BDBwp6DSixymoFxkwTpWL/30tUfULXZvaOM5hVHKzlFW3F1Qmv+b0BExhZaz+6pteux7GT+JpNf5ofVj4D18QQapUrsBZMAhjCUq3lY7W2+9NJ3xdhq//+AKeYDo2Ofa3qLDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752235195; c=relaxed/simple;
	bh=TlBKpEgsVI5UUM76GmjyTXkc1XR5e16mfLtaOfjSW5k=;
	h=To:Subject:From:Message-Id:Date; b=B2RqlWPF+vwezfk0H/J+ZScGfyEvJkSHWYJPgcE3lDiBnbSu7iUMVhXc59+7NGgYB7a6lFgCdl0A78yCcjYBwZjDvt1xbBEcBNYORrLmUNQi9Q2xfGjauuPsYHLuLnQE1EMcGIc4zME3JjrCTYch3KA3oFsX5OtFn/vN3W6xGiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2IZxVqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2IZxVqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 983F1C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752235193;
	bh=TlBKpEgsVI5UUM76GmjyTXkc1XR5e16mfLtaOfjSW5k=;
	h=To:Subject:From:Date:From;
	b=b2IZxVqg32DQ/+TXSE0NeFkDeYnp0qzwPYwdM4qe9jfdCVojxZidZYEzzcnjcJZPj
	 govoUaUByMMF18foJfbMVz6Qr+ce3KVKjCzOqNzoO6faAGKuHfgnAXUHW84toQzimf
	 oNy5qpF54Wjg2cpZxL9YEZlluo9MYjf7GXdx+k0imILWgGj+rRL+LfVczo4+1yirBJ
	 cIeVIO4nuTWrOcs5UDxVqAJVLHeAl94ZQnKBujnB80x8OCVPX2VMAkSZgjIC8Iz21G
	 EFwqTXrqMSUf+YT+r7Ug7gAsVUsE2EZClnTjqBymj8T2yeaKgjLD/FpZvAl22bBXTj
	 z4uqoYYtuW1vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D4C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223519358.13130.5939681958969577071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45fb9f9c2dbf115c849e8b156e7f51d90a8922251d00057897349193fa13735
Date: Fri, 11 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752235193
