Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456C1BA2D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750641595; cv=none; b=ZL0CEmjFCOMteze38ctpPrIDvcomcLpFuX1J9CC3bPK8kYGvVY2qvpkyP9627RBAkY3EFCfOyJXiFPan23sONhV4SfgKcigxRD55rP/hw1RM7ctgZiIP7oIbA59xa9plBYDTXT9kU/MQzSElGA0HjO6LsUODRzZzm0N5gd7x+XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750641595; c=relaxed/simple;
	bh=mMcQZHrcDRSXWewr4HNWiZBsxNc/U8LCIp1LMl40Lec=;
	h=To:Subject:From:Message-Id:Date; b=CrNwGlcVflCmRDTybts7SmTUZLdvK8XV6n3TBRnrH7TWw7XIpT1RVpWOmBrfDjtpeu0rtKohWaruHZl9JHJAiWAO3xNEIGJZnOjtkXBQFGJN1hPF/v0d7XH4M9qZd+4RhCOhWsK0CmFKlS/M5EeNOrK+8FZGPhXW3UHD+FSSYU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbNmQQN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbNmQQN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12FCC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750641593;
	bh=mMcQZHrcDRSXWewr4HNWiZBsxNc/U8LCIp1LMl40Lec=;
	h=To:Subject:From:Date:From;
	b=pbNmQQN+nMRm0TfmV9diPMPFPob+RdzeDV82L4P0jTIK2qFym3QfgQMpe6fMr/wIm
	 iWJtg2NZqYJZDVwIL3PDnCRtU+pvq/MeOWsskLHf1t3tiUQAgw6QApAc2JZqe34BAH
	 oNq74Jwa925m5FL8nuWbrRCl2vp7fi3PiJVbK0YqbEn0Zey0nzDt9aQixkkYP5nc+c
	 zc+etrOa5u+ZVfbBWXOw7gkuOP1ddQ6QYUQog+aLceYhBKtdf/EtQ84XFOv6AldxaF
	 6YSKzY4cSAk7empacCIYWC3d5lYFQgGDNjfr3mWrZju9LszXu6azqlUmzTkJCU4SlJ
	 /56LxaJ5H7Dcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B74C7115A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064159358.7039.6966734869983572912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec9ec7ad9f8164037d479fac62b24a7112f3c42649acccc13a3bd217c71a5da
Date: Mon, 23 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750641593
