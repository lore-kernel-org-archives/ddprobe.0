Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3929147A6B
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761635994; cv=none; b=g/PJ0cFMZLpgfCaXpTdeSvy6GGV6F4xboIaljVfsaHCrXjMj7OF7z9XiOPm+Oq0UDWw5lvPFXnxk8mjE3psuwvGzdcvufsDsRTJEykAl2UAjlMcJulbnmL3t63cBCX8BkHBREaA+QuaWa8ASu/VhDZCB4W/SkTRg1jAMNDS8rls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761635994; c=relaxed/simple;
	bh=sa3XmkeDAYIGlYM7noQ4GxrdLcNHSQMhUoThprbN+as=;
	h=To:Subject:From:Message-Id:Date; b=sE1YgJw80Y9K5h2r0AqSP3xkh2fsrn5yFcetQOOzQtZz+nUKMwlLcxkV3AnGHf7iB9swPrdyAkCqRxiqEU980RlAuZyCu6VEZw5lt1mF7EzVr9SG0eWoZHR++Y5MOUm4qV2IMUNGIxyJyPLrZLjmoYyoODPIJMz3B6ypuCwHtdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsOjTt0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsOjTt0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A171CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761635993;
	bh=sa3XmkeDAYIGlYM7noQ4GxrdLcNHSQMhUoThprbN+as=;
	h=To:Subject:From:Date:From;
	b=jsOjTt0D2DWOe8ZOGkwmMr9kjOjF1MCpmOV6ho2SNOrawkPXk+e/P+hgWdBGU84NA
	 05jcd3AzvXhg4mp/I3SURq4SXzSKx122P8n1agTYynLtwaG3SMfqypapYFhQquRIJc
	 Blw+q1aofl0BkgAo9bSV6ygL0+oJC68+vW+fyi7aUDqpr9CY3tCdRutoIexQ3E4QZf
	 1LhU/xUpBgpVv8C5gznzcsdj+MzljpfNp5njFtqvjbvY/MIDLZMGZNJ71bEmPxSLLN
	 cFx4YP1eU+oSpc4j2B10xqRZAacreVg85gvLQ6++PvisJvrHtH/Y9k84RiTq2+4VYu
	 nYMYYpDk+9cmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE7FCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163599358.9572.5937085418284337615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85508b8b7f0d94a088558d35d8aaad9221823e516e80789b83ac6c4c550de552
Date: Tue, 28 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761635993
