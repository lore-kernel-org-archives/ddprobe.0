Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1600017D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773533094; cv=none; b=jpkR6l3UjtgRL2K1cM8Z8zgQ41bfG4VgmKCAzZVzs2lgpmo+iSFeVH8xn4n8BXYDvennIBnjvfozV3wpE5EkM4USD1dlDxAQ13otayWhOaG8uh3iH0XtVzviiKXN3JqDha+WCYhjgXWwZLKwRYDZe1KA16tOamILW6N2qs62HPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773533094; c=relaxed/simple;
	bh=40X7Qf4b2G7p9eGei4SyfAXRgKfEjX4wxwZmjdl6Nl0=;
	h=To:Subject:From:Message-Id:Date; b=kzxusRcf2KtHEz9GfDZ5QDKShIKkDpvBHfaK7P84vjjLi6ZnfTtwo/gQlFU4+KuG5TNO8OOwpK1GHYN10C2cm/vicSghqGmj7ucgAeF6dxbJs4D8HqQQGP+ObVQm7UTubdTdMOQ8kCc3GDyLkSQaJEBXD0D97qX41SHNIJuLJ64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWU/lso2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWU/lso2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ADDC116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773533093;
	bh=40X7Qf4b2G7p9eGei4SyfAXRgKfEjX4wxwZmjdl6Nl0=;
	h=To:Subject:From:Date:From;
	b=aWU/lso2hs4e/W9a06xpBkBAvySxGb2VsAVT8vTdrR57aLxJQUlSLOzq3NeP9LgbW
	 gkCO/7EKNPRBV5CCgwtgQBEK03MyZr1sowVIBuZS5VQtzZvz8Z59IbPd0M8Y7NQp5Z
	 mRPzgNmfCFk5x8wrwc7CJYwqb1T6A83oywrOgI0Yk+LIV8A7Ow11lbr+DAKv4lhzBq
	 VDB48jiT+Ut00VNb7J5/Qr8qfNtVc+rAU/De4Sw/vsXs94N7LoOWs8XKaAI9eVTQy4
	 3HxnUG7YZVKceWshdg/TKh+/cY+n5JP8pFbJasqNl6o1o5E3Dx7dmPkY65mNnFwIOf
	 KENqBdjSqguzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9060510854B4
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353309358.23193.194578178576846054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f356ffc53acb42e3963b1a32fbbf97ded11d1b5013c036c2399c8c6920896e2
Date: Sun, 15 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773533093
