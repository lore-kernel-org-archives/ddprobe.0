Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F072B38238F
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330894; cv=none; b=YwPuX2ATlK4dP248keswRs3UQQIH2T+WO86Zp9aC9Vm+b+oZF/vGNMn2g2y+TMyTeEbBoAo6mk+VCTldo/OSV87726DUya8VZO7rzjov+G9vba/mS5UG/0sbHZb9y3YY350vV9FMaBOIvTRq/oT9ARwXIP7xQ0mAx0fWpVqfxFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330894; c=relaxed/simple;
	bh=ndxEKHW8Jif3eeDNqM+QDDwLQbB7D1jdlRvp+D+Y/ec=;
	h=To:Subject:From:Message-Id:Date; b=Z8y4jAGpGBtWPHXvSFbJwRV137ML5qpIyPahmIu2v3YlBBz/sqNxdR6yu389biBFz030mA02A1f9GT7Y1z3B9llqbPUTS6wlkrAEmWObMZpC+Sln4JPrut3DquNUO9E6YMd9hK7GHD9pwSwugWMHwYQDP/FvS/pkGS0DF8xEnxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLSvhDaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLSvhDaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E859C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773330893;
	bh=ndxEKHW8Jif3eeDNqM+QDDwLQbB7D1jdlRvp+D+Y/ec=;
	h=To:Subject:From:Date:From;
	b=kLSvhDaR9yP1o3dbo3hDHyJE9nS9ZrTxeluG14G07bvL9C1vXNfbOzEfxkK7i7LH1
	 sm/rEexaySKD3oM+qTWDA+d4kZOBA0K+Gi5vl7wpUXM2b+wruzYNEsQiMlVWeRqnwy
	 aMotUGV1IZzZp+f7DUyE/3CncTzJZXkh6qkFkKPN9pBxHoysvHOPG3LbDTa9/CQt61
	 5xcXuASLjkpJsTikYDTEw82rNFcyxPPf2+dBxCJ5Zh+r6MMaYdEegZ8r7hDrxvA30F
	 N8UKKAm4pyT1klDPOqyfbE47tzhKJw7+YyMiJAZFTnPZZg5NpNYRi0foFUQ8+0bHE3
	 cvljzjNDHHTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7751125853
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333089357.21151.17094160753704385320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97d1fd027b497f4aa8f56a868b82e6d20866b1ca52b3590da8638c890e2a660
Date: Thu, 12 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773330893
