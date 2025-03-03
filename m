Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3526122611
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740967734; cv=none; b=LG+24KvwNK+ZL2PucAXeoagZHZ+z/3mPYeVQdOCZCZVI8modA2Rh3ntfLcRqL2rup655TpE8E914IwMnscrB4X3QIJTobrmXSrnSxE5SvGupd6yk7KGc7RfIB54PAzFv30eYJziMjUYA7Wbqo8cDElxwHLPbmvp4w7pRhvK0JJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740967734; c=relaxed/simple;
	bh=Q+Sfxe33EoLUlteWxyV0Mvaj728KLdnIPqxmZxpFrqg=;
	h=To:Subject:From:Message-Id:Date; b=crqWANpV9Zg/hvvUep7eq01Uzd2tz2PMmTCZpxhOAqO12PrssUX89F5vzA4yQ+RuVv25L+zwP7JwXMcy9QA6iNjOEripfMnZfnKbVJToSuLbHtTdc8iCnxSxtQwKDZnUGtv9GEpgDU+kT5909yTDZgw5L11QGdwPwJfXMsD84lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjJfrIVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjJfrIVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67CEC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740967733;
	bh=Q+Sfxe33EoLUlteWxyV0Mvaj728KLdnIPqxmZxpFrqg=;
	h=To:Subject:From:Date:From;
	b=sjJfrIVHknYcyUYAfdAGHCTs5cx8qWInvmet2Q82Tkw6C9aOOyo5FN1vDIbdc82VP
	 bfa1rdBTNADiWww90W9pRAi/qKY5d1XVjWauvYP/GGrY6utmJd1dJV4+ZrBMRpPXBF
	 7ERR3ElzvbB3oXy2RP+AK4cQIzMbjKQPeQKvT978ISYnMgzdVS0ymwFIXHmgREZ8em
	 RwXL2277KiEKu9m69udIvq2ZT2dZXt4FgutFAtwf95AWNKbX63Rp/1DOHdSwqz5G6S
	 C+1Nnyws0te/cTJ1bNNmneiwoNP8oVxpPKfwpYY3jekhH1zqH83e1C6faU5cdPGA9B
	 rtibK/3VrR7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93939C19F32
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174096773358.14159.15275290662451539539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818f6d5a414e675511e252121387423d5eee5c26d62c76a7c8aacfbfa43dfdf2
Date: Mon, 03 Mar 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740967733
