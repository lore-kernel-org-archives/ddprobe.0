Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194043AEF4B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777895254; cv=none; b=QpUk2/fE7mQMxbHre22it0jrIJCKJCqpIZ3JFNX35bP7i2kLjYDPlJdhRX0cEmiw8tfahpNqsSRWFT2qmD/ZNczsBWo6SoBzHObJeW34LdAHnCklHAMUqpORKgjgAJw3lmh0kWL/fGEZcKa7fpBRaN0OD3r+hs6cqLmQcbRekug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777895254; c=relaxed/simple;
	bh=9yTgKsUWnXha/aRaezlktUTarNCIbLkCyYJetQoKmOg=;
	h=To:Subject:From:Message-Id:Date; b=HiAUZ6pMQSxXm5aRoYsZSw6mASYKx+7BbRV0wgX1wTipd+y7iW37g2KRs51JSn0oSG8RYCJuxpfpkfalA01bm2W9Z8Rg/Wfhm+wKINlqPXoK9dBJVTOdAy5A09QBY0YohVPXD4s22T0IkyTtEewgUbRcKFNo+3s8X8TQvwk+4IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edYg9cMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edYg9cMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E3DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777895253;
	bh=9yTgKsUWnXha/aRaezlktUTarNCIbLkCyYJetQoKmOg=;
	h=To:Subject:From:Date:From;
	b=edYg9cMkp5LMxd/SUxw9kRBiOi7/zVI2w+1Z1zyo7RD8KX7pSV5ERFlIM9iYfINWZ
	 iJguJ4GuctqBjYToe3aqa7hnOJpJGmIiLOJe1IdGvZPPiVO85YRfIrHrVFME340sgI
	 VCbNa/c8RN5bjWYQ8FeSK/PvHJVcFxffcHZrDl01eK+/jljgqdJR4bRg1f7SxesT4C
	 2mQM2cHimUsTq91OdylC0eGD80gPSZQmB5gJx1f1pyLgxC7Ly6Wa01p3xb9igOBLc0
	 uzkt4B3sE/fgtqCkM+7u9I9drxGQvI19+Y5gpOfRMEV74tD5N95D+AxqjMudacCd1V
	 2JYJvCvROmmfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A999FFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789525368.1902.7927686963471315835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd45ce1930ab4f56c44f0d884e3723c890362a07d55ab476e0ae51d07fc7caa4
Date: Mon, 04 May 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777895253
