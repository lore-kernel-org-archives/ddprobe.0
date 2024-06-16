Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66EF1C125
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 06:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718518103; cv=none; b=gP4PTtczDYnCHiDEC6uvfPT2p3sRSzqaVhO/VWEzI1RlRI8L7xc/LWl7J60aTixnqr6tLqyf2cu7DO5NJyeQuSWyvzJkF1quflhqeF5vc5wUE0lbC/Zm4nP/PbGOjdHjMoSHIsQGrV9Dn8hs3l7CjfoFhFUNVP3QDE4pWzbpFeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718518103; c=relaxed/simple;
	bh=sl/zhgXzRLBrVSbuC/uUfYoMz0XBbHgZ9ZCavPrk5mc=;
	h=To:Subject:From:Message-Id:Date; b=dOcScB/uFAq146wdyMqMgxF8vPdwwfZ+in0a+OrHI1tQVVUzK3pN7yOn9iUtlyiStKIkjRT4LkBhmQ1o9Q9jt07oQRpPGiqzJgLQU30ssSii+LkmLIldXbr6oyhkSKmFCSkD1dBivuQaCaj6sTxQDgiNp5raZIlcKNlBRYLg8ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzCeYQrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzCeYQrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC70AC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 06:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718518103;
	bh=sl/zhgXzRLBrVSbuC/uUfYoMz0XBbHgZ9ZCavPrk5mc=;
	h=To:Subject:From:Date:From;
	b=MzCeYQrklIy2IiVN/5gjSGkzWdcmYmWXTqNliUgqFcmQvox3uicB7NxhOZt6aMFtj
	 LoWMD+ASldknqVENsHsmgQmr2fjyWEU636/rsSebLV0rmIJvr/VcsZT6iAcbmzamFU
	 tZIlFLzQrCuVJ5SinCkIhVutnTXZ61ptYn650cMDy/Q8Ri6mcunSNiRUZR0zOvQjmn
	 zKcoiQj8hQO2422OTIYzkAWoItXLzldg/d5L22/NVLYDHdYEYcElG0XkqiaaeRd9Pk
	 zEWD6sQum794eX6AiL/gQw9VmiiZTBYERGwYkaOcZnuFUOi7awqKGbz21ENBnMp+iW
	 2Ra6APgsMot/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9B2EC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 06:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171851810280.17624.894382123917618431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c788d732ca347b98b7529c8f70469f0f5ac6dee8fac74cbb1262f61041b0bd
Date: Sun, 16 Jun 2024 06:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718518102
