Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BECDDAB
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723963554; cv=none; b=eQFIv4tP+aI6E8SrBU7vZakh0w+RXEXNpzSTbV2YW45uKk7Wj39ucCIUI7dmo9QVP1dw3t6CFO/HLFJLs5jDenqwrUh81j0tl9RK+vc4IZtR8myhuUz7u9eV10ikcldotT8v7ldZIWBnowcNg5c3KtqoLaqXLzCGoC9QH+DBRIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723963554; c=relaxed/simple;
	bh=8OpeJQUzTKGQhDYTQPXi5kt8mmNthymqxRqwajUWydA=;
	h=To:Subject:From:Message-Id:Date; b=omzWdyyucImU7uGeUDQotDUI2VtoTZPgn6iAPhnv4n5T4GojchXtkU2Pvbube5cZS3YnBlFQkbE3Bt8/4zhdUH51CQD16E0Kx8WEmUoTQfzG/4gAIV84UQ7PcpmOoTd+5VJ29vLtpLmp1s94Q5zXhaUzoawX2mS4ZZWxgmT0beU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ED1aUXNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ED1aUXNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFABC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723963553;
	bh=8OpeJQUzTKGQhDYTQPXi5kt8mmNthymqxRqwajUWydA=;
	h=To:Subject:From:Date:From;
	b=ED1aUXNeoepR6vuDLSBZxgGx2gbSILEaKKf8ofwVEVAf9TER+ERVXHzcF/HzOfcNH
	 2otFze9o7c2hwFYx2GmIwUk8K0Gxb63gzb29rA9/tS+lGO7zBCzcxO6DevzbQHp3q6
	 iVwLmOiOGwPHMF1LeFMTpA1rP/8q2IJpR3KPxeeN5UjILJpcDt1aAMIW4IwRYjSGeR
	 iIQGmoGu4EfiZKuh/zveEprNPZRnzkL5afjvZj1JKrIHBHdzatLtG3+MATXr8/wzkD
	 3PG3c2GE6d3z0IAqlxm6b9MJrGo6/cLKRy5gYcvdFXSwJkh6nsoCnTvZ6cqJs/R33I
	 bVjL2Al6hX5fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B252C5320E
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172396355362.9865.2175815508121236019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1605873513a243ec71bfed709fe5b9566c7c039f55bf1677a41fa929739634
Date: Sun, 18 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723963553
