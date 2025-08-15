Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3827A2528FD
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755302394; cv=none; b=os1lAiBPaVsWhQ8zpBspQjh1rmHEqaQK3l6hAos1MMm8LR/j6BtRJs2O34+VJlK5eh74UtlodJMC/QbF8PrPXy0lJ/FE2XaSZ4/pAoabPviE3gm/+ylIMulqLhF7809CRs4z5kHaaeE1JQHOn6ZTfcn5QbTqt8ASHNAcFHR0y34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755302394; c=relaxed/simple;
	bh=jc5dei7qDAgkJQZM9P5z6vi2wrXXg7USt5zD0JT6z3w=;
	h=To:Subject:From:Message-Id:Date; b=Lal8DeElj7obzHFJgWTdSoxVzJx7zbe3LGtSJ6XDJGvZanqCuIHiw8X3gYknyQbzmHlj9E6537hs+bESM7jgd96Kq4sjhIpWu0PJAiCf10P1zS/hZrZ1ZUsGXQy/gP6wOlHkLSFKvERbQKMc2FRXeyMlb3uKjv5kdXgrXr7pktk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa+TjMN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa+TjMN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B87C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755302393;
	bh=jc5dei7qDAgkJQZM9P5z6vi2wrXXg7USt5zD0JT6z3w=;
	h=To:Subject:From:Date:From;
	b=sa+TjMN/5lBVTFhgCQpMCOf5iDrQEFC/FR2hbDQ7SCAccV4qfbv+wACi2YpYJMYMF
	 9vAoO0lsJPfNWW7vkKBui+/ZQLLNH/JVqRHgYj/9MZKQ7R+R6jFVkDrDOg3ooK1w2I
	 D0HcG2vBRaoXJqk0UWRi2G/GqQNX/hvU+uCIolha/cQK378XCkbmLOjifRciJ7vSCB
	 IM4VIFQtxj2ghPAD9neAGrmGANI60gd0YyS53DX2rMSCnHaNnmJ24RZiTz988pBAeX
	 oA8dyTua9cKKqOZsnurGICf6u/dTUf050+iwLRSqCdrSt+hw+nTaqyDop5Y2rNlm1e
	 eyeCtJNa1wYOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92042CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530239357.25297.1911160372311845004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85eb3401e01708f34f14f0b6a6d7929826b74918bc3b8c79d11fc4a6aeb64353
Date: Fri, 15 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755302393
