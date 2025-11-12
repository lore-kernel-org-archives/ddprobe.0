Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2D63081C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762945794; cv=none; b=n3AiDJljLdaArpKvtMRZRoOezFi6uojWe0aAtS2S47V6KaGPAwGh0sT+1oik/woC1drQHW8VATM35ZCTy9tMIeJptPcZd09D1xXPV/OinEi7E8OSwUv3ekmdHRRPH4akKBNzmv3zG+uRXVPPyDWXzsqYR4k31d6u4r9prOvAeno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762945794; c=relaxed/simple;
	bh=n0dhcTFa1hTollMV8x70XxGhYIkn1Yawt9zis1I8Ovw=;
	h=To:Subject:From:Message-Id:Date; b=qTSyZrOpFhdlFQ/a+RQVC7wOzEcgCPADryQK1vrwaGsSGrF8e+9E7pI4qv/cPcq7S9LrynR7+naNd9D6vdvT0l4rmqqChXQn3P8+v3RCnwmBS4LEV9iJLJoOeF07lqqwniqhU6NhWaveDo5ewCrzGJ51NEEUc0jPJzBOnk4+lQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBZfso5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBZfso5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D738C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762945793;
	bh=n0dhcTFa1hTollMV8x70XxGhYIkn1Yawt9zis1I8Ovw=;
	h=To:Subject:From:Date:From;
	b=PBZfso5UlFx+SCdt2fZRBTs4EoK4qrx07aN5XK36hHvftnYvqneGbDLHCAJp5zyQm
	 tR6IVuaTzwQqPmvE7pBt41B3Mlj6z+xB5moWVk9YIjrI3ipL9PJeDFtc6GmKQ0/Ea9
	 jZd76RegwgEFYxzDOAdJAGoY60L923k5Mw8RtPZv88vOGRiOzVTdxC4eogBeIVO938
	 UTr//xFi+TUe6/PqRFbQougqwsAlmX8dl6iOAG6sJm7ghmg51TxxKgfRlmwrdqq8Uo
	 C365J2y7lE/vlfPbp8TN7+6DcbTQqSqT9U0N6iNmBBeTJEB2qDLXuM+0frjIKXfcwP
	 jHe9ViO8BmwxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C4CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294579358.8875.4001201691216500670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb248cc7dc51ab1a001caeeb58e1363ebb63e6c47a6a16f0401151e770c8b20
Date: Wed, 12 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762945793
