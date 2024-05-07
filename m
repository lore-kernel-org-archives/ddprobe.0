Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CBC187322
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715113943; cv=none; b=WJNbHFghzRvkDZ2gprvLftbGopf0SpXbk5DENX1tq7WTZUGzn6re6+0KZguP9WaDPRu22Zr6k4Ruq0r8wUKz9jGJx+mIJYYBLSbYkjWwioIadNGHFEBMbEau4wpIULWS1YxNDacQ11ejMzpkNLPduiiJCbdEj6JH+NyGg+DoxVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715113943; c=relaxed/simple;
	bh=XqKAc6J7Rn89HOMGJyaRIQ8SxLU+m+xg3PNOjY/Ynbo=;
	h=To:Subject:From:Message-Id:Date; b=Bj6hcxYco6uyAOP0LJQPqyEQ582cibSO4L4f0UvPFG7eI/xJ44j3XpJqU9nFARWeK9+RQXA36MGr9TxnYHOzUuiJAPTkonZaBbCmx6oxMCWzMWBHBR0n1U3fzXX+8D8q1OJRNiIcOUpbZoYuX90s1LV0uf8ZtPsO5ew271ceDG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IILwsnP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IILwsnP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA8AC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715113942;
	bh=XqKAc6J7Rn89HOMGJyaRIQ8SxLU+m+xg3PNOjY/Ynbo=;
	h=To:Subject:From:Date:From;
	b=IILwsnP4lMwf+UQo8xiVxHjVHElw7Txoy0SrlIxPDPl34/wDwc1tJbcHt5wHLNpnU
	 3YH9HSmWai4ndHMj3nd/w2U0P+lLo5T168MWqAHwni95ms8JXXHbtFT4jJpvQMyTnT
	 rUCs+HSgl994TomJvZaSMqzrW9KE6nu6FNTCv7KcHYxeXb4zswx0BFgABpDJdUurEO
	 RZBL9NGXiJ5AAaKpqb39Afwzp4t6cHfMYU73FjIpT/g66vJ5oz12W4g7LA7SeFDMSU
	 Wr/VJT9lptXx3l8ui55zz+NhHQdenpmLQnfVC8uHiP+X7n1Z25v6R6Y+jh0Hy28czP
	 t2Cy2dNOAvy7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BCEC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171511394279.8524.11419656478893122397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2caac158992a6f4f996f067c4a0905d21b2f189a60a33fb93e43d4ac7b2c669
Date: Tue, 07 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715113942
