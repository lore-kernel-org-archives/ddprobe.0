Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE1D13C3C2
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741667334; cv=none; b=PqOUPgc06Pf+mD3KX2XX9IcoPBHZOZCoy/w997rts76TcuP5xXzRaYA0RCQY7dMBu2zgNA2arltZX516GdmvQEbWVhbFWAfI86H3TcqtPF7TcO3zPx9luBgZ9cr7ehkpKMmGT6x3j9TzSp6BHQjbYWnjOvHgWwoR/LbQv8xiqyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741667334; c=relaxed/simple;
	bh=4dGd2pil5w1ysYjWE7tywNxnWZWXQ1ZopAtI3jh44bM=;
	h=To:Subject:From:Message-Id:Date; b=UQt3MLc0bt0hS2WILUQZHZ/3kxUzGPXmAi3HRxBJ4mmmkIJZhy/ga2L0DXDoS6XOkwxx+22n6uI4e+JzkoIiDwLkQN6ecs+qmQS9Cig//TtkVqBl8eCHP2cky/x3sDmgJxr3CLgHhRola0WTOcnmEdtXErtpiKhr0XjrrRzWfvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G27sy4Kz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G27sy4Kz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E1DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741667333;
	bh=4dGd2pil5w1ysYjWE7tywNxnWZWXQ1ZopAtI3jh44bM=;
	h=To:Subject:From:Date:From;
	b=G27sy4KznQ16OdDWMK1o0Lut5FPjetKwjKk/bchbB6jdA1/Jtfou+QkeV0Kkwzg8X
	 VbDJj7KVB6uwN1d8r36Zp6HcFi7Kpa10PvpxkLH4xjJgkQwcnaImby/t3ZrFiIKMf1
	 sce/q+LjiNVt2HOHuJBviuvMSn8K1oMTiDz4bFCvxaZvnkbrak9c69RJcV5c8DYips
	 6gyEuxprORksDWAaW5ZThCqGGezDrTJ2fXUuk6DdN6q4ahoojfEZmNPxtRDqznfU/y
	 uHaFxPW3yDZmedwyYQD0SUvPTvgEDrcBR77m7FoegP+E4ko9hs0cvczP6fPUz+qtQx
	 WGsl8OhEuJHyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2023C28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174166733361.8220.8240952170473336475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cacd8d1a9fc486caf872e788bb1f33418d60b4d84a80a0072ac03ae6fc9dec
Date: Tue, 11 Mar 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741667333
