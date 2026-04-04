Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443C422652D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775307334; cv=none; b=lrE455Z91Xb0XF6ipb6MtHyZq8PGacL93Gs9+EjB9c2jxiUthOfLK6Ajy8J+bafrdQAhpZHySTM/lJECvupD7HXkwdNgyrPjM7rRETZIY6SAhQiK5OvSM9ZujZJ4dB+eECC9CmwbXg62fN3GHOCh28Q2GyLjAZYIA66Moe/DG/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775307334; c=relaxed/simple;
	bh=dxeCDgAPF/P7X1BbQTq/fYY3FyYjV/ehUZkTsohT2mI=;
	h=To:Subject:From:Message-Id:Date; b=aLHwy0FbBgOBj1TwQjsd8Kkqws8igw75nABxmFH2L8d8gSsvj0XgDaoWS76+0a85DF2q1y0FC+BZj+V0v7qfRiSTTl58BEDEGKxpRpJAFyfKzq2ukH41mgbChNJW6mkHQtLAnSRPOZGAvb7fo8LsI0sEa2ymGdJtYqZ25V2Onso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJ8ZxU6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJ8ZxU6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE21C2BC9E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775307333;
	bh=dxeCDgAPF/P7X1BbQTq/fYY3FyYjV/ehUZkTsohT2mI=;
	h=To:Subject:From:Date:From;
	b=JJ8ZxU6pwf6Y7/lD3g6NUIlXf69fIpIoglu+ehK0Pyc/q36WyDL1BnSTRWSiCKwY8
	 oVyDqO342mWK0/VVWFG4UJYlhQT+aRKBn3DZ9zVWtgnZS0e8CriqMcLNg2TTIVpcTc
	 lHEgl/Y6sd9shC0AD9kMg5DPG/zbK1B2LphdknFOKHTaFqjS4rjifexOCyzDR3PKD7
	 1tQhlu/HWMn5IdiWUhjPblbt27yMKfmbRhn8XbysU1W7C6o1oU0I94G9EAb3fqeNc1
	 QCSMEanEeW+ihDMotFI781IJ4r2nxkI3BRVFbPK7X9XKjnw/sSYHbNphGj0eZTQpLp
	 URu7FwrKxCbTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB024E88D9C
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530733369.30998.9900193314677831052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6327cb65a595591736f7fa2768a96cb9a6a4e6c7a662a6ed3afd9b537dfcb058
Date: Sat, 04 Apr 2026 12:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775307333
