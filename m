Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3403820E32B
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743526795; cv=none; b=cKAJjaidKhN78+RSKG0STflDdpCLjv1K1KsGznL2GIDvIpIxulU++Vygvk8ZqZVKoMGr2obMDo95/3iqxZXb3zuVl2ZnK+zpLYqBHQR8+UvESbn/iJAqYNSYaePTYYC9uSV1Xum5piBAy5JFDJwRWnqUE84Jp18UdQS6RNe2VTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743526795; c=relaxed/simple;
	bh=HWq/9pIv0ZhpJjdLYkFTlm9FwOj0eYyiPpdoZjG08F0=;
	h=To:Subject:From:Message-Id:Date; b=JePq6rLDb14DcH/w+sWl2Rr9pQ5Fz5ojJULBczavbvQyT+Jzap68sYBQAwExp5PFxJ2MRndIjuyfLRulEkD3seFq0tuwwYzSuFii7ADyXEQmoOIHpGslPKRWWpXxbFrme5qiTCeAvnfxfUrFqQ68pPw35F9ZU7KnwatUKeIAYAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adK7l45n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adK7l45n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1EEC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743526794;
	bh=HWq/9pIv0ZhpJjdLYkFTlm9FwOj0eYyiPpdoZjG08F0=;
	h=To:Subject:From:Date:From;
	b=adK7l45nb1zPoLiPZ7LsHWF97wXbDqzTJ5rsnnfIWEs459tHQUSTcy5lhKlwH3Mkv
	 vxhiSoIKkq8iFLUL7p9fEY8/rt9MTdAy48Oh3ebNYcq+DWQWS1zXmNnwahAbd2kJb4
	 0PHsCm0GixIg2GD+9ReVhr7rgHxYB3kpS1Gd0qn+L+qtr3eo248dmJTkkkZLp77TOp
	 mTtphlKhbS1JhuFU8cBUI0dBsWsEDnXjqotdo+B3+ZDGVUxJBbGDYyfBve1vu7m2Ou
	 4CLbuV8ij/xtQ+sclu+ntG6Z+88AtSp2mOi6UzJXvayjefc/JRYS+ofXqBroqauFoa
	 6QjmgoGebmX/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97250C36017
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352679360.26309.13629881601449598702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458669a3bc73859f23ba2e6487bab264ab0b384464166e3ebba5786f9525cbe9
Date: Tue, 01 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743526793
