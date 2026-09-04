Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6553955FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788558034; cv=none; b=u9le9kD8EUAZG3uSxLUxz1+IMazPyFymzAFUl03s3R6P7J8S+dDlW+EUhd1tDZLgw47CIJ50zdX5A2QN5TgDduAK8qrTCUmMgEx6z04srJIy3vvQxpQFV/S88Ci9AxFLTVkxYSTiQhx2HmJ/fPoBe97h/QdwvYaJoeoROC2BM3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788558034; c=relaxed/simple;
	bh=AH5qVLrZ0qMM5BZxpjzHglZRuCZ/4rEzaOEOQU+bTfc=;
	h=To:Subject:From:Message-Id:Date; b=CdrMQZjdhGx+aHQ5a9hVTf3p7aWdnKdKHsZkuKXek1ks7Hfv6bVVK/eudwQmZ8vlArPKNUnW99Xr/7HOUzPBIyjfmM+XlY3yt6D4b3gOMwGifSdmLrLikpW8cTKutJElJNpNMV2xNDI9Pjd0HOncEOTaMNmnuWvDAXdktzZa6Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B97afKLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B97afKLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A09C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788558033;
	bh=AH5qVLrZ0qMM5BZxpjzHglZRuCZ/4rEzaOEOQU+bTfc=;
	h=To:Subject:From:Date:From;
	b=B97afKLrqAB4aFWpnzUAY6NsXtI5gMu50NELM1KhUJXzr4U1jVbwEY5RkWuevuWJW
	 h7cAekXI9hhF61DtEqgV8xojWp0lpJ9hXLxMBuKjnMrotskaNZSsRVgEdJOD376tUe
	 XJDl7bN2wp35xjF4KgEknw36KwRuqF8KYv9hW6GQmTDHw1R3PFAGI7XaDP3nhJVOje
	 M7i6cpoqyyHAikRWJ+jKN5PP/Kqf/PxvhWiw+Au2jNvsZ5CtsN2xJL6VVHnXu5ttYv
	 q4cgFvbdxNAS4P9o1Zlv+X2AHWz0lzPBB6zls1g5Q4rDzYhUAarMQXbYyhGqoULNyM
	 Mc1tJEe9nWNMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4326C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855803372.25028.12168947394338946476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d18b45dd9069487f8681c5a31a91d03d626149bf2d20b91b80e40266e15fcf0
Date: Fri, 04 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788558033
