Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B002F362A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769382234; cv=none; b=R010FJDam4m8hpnWu3eLjI8mSwgnbkAbkBRu0U3LlPSVDeaH1ivxhrWxcWhkJO49ajbkygt6O9i24wGl3xUVvMcEg6qePwihDVy81Oj2zz7Zqb6e44GdRzbZdzAsWnE7a3qHndeoMQlUJLul1wFlNHIG99tnuL83zzY3IJhBQ0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769382234; c=relaxed/simple;
	bh=c+Ia0F85NDP0OxWjcgn0aVyCN1ieLhFMy8R1/L2Oubo=;
	h=To:Subject:From:Message-Id:Date; b=pYQKCkKZHyU7/9saLuNPUbS3C2Jyd9ygzfyug1d2y/C0JPIjaImVFrthA1Lf3zxUW45EfG8+8nFb9/LMowD0tqrUuSogGQVJCNdlD8e5FrMnRp3aCLlB4HB6zAlQEzgCL3WsDQ0L8JHBtA4L5u7MStBUEI0/EWpAZpn5DN71qOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvTxXfg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvTxXfg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9A3C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769382233;
	bh=c+Ia0F85NDP0OxWjcgn0aVyCN1ieLhFMy8R1/L2Oubo=;
	h=To:Subject:From:Date:From;
	b=WvTxXfg0XZW7vuUuyvQ+Cqr+fWIRNQTkyho8+U1a056AatyEMnFFQhe6564fHw23i
	 AyZjYUZbnHFg/h0rqtrXReYtiMAFSe4HzZQxeFRxz7SJwJi+908NgpQAUPb2hwxCqe
	 v5zxa4XuIn8IDpMVWX6eWPZDUWdOzvjG1gDYomD4e2lexMDMf3YfPgwAsdJg7nlC1R
	 k82J0bIcgJQKBz8/dzcJhrB8yrT4hSGT24IV4sII5CEQM9fi6SGRJMGLeeG5YiLa+Q
	 8ybn6Nb7SDZChgB3tIvsEAkggjoeeeuDgn87y2N3Dr8hlULrX/Ix4QYSPoljrTErqU
	 AyK+T+2I8qaaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F6E63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938223358.5391.7146187978231115046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e700366146d2ba3ed59976aff57b699f4e62fb417f2fa46e79fd1560493e304
Date: Sun, 25 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769382233
