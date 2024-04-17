Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8B02744B
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713352163; cv=none; b=SDKDE8+5wOzhG4Evw8L7JjZke0c/3Z5XjabN4DQ6zbKu9tJ1jXbaxCYruomBbuLsBSAi6YeMfTZ7eMm32IAf10PJ8NonZSDPIPiAHuZi3m7ezmC5zBQoTBQr9NLrsG0H7a6qEm/YfA1DuKi/zoMbtzyuNwSrgsjDtmRSy2Q9aX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713352163; c=relaxed/simple;
	bh=baq5Uz3bMD7nPtI1KrbMYQYVu34eer1gVBhftjo0ZTg=;
	h=To:Subject:From:Message-Id:Date; b=ekewTOEqVxtNR+kZjCtUREDfsxA+0niQtz6yyThTxKrloObeHB7rs6xu2uWDYyjq4wZp5Ek8rFQCU6w0OBgpTgbr/a3N65t0xyM/a0ZtFcnv7FZxEFYkV45r7FBFsoiyglYQ1W+LDG88DN6RuiShUeQ3IYJ/fhzyyvmtyX3u7IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dlx4wmwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dlx4wmwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FCAC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713352162;
	bh=baq5Uz3bMD7nPtI1KrbMYQYVu34eer1gVBhftjo0ZTg=;
	h=To:Subject:From:Date:From;
	b=Dlx4wmwFUuCkTOjpibMwmdNmqVmpmhTGzXQl7vsfRSlDOGi6I5o/0LWr2RWFb0Mnp
	 8NbwpDkoFJiBw/Q7uhcb+c7ui7u22roY6tDE4QVkW/ZOA1nES5QdAXiOafunRQ3px0
	 5qnx7YteQifduUehZCbWV7jjL7VCPs9Y3sSj6kOxjRtp7JDrEKqn1A4lDBfwNeb05a
	 D0r2u66P7/va3WCFtmlBMZBdJSUiDqRId+CZtJrmIjtg4R9LX+gqq20S4I2gan+Eer
	 JlBnkjpZzEXaZEKCQ/xS9bet7iNvTANPSegRugyxlF+ykSXtgMbcW5uQ/W7g15gFql
	 KRPds/0RpPs8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14DCC001CC
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171335216278.24465.10302114032610669528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b56e7c7b4bd9781cf7165c57718a7efeb2ec88c96b18ec44a1cd0070d6905cc
Date: Wed, 17 Apr 2024 11:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713352162
