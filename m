Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8B63ECBF1
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778253454; cv=none; b=EFBcey66Wyi/w3TAAjXV1z8n37/uKwOWMqUYCCVjZl6FgXsHfXAdpxAk8wl7nuiDXEr9xj/sNR+lNE0f7yLBz7dIopq9/oanK5zuXLtQgKhsN9rFHFR3Wx+ru0OU3Ri+mqc+BvCi7zldp/xNblQ8fI67i1JF1mtDHTKmeblanX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778253454; c=relaxed/simple;
	bh=mkGZL/rUk4/RRjPVie+J1yjkutUL757eRM3JXwWVi9c=;
	h=To:Subject:From:Message-Id:Date; b=DoHHzHiLKiAYjbVQCV/4hDkbJyqL2amPivZXMfozDkjTh628pvUJCYGVfIywwMtJ3zBha4AZVr9G20SdOJIiAKu/qbl4wzbGL7J07yVqssIP+6gLszfUBZJbhJLjkpA/0xy4LDhqFyQ5BD24NrhMGQfXDxEfvgJRNjX2Iyi8aIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqcFxRn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqcFxRn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3D3C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778253453;
	bh=mkGZL/rUk4/RRjPVie+J1yjkutUL757eRM3JXwWVi9c=;
	h=To:Subject:From:Date:From;
	b=JqcFxRn0Trma4ultmCRmPXtZHg+1zZ82lM6IeIfwDHem4vyWZ19XdN5fCvAl2hnA6
	 edUiPCtf7SQV6FKE7gk56Z4G9N48483u5oFUJ1zSshmBwL7KpTQ8iOIV5O/wF3EnbQ
	 K0lpPZaVRxH+LkaJ5Dxouf8mE6DMNyGSF9E4t894E9moOz8+jg/R1VTID1xouG5ygR
	 l7BvrdFXmVnaw3TKwkyV4FoR0ZL0HFdcuX/igqhn3elTjatJ9Ja2YYhmkJc394DCLQ
	 ihmPlw7Eq8ILWWVCDQRETON/WRUKLskCXnKjElDA5cya7T6U9MSHFg9NRbQ1nWscGC
	 ixsUi8ffrDhkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5F2CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825345369.19317.11434578417421363018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65dd21a9f1d560c31814f1054d7239481eb2e4a267a3b8c83824ed4ff9c83102
Date: Fri, 08 May 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778253453
