Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0601E32D6
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751325594; cv=none; b=rfCSTSlfJKsuUsxWcgRijLqXGFLGob8hLGgrVhiRC/WAU8wq5bG83OIFaGPQ7cJ0d45SXNtPex+mKN6O/yQBFzN1KoDff26rnukgL/GMFSQJIyJ/Pvy9MoqGHz53hCREtNv6P9KEXH5OtA0WMk9iQGl45mN4tXA8mL8vXYRT3AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751325594; c=relaxed/simple;
	bh=dZPCR678R/xeISieeLtaPdYm3nxoGQavzWeiGYxC9BI=;
	h=To:Subject:From:Message-Id:Date; b=Rj6t1urHC9wK98bqA2P5p4Oa7X+BJFVy8+xmCZpvQ8pfgxagZAA8I2+WN1K3V5ruAHMp5kmT+4yhffxu1dbuuOpe2pmdW0ZVJcTBRvJY7CZnb1DOXAjE04ill2N9zkw+9lFd7Vz3XeLf77FPzX+jTKg5rMFDduWvThPeOBVewXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EI7XWnJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EI7XWnJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0283C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751325593;
	bh=dZPCR678R/xeISieeLtaPdYm3nxoGQavzWeiGYxC9BI=;
	h=To:Subject:From:Date:From;
	b=EI7XWnJxiDUv5ZqQ02bLyzGFDVmCDwKayAmRjOLcG288OcuDOOt+dDBZr8/AHDp9N
	 M7+lkFebJkPvIbCMnfMxic+OOzbMPhJ1oYgTQP4jwtg0Z79ELnnbrQzDm0R23LRen/
	 IDn2FXbOR2sdd1nzipyHoNcQ4/NOzeQAW2R2y3qy83t45mAMgEbpehZr8I2HWBkRJl
	 uA+HclH9W1037vPrhoX6HKctDuPoxvauGIKbC9EBVv5wxPq9NAwVArqQ95q4+KOLUz
	 caLAhtv/Wvfyv0P3BZ/UKWs42+8GWPKwPFz5CS7c//rBBm+VBWzeAClt+i+YJdklDT
	 ckqeqlx3ObLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E234C83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132559357.11913.4385338215717550955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0b140936372b53a50104a96b929f056ed56528e5a5682f0dc2d1bb92eb17bd
Date: Mon, 30 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751325593
