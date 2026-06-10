Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A7B2868AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781129194; cv=none; b=dIvSH8KQRcoAogROCd8IAeE7MwDe0frrwUGevy5duEUo/fxICBhfc/Cvu76FecQFYNRJu6TPX02SwuKa3Ce6AwDMLggy6HeqpIZgCoKHwZVYBnObXv+1ULe9OthH/Y9nwXVYWe7RV0q3Ugs8cK/NVPhJqq9XY6GZrPJoWdblAoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781129194; c=relaxed/simple;
	bh=loIKMC44DhDcy+LNFAt8fg3Bx7jxU6Y0aYrnjOKEKOY=;
	h=To:Subject:From:Message-Id:Date; b=ajFLsWlv/GXNwaPGRPaoj5MhK5nHiEDUbyFdCq4uqnI+IxYJcaBjNer+CnSB0st81BJ461i0DrzsKG9mrH9aGaHR1KU/0ZdsPvcdyzkXX3+l3LCBjhaRoCQo178D7IWJOIMhPw52c82NxyBdt+h/GfmYEFCz+V04X4d66Q5O620=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNRreaqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNRreaqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C452EC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781129193;
	bh=loIKMC44DhDcy+LNFAt8fg3Bx7jxU6Y0aYrnjOKEKOY=;
	h=To:Subject:From:Date:From;
	b=SNRreaqUbNkcxCNTa550teIqSfmpmZfxtsq6PQXnmagjNgGlwMsGQNXXr97FS5Ml7
	 Amhg50VSqGoJBw9GN5OLvGIRRQc+5RQIGC+HVS8DyQdxI91lIoPm5iF0kviWnK+LM3
	 iPrPIJ4dOnMUKImIqWcdY5UQv/ut3t8vKu/QL0bRAEmgWPL/KH4834Vj/kfNTaLYUy
	 xVtOEyUS2vzNXBF3tIQn0i5BUvzYA3DSd2eXdvrsFxEgVXVXnAtU9OcYP5Aw2ZSowI
	 /RXZ7QG38igxc5q0f66ulbzs+BsGM1ppC55bDGzo1578aLllK5h4Cp89/+trzjSCh8
	 aF9V3Rz70osyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8656CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112919368.22579.18233049645904450733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad27afa3ceca1cf47487519ecaaed809f659b9b06dddb04b042fbbf5a58ae39f
Date: Wed, 10 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781129193
