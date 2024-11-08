Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2274C233D86
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731092754; cv=none; b=FSv1EnR1n/GvWCwViNHT65F7v+X9mdgZeTaSxFD7VtiOhmsZ/2ia8S2RikHlgW3FvYZ+3Kf5xXK+jcYHWlCzN5r+FTIeg53ohNtbb56xV9MvWtfnBSxgbdzq36gsQPnt1DFnIatBoJ3+SifF/r/CU8MWq/wKIQ2F/1ikIXSDUbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731092754; c=relaxed/simple;
	bh=I06sTAYxF7VImdyCniIZPfSI/b1qery4pp+Mw59Kqy0=;
	h=To:Subject:From:Message-Id:Date; b=DDJ/rQHWuyqoVk+yY6EgGJ2CG03e2SQwNxGzUrRvjLvCKflCiNJi3pBkvMINKu4YkWwhfJ3oQZWWw7yLVUKkehSELSx3wgotY3smvZIr1fyjTGTKbS/rgCHI8Fkmqf5tnKwaJ/C9bYML7s+YBpOsLUKn6XcdmYpS7UVPLgUH8LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5Tv+CEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5Tv+CEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE8C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731092753;
	bh=I06sTAYxF7VImdyCniIZPfSI/b1qery4pp+Mw59Kqy0=;
	h=To:Subject:From:Date:From;
	b=t5Tv+CEvxPOdpKBVcVtANRBb/syun9Fhy0/c3ZetlpXJ0wwhMbj2h5wZATVS8DHdB
	 ucmxO+1l03woo62NFEBPQ27XtnoleE30hK0jD5dPHVqtUtRNl83JXZDP2TD077O6zg
	 i40RPd/g5Sdfsk+aNjlBZAxHOGZ75IMP0HHNrl+jQ6Qx3ldGO51FzfsWpTAsR13JV7
	 BwBviiJRmV3xVvop6fhZG1Ac7S1XNbhbatsxF9q/T1eqbMUejfAhoRAkhWL+bguVLd
	 YmXhkh2T5ZilAjju35ihcOz2pifvOm3TJ5FZZbFhIlH9lMzcQ61mfxtTzb3J3RWIcm
	 rdihM/Q4QIBWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F5D64078
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173109275359.15414.8853268083484385589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac4d4077be3cc0e8f298de4f6b09f26d2affd11c9397f878f4a00c555e4d17d
Date: Fri, 08 Nov 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731092753
