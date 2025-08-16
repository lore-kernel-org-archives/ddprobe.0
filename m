Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0FF22615
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755363595; cv=none; b=NLiwl5eui9lOzIVB0cvgWsPPtzaGPCpe8LrlsjCQ/Sd5iyMlQRoPY9/c/9SXts4Nkq8IZHZe/G2AaCa4fyNakDM5K+sKi/bFabvfCifpC8RYu2b6lio3d/YMOPZ7kqlU8mjSIhqKMuCDZA11eeWy6UdrfdmQ9bsa+kIeVG31VVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755363595; c=relaxed/simple;
	bh=xShMw1TZqmGc6CUqExnQHEBhM0Cp2lFuudrAFSfnAb8=;
	h=To:Subject:From:Message-Id:Date; b=aZqWKqinq2LWG8ARAHLxCT1ARHe6wLfxOnsIlPo1u24gJRSER2Ns25h1Y7OHh1tMfNlYs6CvyWgM6unehjJWfNeJmOAWiAhJIKLOQBXC9ijYuAaVkiK3Th1IxELEIen/62oO+6O4F+4YqFnj/x9zfATt4o1Clq9WoGOgob/8Wzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l22QO426; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l22QO426"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F8C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755363593;
	bh=xShMw1TZqmGc6CUqExnQHEBhM0Cp2lFuudrAFSfnAb8=;
	h=To:Subject:From:Date:From;
	b=l22QO426wn3NfuHRJUcaBOVDPRyJFJfgfvDfXFAJfHcHI8DopmRzLLV9ddT4LWj9i
	 Czs/w01wxtElin/PHQLDFm/iNl8iuyrOGapONsaXBK0m5aCpaVpJxMeLkVsYRnAGOb
	 V2BzD80+FHKAHq8Fnc6S1ae/2CjIbdNKTM24RPfpg+/Xss/oBAfYv9DtmZ5/agqM/f
	 0TfH1SYMNr4L6JzOD9WaVS232ff1t4ERS5rw1xynj5eHW0Xapry2EGMG+4d6nFIr5Z
	 nxkvjsjk9oRkS34WrYo6UHQN/69NnV4pZXyEZezvXdD/F0PNbw2vAViFeOlLcFBf2V
	 BZUm5OvDpVJYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D8CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536359357.24613.1560417172730518226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f36319d33e552a999d8d98756a378f7a322ae484199778c17394d535a7f411
Date: Sat, 16 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755363593
