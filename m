Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57273187551
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721039063; cv=none; b=ieSTUptMg7wMPmjT97o+LiXjgRXYQgwJT3HBfrQ2JEiU8G2x4l0FrpPJgobEv4vj6ZS4Dz8chYHUMKNnn7wDdSCGjL4aUz9ohKigFqPeeAIm5tTTHeRIK1jxmsZ5TGUAwWzjjugVxAy0w+GefZ/LiUTv2yWbFH0S5ihwQiMOYe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721039063; c=relaxed/simple;
	bh=eXB6Bqs+szbytUi2okpr7wM1aIOP807/5r0Dc1NmZPs=;
	h=To:Subject:From:Message-Id:Date; b=FsWhfFcT43zQDG4b6w9/YA+HQ/iANLgFcEMeUasJi26f2/fNSKt2UbD6iQkBqLCq++4af1Mez9A+2I+Xjz2qT6YuCnw7xl+Wwl5MPMmF5GpQPS7+YhnALEhvmwtl/qNbb96PX6/rrE4B9956MUPfX2j+xVl9ItrmZrsFuPwUAOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njPfafOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njPfafOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B09C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721039062;
	bh=eXB6Bqs+szbytUi2okpr7wM1aIOP807/5r0Dc1NmZPs=;
	h=To:Subject:From:Date:From;
	b=njPfafOy/oGAzc17qlP8sRAvoHTe5Vq93PHi3BmcyNHpJ+dMk8C9meVHJLEGQaiGA
	 xaxFENcD1cOelu0crRL3tXm1aCDEeFTevTDBWERCaPeU6nkeQTS6pWAxpbltCwIOnq
	 RqTjkUc0ip6BaepvYkOgEa5IJZqOSb8N8ocVArxQ9OWRT23NQe43eCsTQRkQCOB7mx
	 xPh5IHxDLmdhvHBEBeFE8D/5F8Bqu2yE4Dca6HDjNLNjBfmLT/QFuZqJGnmvRmGEV9
	 xKkjpBPL2vazV/NqALW1gCqEI18NoAQ/eDTQeTtdcnI3dbsL4F6hnTPfXDTrzKcrgR
	 qT1cDW4Y5PR1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09FBC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172103906278.6259.6247508837174285134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77192a4ad3c336ad4f6351c15bde39fb42a527d7c82e21d561c10bc1bcc1d333
Date: Mon, 15 Jul 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721039062
