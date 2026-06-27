Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC3017A2FC
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782565714; cv=none; b=hE1xJsVZLApDRkXtOl5gVwIw4TKC2tEQcL/ZOO8v2QYYdxvIPhqwcdg1VsUxi4i89UcOfzRpMIy3LBHory1EulGJ93uD+hYaNn4/YPFQGAP9oAhNlrZLSrDkdH1YhwihYuVQ1Hp+xWhaXoCnPhFmQMKZ6Aqmnoj6364oPljr9No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782565714; c=relaxed/simple;
	bh=ClKsCsvvOR0NysV8Hs7FxwGCz/Sn7P+rXM8CzwKdczk=;
	h=To:Subject:From:Message-Id:Date; b=sW3ZZOXihZy92MxC2miap8YbrSI9Ofq3AKmA3TnRRlghSY7b9CsoVUdBxa50mRtgbdUhH8N9xbdjfNdEgcb6CRdBkmvKlMmYb2rUariqH+FFtdahiq/7G5p2M5nxGW6V8xOUTkiEAmPSxz/cLY5Nd1nZaQSd7eDwrHu8fFGn+Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccI/fy9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccI/fy9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17D7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782565713;
	bh=ClKsCsvvOR0NysV8Hs7FxwGCz/Sn7P+rXM8CzwKdczk=;
	h=To:Subject:From:Date:From;
	b=ccI/fy9f9BRqGItI0mKF0h0MLmzGYVb1xQDc7iBTxreyP1kktXzPv8hqefSWqv9aB
	 LnDgP4rYgs26Sar8ToS4zB50PmUcOa3KqTCpPZsz/FRBRP1LgoM5sTuHdasEilKY+r
	 O9Uqs8Acy9DilimIlFTrGCoNcF96pHyu4L8dsNwcEmAnJGkbAaqPKY3d5MEkfrWmrs
	 /s431Xf00eiv7iz9Tf/shvwN7R7a5FtXR1vFhM0sbcPelALNhI8RGdJATDPZgLGKJz
	 +rnvkGKEI8Lx1xNoNE14lWFaFz0wNZTKdeYp+adlYKkfLawMcVomslH046c19PtWb+
	 s/eRt2gEUZsQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04DEC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256571371.14630.3108405236213722168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ccd0cd5e9dacd3a5be7cd5f788848283b12745912db2c2fac57ec278733bba
Date: Sat, 27 Jun 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782565713
