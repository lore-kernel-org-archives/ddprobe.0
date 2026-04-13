Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090C6335BA
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776058654; cv=none; b=qlHZSE2X8Ln0YCQYlsuEX7YMmjsO9aY5YOvBMgcxVbwMPrlPxYw6P9lib4SH1sNf/4RmDRs2TsjwZ6tdHzDwaJQkJFgK5sHenxogwJTqsPCczQ0TeBcWFiBm3SAl/Q/db2LMBHDUrQCQhyuUenSrYzDs3zLa1ZweHK/h+Cd7KT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776058654; c=relaxed/simple;
	bh=754ENmf4q/Q7IIqk+T/xqCtrJ77gUxXu6oazR1G3F5M=;
	h=To:Subject:From:Message-Id:Date; b=BfZrL8z9Eb8Pf/cj7O+TeUIm9/08SYsmxtcwBf2mLXL2gg/wBBQbyCO3PCDFXgtU59stnYmsQhauacE1VMlS+9b7LQAAPeMWMkDRCPFTO8Kd0eJBxhQ8R212V0UqBEL9KW2o4ugScgujtpbrxi3SpZ7XfooFvZaLyqiugUADgNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZ3Eh1sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZ3Eh1sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB83DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776058653;
	bh=754ENmf4q/Q7IIqk+T/xqCtrJ77gUxXu6oazR1G3F5M=;
	h=To:Subject:From:Date:From;
	b=YZ3Eh1swQN5d4NXeXSn4cekFRCRWxxqgizoyb62yftXv45v3tlKxUPIuT+vxv/NFb
	 TcJrFQYembvzTV1fIrkQk8uML3EnGZ8ellFpB6d2KQR9sOCA7RFW8C5npTG0rS5izw
	 gFHlGMVQE6Q5980AwxWntH0glVWaN+KafKsX4J+nQojaKNB5zGtfsq/nL7gtGeD1e7
	 kCIJWCGQhVfi8MiwLFILtZz489GqRzuxBOxDrQrrGgTI9A6R+mRsRToCeK5tqbn7wt
	 DXkBioZYTdRN1UCSXfy/2NFW1XKrxYAr3q6rPdNXHNx4UXC322Nz5/t9mP0W5F1M/i
	 19/lt93b9MjlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E51E9381C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605865368.2098.18349677596073295305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d1bd210a256bc00589b732da0d23aea861993a7ba1368314ce161b4a9c3221
Date: Mon, 13 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776058653
