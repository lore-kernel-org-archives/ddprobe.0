Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F12C2836AF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765227174; cv=none; b=Gx28aNp9c66/ZiSHucF6MTATVsKhJEQh5/ujlqOORBOMPTVaoAD1JkoKHmfu2xWY6kbs9dFU+ufDZKj7/MSOm3THQEONdG+IU6YViH14HCS3XJTm5huVvM6oNRASKCrgCPF6k3H+uX540rM1GdYeQTe3QeReGW0XhhtZ6M8WbC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765227174; c=relaxed/simple;
	bh=K9Dc3fF8NCfzL4NHsJ9qjIhVfJTZal0Wbj/4eeM3HvI=;
	h=To:Subject:From:Message-Id:Date; b=ePRNyB3kuasC8oc8b0fvJe1Z+4FOmQqujSxgTYTSfJTkJh8eGbWzEgUeiIlhmQ5gTYI+oz7nY3gVHbQVNZgV3trmpr6q1YeDPZyX9tSWWpcbPLuD9GPyYZxmcaNIOH7kHhePYz2c5KDZwlSRsCPE6M0beFeXIbg30Hsj/ERbonM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5rJOzUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5rJOzUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B689DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765227173;
	bh=K9Dc3fF8NCfzL4NHsJ9qjIhVfJTZal0Wbj/4eeM3HvI=;
	h=To:Subject:From:Date:From;
	b=R5rJOzUxaiMEct+OL1V4Moi5XaYpIvAtSbL2WxncEAon694OC0sFKjBSGpmqaTNdU
	 /0K600nv3nEN+0KLMTuUw6ypjHaFPsIBQd7XeFRqis/eEvdLZLcxQOJoXv38cTJA3w
	 0xxZM3uqWuVu05lqAqPc9lOfFmCA8mPNrhQNr/UC3JWbKjPoGp2XF9BmbCWfhS//RR
	 3elfvuWblanV8RWKiBOtU16uzF5UgmebXvJ18qQP3PHUfBLUcrAMFfa9V811T2dlB3
	 kXPa8qlhhbH83z1a+A/BJL1VnspqQ/lCWLru2qGuc/Bo9s3Gljsh71KBA+iOQQMdRJ
	 ByUooM98ZW6gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6CAD3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522717360.1055.2266543347363000114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f330f9103901fb43a14c42472b91eef06141a88c7dfb4d9c0f39214c23aec535
Date: Mon, 08 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765227173
