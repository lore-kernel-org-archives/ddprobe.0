Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F84B1C5F07
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734026154; cv=none; b=lDPaNuZPuAKdXcGsKM2i6FHfyBfFhEiwPYg235MNhn8xfzzikpLDUFz9hljHUxF/dTIuZeuT7qJO/cZX64MWhtsICkKhUCCVJ6A4LsDkErqwswv4qsCBk4cIHEz/uQlBOsN/HbR7kzudw8nb2alxzb5c5v+eOu6HhyvzbyT3QJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734026154; c=relaxed/simple;
	bh=wmdA9r0HBTqU+W5MQBjEQBdbAGMyRCD6INO5KZeT+ww=;
	h=To:Subject:From:Message-Id:Date; b=PDwSQXLnvRtaAiL2cQZpKhcHncwNvr74zigj5PuB8ghUU2pdBYl0P8Tto7sGZhXXVYubRgQSy2FQy6AC/LRvRhWywm6kpNEcdgPdsxAFID4gwrKZQN9LAKsUTY7HJmqjDbeXoS1h7KHHNweUq+6LneCpPWtCNupVadV8ur/PN3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcxmbFWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcxmbFWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCADC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734026153;
	bh=wmdA9r0HBTqU+W5MQBjEQBdbAGMyRCD6INO5KZeT+ww=;
	h=To:Subject:From:Date:From;
	b=gcxmbFWgiiU55L3ceDafFzTNgDwnSic2sqED0re8jMfoN5aCw63bn65P1A+qIdxRJ
	 6m0nlBG+T5qDKt8sgtqgd1Ayd72eWblRoZZa69tRe2KQmi+GNHSJg6dICdHOFlw0+B
	 TOv13CYqmmSroZEIS88LNJGcckDmLtZjX3G71KAetizkhgKXEHzeIPvFoNHJMdnqRO
	 yoxQrH8hRHH7sF2EhlAJpK/j/6DKPGhy75pI4F5XbrkUZeMClQLi8Eed4OL7X9dncN
	 nZqKyg74VpJLTTlv2WaTl94iBA7oB80mMCy520b/bKhlsB5NR+Nswiq8BD5E58WTx6
	 y8BDzNWm9uyKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2DAE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402615367.11449.11454011231224649755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49b78022761a256ec42d0aeda0108901571055dd2b3497d96ab616e97e2ef91
Date: Thu, 12 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734026153
