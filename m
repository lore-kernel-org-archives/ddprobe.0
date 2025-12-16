Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C0C139D0A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765913634; cv=none; b=bIKsyDZ/F9hL7HFrZlE61Suwl9IJt4PSbMXHXpb08foKCROSFgW81lsUXOOjzknKkUjKd8JQnpD0051nv3FA6JbHvpU9VFYFWuKk2srbJDF8+juyVsAhwUD/VFDv22Dj7gVTJh7rYPmkdeCBTYVqfVuwFQ/dgFxcuMl/vVG1i34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765913634; c=relaxed/simple;
	bh=tg3we/8WWD5mzu4Ddzao7vYukByaU+RhGlxZu2vprs8=;
	h=To:Subject:From:Message-Id:Date; b=OPHJt20bdaRGa/HsHEzskOKvq2ZK81i/2gI1wERSQNAxm7JnGLifs1XI97LhF9szmW8ibx3Xlv6fjNgUIqIdG0NJc2rx/NZSzvDhhYQVwlA5Gm2s6bh5LqqbtJnFLBEL9WkgDdtff9pZerLOXiVSJTkbR9K/uLvcFnDUOiUCneY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIzKUHlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIzKUHlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765913633;
	bh=tg3we/8WWD5mzu4Ddzao7vYukByaU+RhGlxZu2vprs8=;
	h=To:Subject:From:Date:From;
	b=YIzKUHlhiV2krIxaEKBUkT8nziRdTq7wwwARarLBfJA2UoTLwBR9ACNNoctMI5pB1
	 7cTolv9ce9oPm4gf1xk4LZgqbaWtrXXi99GsYcx5c1fThWb6Ro5fMaA1byRpuRo9Op
	 YpQhIS0PQCcZF5e4Hqb8r9axhmT86zvefPA7/lamHJwjUCOwgNCHAJ6OZvV8RltHp/
	 EyBcuw57q4aZVrqxtyOEE/M490TQ03wqLWll/a11pyCFd0j18xBU4I2oBPCSyU8UNn
	 wzwrhlp5wZraVIjkmhXfpufK01HsLT5drQpCs7EczH4gP7CWZDgAY8dDnuJiKcPF8M
	 SKTIqXueViBOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9015CD609D7
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591363358.310.10383461158429664082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88f1e7999c9b50f36921e86d948ffdad88bf91b6313f9d89a72b773bb85e70c
Date: Tue, 16 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765913633
