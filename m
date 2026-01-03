Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C50246762
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767445434; cv=none; b=tIuncb2cCJQnTUYUbPw1vQIME+Zag3L8Apc/hcFXgrvFLQ8s4rhk+kEI8hBFpipUTI/i+ZcRexRXyBLxUkpomyIbiGlcsJYn5NSvNv3ozfONH//8ANtlW6TbJGPkXDPCUU1QxwAqPyZapN3piU82YlPhqYaZIg5lKlfsPDineV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767445434; c=relaxed/simple;
	bh=9ZFEwRNo3ED1H4tbY7YBMVJKnnmRHCKR/DgnAvXjUOE=;
	h=To:Subject:From:Message-Id:Date; b=JdHVcxp3U5Djc1q8i3g0eh6lK/5y+kTB/eNTMlMW4rgOqILPl2WjU8kSwgbXz+1Vq1iY++fy61wkxj4sbTVV/q6bnVqlNme9qU6bOzClkvuXBdDVMUxGc21RDIiKHSBcagA941cKDUcajrnY/bQroqKn+hEhch/LGNIKgFO6urQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2jUUeyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2jUUeyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0916C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767445433;
	bh=9ZFEwRNo3ED1H4tbY7YBMVJKnnmRHCKR/DgnAvXjUOE=;
	h=To:Subject:From:Date:From;
	b=Q2jUUeyHKBZLF34CuXx0JvV1VFBOJkDNjgUnVIwRuyNvNRNtSJNaJNvMo3KM6GCNN
	 /CJfE47792ffmNjl6tXefM7p2g/lmAgKGQq0ZWCpzv8Ehou0TT3GvZU/e/dz8Jp61i
	 KvXPEHT6xSxXVR/osGRm3QkjdB+bm315uuJ2+ZrwJos/feRf/fA+NDxbvqaH15V2fc
	 m+kf4/3pBDlWpN4JwqMG+fbamQ+iZBzb9KaozFo67+sUw6sFIF0c9RwlhCPYqjig1I
	 7qHREEp992Vg7OAxQN5dt2DYGYq2ElEgLGDjb5g8ddv88seFp8owEkwP7rPSa6U3JL
	 IP7EXwzGbHf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF6FC6179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744543357.11658.16616446806114634245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a51b8fc310fa6711ac8ab98c1dd9ae21aef7b4a980b347766ba8408788675b1
Date: Sat, 03 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767445433
