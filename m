Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E4A2EC54C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783323515; cv=none; b=CsGE1W7aiA1Zix4zOTCq6kLR5gxbQErB5tZq4V8aXub+c/FqpMeMhY/t1vU5LiN1+TdR2iQucRp53OQrICv1np+S4zcHqjcdvlVrIFTeDB8OcwgDs1B3igO0DlJOu9fDMKGuERXHC4G6yPryFrtx6KIXBgtxGShcQHbkU0LVAAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783323515; c=relaxed/simple;
	bh=K74/TLmSeC1amTnbw6O8RmACH+g1wbeBGvcs2w4In1s=;
	h=To:Subject:From:Message-Id:Date; b=SqkPvhasFg6Q/m+fGFsA9RsBFl9QnmNAhs6Nh/28f6lCWu5xf5+MOiYThS9d0ngs/9I3WEs5uE82b2ZtLIL3AKvhWqrwn7PQeBELQH+cUq9LLiSx12Tq8a43agzlIfVOaO48d7vLKKSXJFdVy1wAuTGtRONoz1Y9eWX5H3RolHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnDx7gxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnDx7gxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E80C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783323513;
	bh=K74/TLmSeC1amTnbw6O8RmACH+g1wbeBGvcs2w4In1s=;
	h=To:Subject:From:Date:From;
	b=bnDx7gxc1wwR6nw8xtKCY5OqTQR+nVIlh3WUG6HRe5H3vCA/YzMtnxtbYVGzug3BZ
	 XyiYswnztHP+ZHefWO5mdJbCy/8a62KwR6TFplT0qpD22HeLkhEMAf0BiKT7dsm/fT
	 SacxBNb3IfIsuBdBaEdjg34dcwKAs1q79VB9qUs1snk93HIZqu6gu6YBnwQ99L0uE9
	 jxILVMXhMZH43PP8bApIDBROrm+63lCUZDt1EuGW0DBma109wb4B1p3YyRdMV8Ji6I
	 xu2rYK3TD4MDrlllyrRQcoydQLpcY82mR1kdsx7ck7dbCPy3HisGVcf6MrQ0U0ybLb
	 QIQSFemx6W/Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0FDC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332351368.15182.10891256017158011298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ab6b0d147c81d2fa040cff87dc32b093e4100722104444e463b9e0dbdcdea6
Date: Mon, 06 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783323513
