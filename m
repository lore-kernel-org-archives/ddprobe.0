Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475B272639
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754453994; cv=none; b=lm+QtdObhG2xwPYV3fDZjDcwi3GJY5rTXT5dyh7wmrk2aV850GHDC+mL9raEDekoqdU6oh53QGUqHLo8bHteyfHnkOflu6nin3PBB6JoST0uFomuG+PTb/Abs211L67ucEqTnGr0vk0cLVbq4DyYH0jzpcKKRbW4+WuZUYKSS6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754453994; c=relaxed/simple;
	bh=JFEiUZSJXntn9fCoi48RzarLU8EcG+YJMsWIlvgufUQ=;
	h=To:Subject:From:Message-Id:Date; b=NFKrfudmQRKmMwPHOlrflczmWS0Y4G7IryokTY43v0XiSlxPppybmNV6YQ9vKQWLtpJekfB5GGxf19xe1ba7JjSIuyRQ5Rr5vfzNZu6X123pCkLWH/wf6N5FjDqrbNf2zqF5qj4eDoYTF1ThorgXWYsMcRCi/n5P1ogT5iS0KGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raZ/GfBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raZ/GfBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9BCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754453993;
	bh=JFEiUZSJXntn9fCoi48RzarLU8EcG+YJMsWIlvgufUQ=;
	h=To:Subject:From:Date:From;
	b=raZ/GfBwdTel7eE+1aMaFEpb+yZL2mkUsxyOAcjtMRYxFSiEIry5OA14pnhtzgKIU
	 JcWWO7WP0IJacxcKShQ6nphBphVHPfs9FRfQSaJj7LEdFf7BPetTjcU49ccwqmIYFV
	 x+Co2a9S0EWEA43UxzSKej8He2Vs79f8tn5Hkjwk83TaYXrckNIG1YIJ/eoiQCYMi+
	 sUyz8yqnuua792ehTFGUbHKqUAMSWt1u1qkQdG+XrBsUS/ZpNkd+aFdoZXilM/EeN5
	 GPOBdaCQmixtUp5lGqzADVRcOXTNEMRkx/xktsegzqXsBcHE6TO3PVuCne+uI3TYIv
	 LcqWUIosMLEDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B91C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445399366.2374.1720452516765720827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcddfd16d7d84d9807511d177f8bb7710494bfd7a2d287aafd03764557494854
Date: Wed, 06 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754453993
