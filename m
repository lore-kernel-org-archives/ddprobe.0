Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B80210E5
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729981554; cv=none; b=ZVC5jGVtagAfgvNsHduPaxiAHJZAljUVS/8DHlZUughfHw08NoGbVaE4JcrzIBYrsALEz9nntzkO0KfB2XqVp6+cdeNeDz9I2MpeBUiZ6/c+bpJlYzKmEIfGS+UaygN6O+ECjIMCybiLWJtzkzf8LkK6l2zHo1Wk0AO7mbdUqNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729981554; c=relaxed/simple;
	bh=x4ZFb3Mg1L9Ddu++TJun7jrczjJMkNtn8VDVuWSFNUk=;
	h=To:Subject:From:Message-Id:Date; b=YAp87sTQq52E9W+XwJnuk1g7LAbiCALn0Ck5InKc4hrr0QUciF+E6FGr6JY8G1bVzSaMB787jU6nUVlSdEysr8VyT8Cpe+NyV5qsr2mW0nkeF2+yAcFjo3UZsU8eE4pzAnemQLAgv6NiouTitwd8l6Jn2R17+Gry0Po3I49ixms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljRzpD37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljRzpD37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD17C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729981553;
	bh=x4ZFb3Mg1L9Ddu++TJun7jrczjJMkNtn8VDVuWSFNUk=;
	h=To:Subject:From:Date:From;
	b=ljRzpD371c0qK+hEuNC/DLZvamvk44Xel98HZz8lZZJAuZ6sKnEMelzLWc8ds62h7
	 PJuzmGgZYqHW0avJWuytVpxFJ5EAB/jCMQExqx2ZewiCy1pYH3OihIheTZBtFwOQzg
	 ChmgWUNuTvwhDNciF9SlUngNhcLWUj/SLS8AvpQ/6lUWM9dApX0lV0mD8At/Uxf1R/
	 mj8itYxj+7OIyLSA1+FZkmL2oibKnz45n5i9lx8Mi9h50aHfK1ZzzKkQjOMLvTTlcg
	 qYpQe7pPtVcILUD9j3CtFeTrQuZ0ECa3W75YC3025NJizaYaRfiJryRdIwEcSojs96
	 tTOHwOi2GHfUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2913D0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172998155362.30928.1475275422475796461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5889748be881bb85eb2bd1cda128ef104ae0c8f654d20579f8e9eae847229ed4
Date: Sat, 26 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729981553
