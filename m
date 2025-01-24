Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B72921A425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737750354; cv=none; b=F3kFANsdQbb4l+trGNJ6Sjf4ldbul9JHahyg2BCXQS6d/qfc9JCM043gRcKAbu9lGGFERxHh2Lul5VKGz6fzyXQ/jQ7/21Q+iGicSqu4yusxn91gibc7TfocmTSlZk1tUWr7xB8dq092b5L7zfU/4K8EfWOZ8ROPmaacNj3EpuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737750354; c=relaxed/simple;
	bh=3LuHj5pMFsCj+wEeL8YObr8EwZUN+Y/eQrvhTIxoOe8=;
	h=To:Subject:From:Message-Id:Date; b=IX5wCeM+6jnPqnVuQr6uqiDT0m/zASfWgclH4EP+XcR+Mc35Zf/fE11s6cPnhJT5kjR9KhqWdw5qb7LVXYZSt2AiXrsgffO2IdJXMdAD0Kf3/u/vYU4U3z8Z1p+yrVOZX4Em7bgzolOXVuEfkWFj9fVi2IAFKJ+JA6C2hpMdppU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvF87oB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvF87oB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1974C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737750353;
	bh=3LuHj5pMFsCj+wEeL8YObr8EwZUN+Y/eQrvhTIxoOe8=;
	h=To:Subject:From:Date:From;
	b=NvF87oB+p8W3gsI3nVoIqeO33CKZudf0+s8UKSx6RCACXcj7b9bAGE4wiyNAI1NzB
	 E8xJRjA9L8LrIEP4VLyON3wRNbiVgEbN78nZQgf2uD6I7hJ3IXg1nE+xE8as6AltvQ
	 eIUsrBM/hLRiRvWrH2jnz0RnbFbRhUk9VkBYsm2mCdDc3MD+ANcBGWuyH1vECcDJvJ
	 Pucy0T3VVG/f5ELMf80ebs7hq9y9+JJPvvIgOrVNid8f5Bx76cC8Ff4JBIh0LM9zxz
	 GGnA4K/q8MYmeLZuTlV7so9nZSjEwRc6zOvFgoeVe+fC5raa2PCBhOgA2fKGtK0Ucj
	 K5F5A8ENX+oMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB22C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775035366.3685.15152451231214592555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35d58ecf80803c40af67930a69b49174e86c9e066184d830ac0a8f9668c85f9
Date: Fri, 24 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737750353
