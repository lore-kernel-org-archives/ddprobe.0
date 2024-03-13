Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD233FB0F
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710331097; cv=none; b=V5rxEXyQRKGGC919PPRXRZNAjnxLOpNQeCcakHhwfn+8dTAVWPryuM8tnaqdqv0WQwXbWFSJrrtZjwjMBMYv/WxizimrryFaNhc+GT0QkCGnq112Tq2BjHNK3Ef7vju4HsCx4drkOD89NpZ+9KTXqK9O98b0X14R8KKD3jRzvJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710331097; c=relaxed/simple;
	bh=Vb/YLGkJsQpJxboZYxsIcL5376XPhng9bYJn00iRIXA=;
	h=To:Subject:From:Message-Id:Date; b=ZNCH1tSBluuK/yJvOHpDqSxHExmcfKqr8ygUXDts3xPfb5mv+XzSreXAgP5t2rXKyRIzSLYeu+SURlROcBqkdLLpLsmTmdAka3//BPuWnSoFUF7Mv1VnCvVeAfABR9Viah7e9Yc08SzrVh7mNr87KujHvuvR+/U7WTgh2xjs2wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C05Do+L1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C05Do+L1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A77C433F1
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710331096;
	bh=Vb/YLGkJsQpJxboZYxsIcL5376XPhng9bYJn00iRIXA=;
	h=To:Subject:From:Date:From;
	b=C05Do+L19g5Gnc0Y2cDzV04XzctqsZs91WxpR2UzqHg0sYp4QxUySqcA9FWm23rOl
	 Gp07PtAh60K4ei8NJILbyiUTG2bfzITpF4V2wGkVMU8lyEjluso0RKTmM4E4TCzMIo
	 QhGoZ5n6Oc3K7kheMuR62XBwFjCmqvWYcAgCEwM5fLlRu3CWnd2/4j2YgEbfe0cDfy
	 y0Q7N14YcyGXUvRRjAycg1yzOi5ARDPuhIQCWHGztKC+we7MkSvzMjnzSZGnRwVRvt
	 HeoOeCX2si9kzdEhrLAE1dbT01OGexWmbMq5WN6pszfOKvCXRYtilDNo/x1U7dLr+0
	 BL3oJQxs0bN2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C703C54E58
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171033109637.22120.17656739036541414233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628f323c9aafd5830db25fb8371882b98e644c08e3b8783dceaea4e4287dae26
Date: Wed, 13 Mar 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710331096
