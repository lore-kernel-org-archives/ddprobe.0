Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CBB347C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756896595; cv=none; b=mZ8/lhqLlqu+ksP30ps9geyI/5RPj7kMSTlnjIScjEyYSJU4/4WysmqMHuzrQYTBVflIFrCAcawlvOnmLk6pkYipZc3qAN4f0quwUwAwzsR3kgHhxhjxmUNqAq+2N1FHQrAhSeZwjzEFR+vWjj/atnUBQ9i5Td4NxNyzinMfaBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756896595; c=relaxed/simple;
	bh=U1VV3iPNHnYLtmO7BIWzvqkzn48mbD3QIzPy2h252b0=;
	h=To:Subject:From:Message-Id:Date; b=O6Vd1EhTfo1QxRIAwpn9tSSmOG7jLcnnXt4K+njXVQ/e7qf016SSP5Uqi5x6sx9R3SUYMnygJr0FG1BD2OYnYYaKHoYgLEOwn2jrfixz/H3sZguSqBzFCoC6DUI5vrcHg4URo7iwqap7hOUdDAXVpOHJMucd4wYatAcPnD9b8tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCic5JmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCic5JmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21BCC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756896593;
	bh=U1VV3iPNHnYLtmO7BIWzvqkzn48mbD3QIzPy2h252b0=;
	h=To:Subject:From:Date:From;
	b=DCic5JmBGUHKde2itiRCX7thGkCHdIaFx0YOpcwl4LRTZ3nf4nreEwaG7cc7S6szc
	 E/oK1IIBS3/sH0iaGXHouEiRNmGF3v0Iy9u+37YzW8PmjYopOfz4UuxsJs1pX7KJaN
	 8tiJxkfLDBIpxSSpYi/pjVyzxBcpIWZhN3XbNxngiT5rENMhL0cZtZUGyDAWIoITkq
	 snDo3Bc3fbSxj9nIXNw8VBntkDXSXUaJQzn6yLZX2TK7GktrrwRAp3ZuVnWYNcYqyD
	 0mOjif172vro1VF7UwK3l+y8eeFlng2IraMdFjXnIA1fSmzg5Cn4QeigJYW0u4yMId
	 WYrcIN2aZU1TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90035CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689659358.16067.6489600462558592900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d119dbe5c2638e4288983e0feb7561e3841839ce563b03a91127a841b5ff6986
Date: Wed, 03 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756896593
