Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526832ED843
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780982674; cv=none; b=F2w8iT8MngKazMOXbAugTt+82rGMzgZjozvjvgkx1HKDNkd1fbv7BwrlFbxU0Ho0QcCUshS5d9q6cjM/gmwo/o2kXfV09iKAqm3KvlJRftoPi8RbHk6UE19ddJ9237e+6NNSoF5XwHBrj/7fIoN6a22wFRid922dlhZgHfNFTmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780982674; c=relaxed/simple;
	bh=v9W5TxMs/fGepfpfwsHBw1Ic7PhzHUkuOxdJSvc9mzw=;
	h=To:Subject:From:Message-Id:Date; b=JKjWnUbOnKogFIf61mGzbLh6WD6AQDBytQ+IkXli+J28jkpyAd1k3Gouv1ZjZFyeeeGpkjgqYHeb+c6M3rS3vgWCnThfitXk6nYSQgUYEUnVEOJLIoywB8KL8uhyrfzRJZZznmS+wWxNtT6jNY9C1iBduA8RP2uQYinm2+GiD18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mX7bQtAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mX7bQtAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE110C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780982673;
	bh=v9W5TxMs/fGepfpfwsHBw1Ic7PhzHUkuOxdJSvc9mzw=;
	h=To:Subject:From:Date:From;
	b=mX7bQtAQsbxcWRZKzR7Rt1kL/Go094Pr+9Ma5zh1mx6attV4+MWk9PcpcNv+1Zht7
	 SGP+dACd3ex1nFWFAvfYw6FoRrMbgKgmIzTM+PxqMbu52VqMgIp0hLvnbfDbMZAEq5
	 qh2rrt4ODaiHOsmPkZi6359Ug9sZIBZDeTrVemhyBm+UsHOKIgGAkPXI6o3f1NjGDd
	 kuobzn7V3RxQ9aNfpzCVyET9/F7b+Gq488giv6oWfyXoZBKValomTY61iJZSAIGJxs
	 A8LJe+Fz5yTexH7OaRU0OjGHkM+DR7ynSPI4kQifehMp+OdC6tUzPEV1fp/Bay51TG
	 7339SOXZ69d8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D00CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098267372.8159.6342782972285329608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eee4483ce53f5467e5422218632a22db3183959d092c5e3ba68e93f0b5badd8
Date: Tue, 09 Jun 2026 05:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780982673
