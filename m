Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677C23A784E
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787205634; cv=none; b=BVKjTqiRdQrW/trwI6MVjQa7sPDNeR8jTsjSFvsRjkWV3OEu4KN5rk8NwJ7F0Qe9O9kkmYm38P+PA0qrDSl8flwYMOfY/U5wOhnO2uq+iDwm2x5VOjbfnnfPXHtK0J+QQCAS8E0ACCYrZJ6jv8G1xAMzkXtc6QtqrZZxtxbfO8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787205634; c=relaxed/simple;
	bh=mWhins5TnAYfazjwbSgEGXctr7osfHtMS8vbSNwir6k=;
	h=To:Subject:From:Message-Id:Date; b=uID9jigfEhpFqOPOMJ+CRKZsNKKjkEQGcv7KnPAsrPevzGAyvMcvRjyFwMYXoxW34Fww2F3k0sJWxNOk8t6yf6osZgyRsriUk+KSe5tZbkVD3Pml5m6SrZ0iTCqwHCf5b0/BVUlNnF96fP8QwVF+VqKy2LY8WR8XZxpTcsH2SbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6eVRrdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6eVRrdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB517C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787205634;
	bh=mWhins5TnAYfazjwbSgEGXctr7osfHtMS8vbSNwir6k=;
	h=To:Subject:From:Date:From;
	b=U6eVRrdVkIRCzMdoC7VJDFugsMzCh/JAapRxvlKgwa5gMfFyHslZrcyJG8xrjlRvc
	 74D+QaSnnw9beHTkHNhKE34s+XAyPC/VK0RXxGiJdENrOjCNQdi8ZvVi6EPZjLos0c
	 6YPpmWK043b2LfDeyG1+w2MOZCIj1tWjSYLmqztZnr9E/0X3BhlRijSOFOrfL+Cb9z
	 ZUdzZ9Bw6Q0Z6+dOZ2WGVzPB3N27goob2I5cm2QNpkSOuNBWbxlfIXejY9fO76utHp
	 KX/6TN0rT1DNvSTPfWrhhe2hgm0JVH1KVtwagCervQv0M4gT+XudQkP2Jma23b8/Ey
	 B3UBla+xNErIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7852C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720563373.31769.2972506398598241761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a1a6d20927385710a4c95eb2f9ba0ac40bbfdda71260c9dcdde9a76c1494d5
Date: Thu, 20 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787205633
