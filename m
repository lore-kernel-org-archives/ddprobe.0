Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13CB2E2F1F
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769256234; cv=none; b=UHNcnfkJEIakdJFlB3GpFSPEngjJkx5ST9iPUo3l8CwKUTycA0kZXntVdDh+xu9tehQM0j6TEO4AkSPetu+7Aw0hmBlXh7xz7X1cnZGxrcfxqWBSmWF3FFYcbjLM6fCEZ44Kq7C52UD5XHle2cvSGErnNkPbrB0Y/d9SFbRIhHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769256234; c=relaxed/simple;
	bh=w/eVk7BzJEYfEIyTXz49CZS9Qj8U60K8FF/jljiA5/o=;
	h=To:Subject:From:Message-Id:Date; b=S72oeXvZOyNRDwpMD4rdoqzBP7Rj0kglj6WVVhl47spbf5Fq7RT9zKffD22xrSjGI4SbKh8I3fwnnM+m0CjQhG64yjmr57VU4pRPzKQz0IjpDxdPlfaUTTs+KvKs8FHZ8JUdzQSCc4XjpP+S60h7kiDLfde+fFaPK94eMfil9Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plygI5NZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plygI5NZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A643AC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769256233;
	bh=w/eVk7BzJEYfEIyTXz49CZS9Qj8U60K8FF/jljiA5/o=;
	h=To:Subject:From:Date:From;
	b=plygI5NZ2ecB6o+pu9WmT/nWKunvRFUcYbjFNjkdk0BeyWFJ5zq3Z/IaHp63NBkWx
	 +njdkMX7/pY16rwBBXYzTG1DHwiFCZDoKFAdEZ2OyLk54fW8egu28sFHGo7/aCvYWm
	 rUQpui7fvR89nIWjblcDbW4z2wZ3BrQ3FqrpHaW3cWAGuOxxkFk18h+JqPcGwOMi1q
	 uSzFqnHqghlFxXamNv5ZlozHkHX2WsEwZ1S7Wa4L6bWCHc8TKCLLrM4k751Equ4WQO
	 MCIbJGnIBVwnQzpMqK4fAIiA0/Z2TxAxI+6uixjeI/5+c6p3GjWc/iTVYylmaNcvpY
	 pGAsDWapS3QBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92766D715C6
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925623358.26165.16713992953230312665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3f9208babd2c24b4ea01ed91c6223dfbeb997d7630f00c38a3462fad398e89
Date: Sat, 24 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769256233
