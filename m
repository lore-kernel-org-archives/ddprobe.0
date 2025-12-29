Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407902D063E
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767004434; cv=none; b=agv/Znp4YGl12hhH7/Ti0+M42eD8Y6iNAi3zFinCGUqqoMx6phw63tkQUnAH+M/cX/uEyaqCygmMMvDvTCnCMcQuzsn8vxN2tyhqfzoDhcmzqSprdUOzcWj8OckugiGTmdbTn7bnlm9mZP5/BRTq+9mNhxZR3/etysywsaTBQLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767004434; c=relaxed/simple;
	bh=nuYhqCtvr4x+QTCcfLBp2Vl0voKQLyH0D/8Sg2QpeX4=;
	h=To:Subject:From:Message-Id:Date; b=jq/op3f2+yRrsP5OCVvlyH0iMWFPxECFRXHOXuYKS1TXtQDsh3OdI5lM7WZsYmtMAUJ8+l+HuClVmUnN6gSYr/C7KoY7enc05aDz3Sblh6Hne3uJxn495Wj4rsHJVv6scsL5pszzUflnlc5u5qr84qAFyTTIDustIJhO04yelIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNx1ZSrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNx1ZSrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A82C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767004433;
	bh=nuYhqCtvr4x+QTCcfLBp2Vl0voKQLyH0D/8Sg2QpeX4=;
	h=To:Subject:From:Date:From;
	b=lNx1ZSrl7OWcmNeLyYNjXJiErNKBwdgD9+bf85Z8K/Rv1IyV0WaCFAnM3RDp0HhUM
	 pTFbeR/U2gFMeW6UCk/IZfNgSYozCwJyl5zqvVrwGRAv9xcTGESk2geg8oCjvHQfJ0
	 JB0mCDVWx0sRBKT2lJfDlZ/BALg0wUe6qU3ruG3SHrX0R2kIGIm1UHflfFrPFd6MoV
	 Ht9UlF3U2DcWIuk9j9FpSwyLv1MQkXJajc9whIYi6iGTPwvhjKg+cNtliD0iRZLrO6
	 qMc54PrdSzq0xTZxyPiIpRNXj4YYAhSBMan+YD6TVEAp8QezsstinJwAKg9bIV30D9
	 GJE5VjXvOO2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9440DE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700443359.17821.12741374001510375577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44fb6705fd43e4ee8f6b8cdecf595f3ee996fca40ec47c2e8c83c3fd7bdc6267
Date: Mon, 29 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767004433
