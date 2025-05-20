Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D92253F07
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747703395; cv=none; b=iwdd7I850pnxONBlW2KXpXD4SDOofp09tdNedKHOuBbPrkD2LQD4yq7piMfWX5DpcdGyhxLzSoK5DxsQ3aAFCsOFiCQKvHLwhHMS2QE8kwh8SYL7cRvarGxjs4BCiMoNZdpA1t4pzBjTx34ErSIGY+kAFQZ6uhAKRfq21GCjGtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747703395; c=relaxed/simple;
	bh=K7TIZ6m04RzePElz1jgTWD6z20jwLvHGJZb3l1REjK0=;
	h=To:Subject:From:Message-Id:Date; b=qOVoS5VfS8vjDx6fu75qHs1dQZvOQm6tQyJlyl2g0HP+GyV2VUqM1ALlha1sNJvbHTT3OUtB2AwHdMAu9GzgIiI/LW9mb1xCpzvW48M2RTLu7hFv+YYfyflJbDOWUWTYdYd2k78fDWv3BReUSm1qpWs6eHUSqrR8LjJOl0VjnmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sx4RAbw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sx4RAbw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF03C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747703393;
	bh=K7TIZ6m04RzePElz1jgTWD6z20jwLvHGJZb3l1REjK0=;
	h=To:Subject:From:Date:From;
	b=sx4RAbw29khcFpJtGasLvS02dnFkIzzC1dmPID2SHFHOKC0mcfQMxjjZGlEltIiT5
	 4KZ4a8ZChH7lhPSV4FL7x7uS7Uc4MZSDeQkdcikoJW+Qh7XhR+ljn0FgcHoRq3yxyY
	 /XD0hMKwQjidwO3RACKmTK4DcaF7VOhZjnx32VPQ+kkf57b09lVHv0nDWs73tEuJzq
	 iJDvV4vxOxVh7fMQfgU/keQZur+XG6YA5UBgaB8I7Hi/ujnluSrn/13TK06M8iXzn2
	 B0VMMYjQR0LyiYhjxVGfeCN9OPBPPCDoG5WrC9K52BlfmJRbmM+eFtjLtBIg1MJnH9
	 6+K59AttL3wXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED76C2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770339357.12434.15729165357214764730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08e2076ed84d094cef53c2a4000e9ae604ffc254f0ec0859020dad52597a5e7
Date: Tue, 20 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747703393
