Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1872E3E0
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713112163; cv=none; b=L9ZmPXoKEhGMSqF8kdsQzBsVlwLSHJ6mPYQ4K6Hx7u4PxcEOtisJR/AIJGOQv3B4YzXZ1xNMobIOCzABAXxT7jssoK4z+IBWEmQEWsNm4jsVE2aXVVFnMAaHzw/D/1Z2+TS3CMSUaABlXYgJfZRXBwzQzUv49XFQ0n1/ioGr2wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713112163; c=relaxed/simple;
	bh=7WTzdCWLpY6gFisQ8A2ldklLPlCs6tXU9VZFvnh8API=;
	h=To:Subject:From:Message-Id:Date; b=SYU7zomq4C41Dte0HMrZlfb4cZZ0GkZKKJnLmgjaJCA17p6y2cPBSR/bVhcqWqYx8YC5qhBw7F3Wp+TbZE1nk1eYNR2AW2lUvR92BQH6B4j6NIUjWDc96zClLgIr/mWx+XQ/UlB8pjWpTXHBFQwxm3gw9dxXcsEmInWxBuBJEBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPrWx0LW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPrWx0LW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D565FC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713112162;
	bh=7WTzdCWLpY6gFisQ8A2ldklLPlCs6tXU9VZFvnh8API=;
	h=To:Subject:From:Date:From;
	b=JPrWx0LW/tEeLSAyh9nFMRaNmSp45r84XdSIpS700oEieIn6wMBcC/UQdS+FSzjc1
	 tqkCdj+Nuut/AkciS4LlJbUibxHBlJe3HeoqRKXdELT4RzgHTRyd01Jtb+6J4scXkx
	 OC30QU5TEoG8zYL9f7RFPytThpEIeYpKJp1O8rNCs2TcYhMrBzYKcB8AQl9fET352s
	 Qi37HbbNNqzkPBQ/fFDkqAgpb5p5OIgXzEG4UgPgLkxwvae4AAh0Wbrle1kDWX3hcb
	 PX/ZfLCFZt31LJBzGyM7fGrUO7rERnayjYc73TZywUAKLG+QFpJyN4G2ZKD7HwjxUk
	 Up4pLNZk8j4lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC143C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 16:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171311216275.10543.12457723150274431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eecf1d7a13e96ff337d0fd046737198226cb428e546c21c241a294a73bcd81c
Date: Sun, 14 Apr 2024 16:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713112162
