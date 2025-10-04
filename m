Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BF220C029
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759546794; cv=none; b=s736yZuP6RIofOFLznaWQOGNWypNY8FWKA4wTbki7OBFhqPp4QtOumrIiWac//ReRk+QI5Nk2hxRDjlyHAMU0Kaz298B+vKpQhCfFN5meKKYQihyVFgogc47rt8Ts1lCfkh7fJULiJ8hWxGPCQNZNo1LGubhmaBhvmx1CIPZ+AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759546794; c=relaxed/simple;
	bh=wz40ne5B4oxAWovACllCkxwV8ZLYG0swxqWGFlg4vM8=;
	h=To:Subject:From:Message-Id:Date; b=HzXxc6lU/cZkbK0W68Znlkf4bvm27rupeCStTq8RYVyjdL/qN0VkzIaD3FrkoSGRYWsknbRCrfDoUpvN4TODlri+hTDfFMuot+T9ej779qq0edLIW/o4qun7SYM78W6jHAFWywxYZ1ZOxOD7RqUrn2xccmlpvfTDKCUEYf4ujpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWRDBq8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWRDBq8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA246C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759546793;
	bh=wz40ne5B4oxAWovACllCkxwV8ZLYG0swxqWGFlg4vM8=;
	h=To:Subject:From:Date:From;
	b=FWRDBq8V1emcB79k7UKLKCnXjtkIaVQIFgkf/JjEj7C4STI1zV5hL5G+IvaatNunS
	 1c9WmRamuD6A7y7ymYX9/kKwIm3myQ2PDanxCU/vQcAhEDGKfVC11f19a7GTXpH4BY
	 ZH/4Y+NPVWam8HFTBuignUxOJ25SOapOdIVaHhdu/GdmgAUfEYzYXRp1SUcoRkzO/J
	 Wa/rqncvRPTLbs1TGywb8N8gHmSdZgF7rj1VhgHvSTd3ykeDOVf+3DGYimyg+yNiTG
	 xhqHLkgRyzJ9tq+xM0HNxb52UGzoRd5lfEr5I4Pl4cqQivP84EyD77w6ZB9siI9aHc
	 HNp9Z3XBNcYrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9999DCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954679359.18867.11860130600829153701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411506e48f011a2fbfadc4fd850e45fe2153555709e9df6f6ac9b42545d547f3
Date: Sat, 04 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759546793
