Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDF62582
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717270523; cv=none; b=OyDLMITg+R6YSuxSOhshlgNxWA8+aPvd/Lxdcl3g+DTCgywW3d6FN7HeazUlgrRjHAvmTIGTa+X5J79sUY/rmLDH+wk6B4pzP0IqVOFf4ehWeN3tQCQf1VvUuiilLUxTCyYAOhGcv+L22w2B6NoUc8olHvQ4daLC/8O7tcyXxFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717270523; c=relaxed/simple;
	bh=7D1BM+WjJoqE8v+uBBMsywGXJ25AB8idZ7h10QCT1wk=;
	h=To:Subject:From:Message-Id:Date; b=Bddpm9hKfrdHkmgmpsRw6if5clb9U2r8VdWoGWEM876ufu5t+QEF2fnbNek9+zOQQLmbp5BiFaxgIabr1qB7ZYIkLFnrmZ1sY9XBh5Jq9iGsbJwP0P7fTWYUm8N2QVrGQHlPP9GjLLDtC2/YzpjToQg//fyxZPZqWQlBCMLr7EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gx2nbxKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gx2nbxKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BD2C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717270522;
	bh=7D1BM+WjJoqE8v+uBBMsywGXJ25AB8idZ7h10QCT1wk=;
	h=To:Subject:From:Date:From;
	b=gx2nbxKvhHWXGiH9XeS3Nr+1mv39jAdkXLwH4Zqcdwud4E91AZ/5C72a9QJ1yW1g6
	 3uZ53ZMTwBlPUvmHE6bspFi8e5zr2S8P0KDyO4svsbePvn6G1cKY82dsw8pQDjI59B
	 GLsgpbpSvNAFkebeB6HiAMxiuQaX55+FthWlqC78m9gVp0P3CreHt6h/JFFLWIEHiB
	 VhSQN98w2+/xgSemii0H/gcoAuaNFTGSzMhWGq3o/TuGSV96qFzW/zeTLtl3JZZJBD
	 W78jJbVzJsbCEQxyIyGjrEemvbbNsiGe6BP07BixJLRD5ixsyxEb/zx+cbvohr0RQ6
	 c9G+FCtV1t+Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6655C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727052277.14413.9095038084446943474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbaf24906716cf86117ace8a73965864cbe1a9e04b9e23b357fdcb86eb2b2740
Date: Sat, 01 Jun 2024 19:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717270522
