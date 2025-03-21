Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BA822D4CD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742575194; cv=none; b=NNtUCMh64raf2IWco8LEp5r34YRxhEEJ8Utjk6WLs1cXre2r6hycOST02DUXLYsNW4IuAMqgP8HOoMXUlpR3qp9GZ3UgY79UG/wY2KaNUV0dCUkL+nr77WRl8sAItaSseJAIvpbv1h+hUSEQkYBUziKZwhuelOLNuq9BVMvoTHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742575194; c=relaxed/simple;
	bh=k6bzkVnuSsDZTYn6r7XLkBgxHCy2DbLQxGzELglRQU8=;
	h=To:Subject:From:Message-Id:Date; b=jkdbAalqbBAcwI797bmHm2ZoIW42HQ4ekNnfJQieMIxyCTAmzBNw3tadjAATwuSBn+7KQnr701C8lmiE6ReVhMzFQL+0hdYLeCfz1sK3FIaV2l1ltYLvZsCYkPHTCYUfLs8DgYzC3OnUB9rhXxaoOBp55ThkJ3aDVC0H62ktlFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6hS63PU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6hS63PU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBE0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742575193;
	bh=k6bzkVnuSsDZTYn6r7XLkBgxHCy2DbLQxGzELglRQU8=;
	h=To:Subject:From:Date:From;
	b=q6hS63PUPoUd2ZX81UyJLkdBhGgTkuX5eqgWhPRn0gBWKFjEWcx81qBRw3FNEOeFH
	 aepRx1Ct52GvsnZrpBUxQ/uhl9PVtdqF2i/JmmFi5K3JEMRO3BMwvFAS8s2n9nqFU5
	 2t7XUCdLi7H7v9Lf+CQ3k72uVJOZGJMweaaLWnRgoeCfDeMuobc4gVRgXIyWu3tlGm
	 Mt8kv1Q85NPYfnDR5e408kRXRrkyMS5O1gEC+C2Uy/+HYd4jk1dGo3XkM3Qlgp/r2J
	 sa9FpYIsICXDCO52Hit7ZxYnlqmDpqrANk2jG6HPkyAWdMoSO+ThF9JY/i23tSMFzX
	 59gO9hdbUR7JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D199C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257519363.24161.84079027625340481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201413fd9cdc1733e8d185ebca891a5cdfa387e05e0499fbc55a5ae5d262c499
Date: Fri, 21 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742575193
