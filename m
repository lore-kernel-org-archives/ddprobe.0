Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C2D156F4D
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717153463; cv=none; b=rWeVMY0v6sUL5hYKYb6mYIWl/HstsAI4dZa591kx94NVbSk29DlkH73egmRDGvxT/s86vBgdK7KrWXCZb3FR1pGK6n/G/0p9ntOKy5A4xAwBPvs7067DWDjdzLaPszTE6k0ZvKctUhS080zJWWd0fqOtdry0+o6+/YeCrHnTt1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717153463; c=relaxed/simple;
	bh=mI3YwuVQVIufAnOBFWjYn+8M5zNAE4N4mUSY1kMk9aY=;
	h=To:Subject:From:Message-Id:Date; b=WNe/C5ov4zDWmPhTp1/C1N0o2eb8OP1c1QcGfMD4ySbPz3gWGtSDy2ehC818RyKDCrGw9qwAcnW6JYhVe8BAOihn1VPk0YJfq7aLeiA6/pXXrzWK61mBuZlXn9c2KHWRNGbUAL23v3QnC2Ff8ntNkkxj7+Ljg3sCbSw9h7vT4aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQJCoqwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQJCoqwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7415C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717153462;
	bh=mI3YwuVQVIufAnOBFWjYn+8M5zNAE4N4mUSY1kMk9aY=;
	h=To:Subject:From:Date:From;
	b=mQJCoqwSBXpGiUq9hjokoi4GnZEgFpDopA/Ez/RLuom/tAYjqay29RG/CT7gclq2S
	 FpH9Wa+cHIl1jHFsgKmAPoOY8hvzBsAKkt/lS5lJ7yPEhPKruhW/2O81l3bXFgzz5u
	 VJhoOAd49qzqEtyzoWQ13nk7IWwjlmaZJ9xMLn2xGDUwbGPcCKzv4jTw7TdmiZb60P
	 wDIC/K8PTrLqTdyt0M4Opn/L4liGfSB6U7r6kvmb5tl8dwd9Gsew3f5/d+N3KSqyUf
	 Du7VCyy+0okRdGSPoVPwXre3KOYpGx5jL9RtMFpsELI4nAwc2h00qHZue3VU+gTY+r
	 EHYDcA/kqEsVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B1AC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171715346278.21583.7082586340598475167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e85e253e17bec223f1b380f757db1d94afb6fde49097c85610c6f5c423fe5ce
Date: Fri, 31 May 2024 11:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717153462
