Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F252F9C23
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761172194; cv=none; b=b1AjkYgfALSQEvKqcH+pmEJ5bzlw3ao1OWsj2fS2601hSs9GtRONtUWFxXJvzEGZxnQqigbwuXsfxgMNBjm+Hadg2dNLxL1Mzd7/33wrcgzQefyLLxq+LqNFI7Sx64iaC4JuctUDxclZlUpVdsfBcAsVOv/KVVhojWa7i4QpcVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761172194; c=relaxed/simple;
	bh=kia9fJ4Y7gCvDx0Qj1Hi18X39zJqjtEiz+es0DmB4bI=;
	h=To:Subject:From:Message-Id:Date; b=SrdATGQknRuWcIqB0faiMT/fcTlZIL+oxHDtHPR3nrqQ0GZS0qBcAwfMpFFwxJaccs0RIlUoMG3SqMZr+DXRorddPuAeC/bM74+ci5J5TrsbQhFbPpSWGSoC1qTx7HZXOalSmJuDzZqMqh8mx1/9qdHHtzYyBJC81JztJzYsDXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqgN8MSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqgN8MSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4295C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761172193;
	bh=kia9fJ4Y7gCvDx0Qj1Hi18X39zJqjtEiz+es0DmB4bI=;
	h=To:Subject:From:Date:From;
	b=VqgN8MSUyPtZY6nj62NSJtUEdjH0XiU9EmAX3FdikCk15nkMOqQnci+3nFpVO4/x5
	 SjmwOcyi5IaKnF1mKED5JsjfHmAsXYaYdPhXuz9QQOTkX6H21UL2ZnUjnTXWOQgH5v
	 rX9yemEnFxLZB/5X4aLj8cj/oGPqe6qD4y7vjKnufu7nEi0rTYJ5XnmTPnwUWV5Uoh
	 f1jpWRbRuyWnYyTlMMJ3QZR+4ukOT+JzF5jUmpvGFdav7iSiGXIehlT5+WPqVEwzH4
	 MKIGOl+MbVlVdn7D2E+bt2DZUrD78bTpkUGgtuYTOskmnDcqF5eESKGV4AzOuoj3b7
	 oyE05kvoxuRTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBFCCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117219358.14410.14749740886382003391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bfe5c07282891b7c6cda08bb46d3b1d427710474096b0b9571f528f9c32227a
Date: Wed, 22 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761172193
