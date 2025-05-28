Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31684188006
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748476194; cv=none; b=PMEgIdI0/Heqc13RL07X12ksG761TwihJzMyc7vGbUh5i6fp1lYnBqNVENQPhBqiWIeNBC4xWlQ/AH6BdGdjpzrjvnnETcq5K0s/yG7divEjJVjmqH5CI2o81Fcow/SI0gkb7R29eixXlaA7ImMH37wb8WG95r/7YdFwYTBmLf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748476194; c=relaxed/simple;
	bh=ENUMl3lj+MDa9uktDF3woglaV4GyJcYXmlFx54u79uU=;
	h=To:Subject:From:Message-Id:Date; b=H/UuySwEVdUy6GxsFkqwOd/z5gbyf2AEAyL8TURcmAZVrY6AaGVMVFhkCgXjxX+LGvh0h9E9qnb/EYqa+74C35l0H8x6Afz4j70PaCH9RakTpgrkUZyEHVEJQ6oIdrbvLUB8GvOFZWpOk+IQtDzN8SYE2axGBdmm3bII/UgZJp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djW0MEgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djW0MEgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D783C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748476193;
	bh=ENUMl3lj+MDa9uktDF3woglaV4GyJcYXmlFx54u79uU=;
	h=To:Subject:From:Date:From;
	b=djW0MEgoQ+kUbk3gJZVfiUPgBWx+r7hRle6t2xDYeSWFJ7KyJWrCUeCTMMNdHQ+p8
	 Px2K0qrc4TMHiU1Bfdmp0yPbmOfC8X67tySuwoIc5oeRr30L0wYeoO1Ae+c2Vo8g5t
	 1yu2Sl+gj/PluMfLIBlikTd+GblyE2LRYFcZnQOFjwCJnE3Df8GV8RzxuBWxFKULk5
	 fY5BucHZSwpFZN+XyxplHRHC4Dal6ft2so3BCcfCXTTh0tqWT7YlrmQkcz47Y46Pmi
	 TdDS5pVyol/koyicf+JHmOaAGe2nsNyd03+2zYIFTl8aC+3yjQ9vx780QzwMhRS7rc
	 1nJaCfo59DfdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF38C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847619357.6337.6481449375047429038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2e4383702504a73667c9c8013d4498c07d6c025caa51500e7a1db513dcb10a
Date: Wed, 28 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748476193
