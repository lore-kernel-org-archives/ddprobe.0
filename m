Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236BF4174A
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726518354; cv=none; b=nzIuDohEcrxNoSVCZtI2aF7qfCfORK3Af59FGgIYOMLra0kyxdQS1YwgjbtODeb3m8j5ZSA08G1FXSpuV+1ldxndm2a3FxMiVl4RjUC3HJQcI5MW6hZ31YKyBbpLtsH8SMY9KHibL8B/dSWonRa5dWgiTgmtQOoF4VJ6t9EJtpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726518354; c=relaxed/simple;
	bh=tzY9URVFuu8qwpOLDUL3AiK6ci2hTCZsDrPrTM3aN2E=;
	h=To:Subject:From:Message-Id:Date; b=BNP8aN1L4ylSDVvHgHF932arimVwsN7NjPNnKm7lYWjTzpl7vAF+5PFpaFbNQqqaIPre7pOnCwFi4haqWzSbUeCI9UnRCWGOCdwrV2mAouxPI/qiFL9xwAb8s2IkXScKjTAeYlnGifHu6g3Q8mM1NhwsKWVhvsGUTNScb2ZC8hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klwCiMWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klwCiMWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA23C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726518353;
	bh=tzY9URVFuu8qwpOLDUL3AiK6ci2hTCZsDrPrTM3aN2E=;
	h=To:Subject:From:Date:From;
	b=klwCiMWoyb2/tgThlA6BokwgrwGr3OQoLP5vMLgWHQJVrGM7PPorURBSnXID8UZ58
	 wyOzOnkhoneMEFFN1oVdZcIZ3chyZQOIre1YrWLw/ayeGZQFo8OTBV7GOp3qDO6mL2
	 X/HX2ilHmdPG3hypBLbZpEibPCtyh9tseWnsMsbLdtquc5ZiEnHY7Eh9OUyfmQVWRW
	 hRiE66NuWMT2YMpO0KX6tbkmLAzOtBWET6PHIFHw1180pwH9+bt/iaEyzag3uAzR5X
	 xwncaX96JWDordbKeQaqUqIh6HkTC00uHwion9uBdvmaVlgH16YLYCQAy1pLujvB2O
	 M/yPpdmvObYIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ABAC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172651835359.19040.15161611652518262900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c67fbc02a357a952a40ce3a868aa2fc30473c7e225030148e721644d188b5d
Date: Mon, 16 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726518353
