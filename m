Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CC24B1E61
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746586794; cv=none; b=oZ4BSnjFMFGazWM1KNWClWhZ8Zp+I7voZkWL+I6iKFsLA+UR46dBDDnEU1Thr9DnaQVK0QVAXy2WDTbo84bhlsNFvD3EYD9lollRJvdE1t8WiCtTxS9aQsYFO5jmeBL4ewpcbyp4k/6bAlUaV44JAAwgJ88KzYYlBeG+PXRpfe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746586794; c=relaxed/simple;
	bh=Cq98A3UCMKJPfnRjvPr8WYZ00Fhcj8rhZOoq30zXbN0=;
	h=To:Subject:From:Message-Id:Date; b=DEn+8KI7O9DIXglTgMGRyJ89kZu/qhxpUctChlymiUr20CQtbHJbnD7njaBt0+CXg0jigtS0w08FY8TYH/3b6GozIG3NCvrHWJPXV6FQGcP53h/BwfbrKdVw7xldaow6iTvFKVKeF9loCkxkr2p2yjObqlW/eLMGJWxBN4XQ2sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7cK0JMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7cK0JMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2627C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746586793;
	bh=Cq98A3UCMKJPfnRjvPr8WYZ00Fhcj8rhZOoq30zXbN0=;
	h=To:Subject:From:Date:From;
	b=g7cK0JMZ6spRQFtMk9j3gJWSwRdzc+qJ5pPSVZro/t0BzcMQkFRZWbcr1mQIUu3QR
	 dGN/hKNCQSG8NSAlFJGL7+FNh7ebCvA25a9r4hTnK4OUVDiSNBQCImuAPcIHYnHTyb
	 7ztKzTRnVYanPU+l8XL7ygFXCxgqKGvemtsSrdw2QMernXmUDJ/IFuaqRdFNhP+66a
	 UgehKOBYwFPmiS6/GHqx1bEk8YBUzxGTC9AQWNGnFS0jfoTSElEYaquqeU1Igpfb0R
	 FXYqkFwjmNoliUnLqIlxP+Llu6VuhAdVvz5eMKB0rY1/uCrvTAHKgvyQs21KzZ3NxV
	 fuZUOj6vzlNHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA97C3ABBC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658679357.7918.6659492204296142797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d7b8f2acd3fa2c0db6879b28114c07cad06bc84700435836a0b7a32102ee6f
Date: Wed, 07 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746586793
