Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C5A1991CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747687194; cv=none; b=I/knuaPVMYcyEuiqMOQ0Sfc/dO3n5W9ULRCtTfM3yN1JI+hqD94CLq/qKSvWbAWyPT+sIkWTEgO0inWzOLP4njzCPeHAS+aL6HyfZ6JW4SVM/hZAcYrwfuopj2QbnWnF5HMuUvU82xOdoxhpqd7DNLQRKszRpKoggYLn3Jx/zjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747687194; c=relaxed/simple;
	bh=hysvCkr3YmIGKUNRzKajxA/929USyJFGrDiuDr4eF7c=;
	h=To:Subject:From:Message-Id:Date; b=dFSXn3aoTtSYO0SVH4BC0hgl/U7jpHLLOG3XJW1bq723qIbqm966K5woHYESXArwhcOPov7oY6FxO1PQGE2KgbgGyrjoSLGRgh4VT+UBBcLAiyHOgoYvJqLmzPAURE7zMiWsDBc0p6a/OI+jtkaypIljcgZTehvP6Ry7gv5RJYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poA6aZ7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poA6aZ7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30A5C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747687193;
	bh=hysvCkr3YmIGKUNRzKajxA/929USyJFGrDiuDr4eF7c=;
	h=To:Subject:From:Date:From;
	b=poA6aZ7ScaKCuQHpGpEr0v1BvzIPrDm2Wxe+2e0AsRRC0vjsxTaAnfvA5RwQU08mA
	 xCWJu83sDacoeJUWxUlCJRKwNYYufQgf3GW9fVfYtzaVuvbri66D+KSrvKR4e1oJFh
	 OQtW+p3reIIS3gQVYfnkQcFlHmpwov7Z2V7izXsQoAehTxr1XpdpCsKETJbbBcF/rl
	 Ob4feW5LSYEuLUau+up98XdLSwKN74rwHOnDbIuofxxqiq+74MRB8JZR5jq6hPKzcx
	 /FfUVqEMiXqbyzzKBOLh0DzkZhaSi+nQ2k2SDj/3aQ85RFrs4MNWPLX3fMc934gx1F
	 X3jwSJE57OwVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18CC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768719357.12729.11017956656354075382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199426edcf04a9a1181d3dcb65925bb29d6995ed4f9ea50e73b66b01766355dd
Date: Mon, 19 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747687193
