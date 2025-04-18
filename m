Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE07211499
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745020794; cv=none; b=NGH+NuMnFI1BH//gBFivrN3EwXF9PWLTPktNmTHhbeatYV0A+wC1OKN//runJXplyGwd6jGuYQ1EiznImWoQ53GZWr/6GGOavW3lgMAF2WLM/RTuU4DQAN27Zf6JwgBxomkcrlTbNZU8d2VsGP43CL58l/ewOspzegpsyzgGzEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745020794; c=relaxed/simple;
	bh=dyppuZ7lHYI3VDzNVgssUTf0lZTl0XwJScPKul7DMpk=;
	h=To:Subject:From:Message-Id:Date; b=RRBY7aEYta0AVhUML/n3Wj7NzgGYqY94xv6Q6EDd0J87b2JVYu2hBcAOWSl6kgi0ZE7G12BRJrTnVu4nnIMO9L3wiPj8YetOL3A+rYHLkJOW2y+kgtJJLyfrYHoZwoT7X+pjylCd/163xhlcUd+e46w3i/RQSmwTlEXWFMIT38c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6luD9HV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6luD9HV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A40C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745020793;
	bh=dyppuZ7lHYI3VDzNVgssUTf0lZTl0XwJScPKul7DMpk=;
	h=To:Subject:From:Date:From;
	b=U6luD9HVTu1fjbsn+MHUdbrz9I49M3whEjdL6CjcnqcqeA22rtHDBMpwzIOWgmLJM
	 FyG6R18yzXBdUETwGF6Eo/5B7oYxMAt5snm+T9DHbzfGHmag6uxZgHMGf7RO4zwgSA
	 A77npVBDIVOsBX2yWFnxQr38P0fob2sZTj8Sav4SrpqbcY4XBAZhLjVPemiUi5miVh
	 GM1PmVAqUAQcE6Wpcyaad9WAUhFC+L9QuvQCsbbPkSWYwwiYIScyV8vxzpkrGoxaSu
	 Yiwv2WxheKk/fYnKpWHPeMZscnyQJM63aKnMpKHwkVOwomnPnFEsRaSzx+FWEp0fsq
	 JqxMeex416srA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A10C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502079358.785.9050890689162507701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ce928d6ed71366a991321cdbaf790446c34f4d5d0731cb116dce0d071d562b
Date: Fri, 18 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745020793
