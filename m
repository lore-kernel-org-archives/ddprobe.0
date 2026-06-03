Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E93402426
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780472074; cv=none; b=MNTBNphPhIKD0WKqlrbzHUSMeZbdPTSg1ZBLuuDK//a2s2tTUGFdAmEZ5g+U8Ue/JJn25IzBoNTbd2UvrF53/a8okxg8bNMhnMt+FqA/4PubkYzRIcA6jSE62FpFUO7G/RNGlpVjUf5LcS/7fJvXiyKuTxh3MP/QcFcMnI2GL7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780472074; c=relaxed/simple;
	bh=zkaGj6njDVBkqnC11oHF8kOAALwQU0NZ7tMN04nJ+wE=;
	h=To:Subject:From:Message-Id:Date; b=IeXvMQKt8T0jgh40Qw/E62wtp9o3QdmNSp+SDzGQT5ya1+0wG2VCdah93aIDIUVr6hg/GL/xASKFSGXja2JumoVo8XA9OilUhq1L/NP+38tdPq1ASiQl44ag2fuzEz85D8uh6lRgSIITYTnip/vTetcQ7f+DmIzS3e+p04tOd4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzf493dz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzf493dz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BC3C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780472073;
	bh=zkaGj6njDVBkqnC11oHF8kOAALwQU0NZ7tMN04nJ+wE=;
	h=To:Subject:From:Date:From;
	b=hzf493dzLgHXS34QOOfr0XXv0PGWIq1p1nqY1/G2n8IybcsgH9zcpKTpRBwVurZiL
	 KS6WSbVsrloFd3KUPqWT8aGCTtdSiiN39dnIb6yQw0jKzZt01juvnBXsQQua2+bvVo
	 UTkemgtH2MIdGGfSwkvloafx1LIuy+dX1bq0sx65PDrMYiRtMVV1YeNCK2Vj9U1ngM
	 6CDm/FHvVks/NEnlL+Wab+c0GUpPADPGtzs9VPsoJn0o9+RMWVtt7TTwTlwLJIEiIj
	 08zfmsj0MBE3FQH0zt/WsqB7f6snjrkLbc+CHLiB+3L3QtlpPmR35+1yzZ3ApcTNZq
	 2qflSCyBK4nOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F3FCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047207368.10288.9591135953102385796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73eae012eb97d51fe764d623900f577d7b5c8416cf66481eaa31ef05b59f2d33
Date: Wed, 03 Jun 2026 07:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780472073
