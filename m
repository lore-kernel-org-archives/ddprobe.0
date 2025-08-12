Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C91D2CA9
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754965194; cv=none; b=Go4lDR5fGcoFu9KkVc/Oi9OXpKv1EY17lPvJUqHmtVXiWPOK5Yr0LKorO3vZ/z1I01/3I4FPCg33wZjWs8efVSPJiK1NmDvZCpVlMpdUGkl5NjbqmtgkSIXReCSDq5Gey8hOJ5lA/4SS4prJ8G2/xcbto7SQ+A/TcWVIIjAKcIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754965194; c=relaxed/simple;
	bh=hlY0bbI34DhdZ1kkBm2Nm0LaeGdlTSXNV7pcQHXNnIc=;
	h=To:Subject:From:Message-Id:Date; b=pZnAqnNxafykg8d9g0y0uY8foAq9XJJUKxstcIN3EWv0lblBZ9wGjnYIcPdnmJMFy3mzYjtuS8Do46a6LxmTPnoiPmmOaPfj1hKDM40XqAUjOXUN9K0fF2bJr6XqgL7R0OaEP6e94CmgU9LUWfhU8Xz5WH+XiGLBUQpChO1nHnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJIMMK1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJIMMK1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41B1C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754965193;
	bh=hlY0bbI34DhdZ1kkBm2Nm0LaeGdlTSXNV7pcQHXNnIc=;
	h=To:Subject:From:Date:From;
	b=uJIMMK1g00odIXG3WNhxHy/JO7+qZgNdtgi03XniOYQgKK0IUkaQFTemtxbrs8MkW
	 VFaOa+QVQ3VN0NOToyEGZOAvcwbJUGSSV3cvFhPiT2f4hLhkKY2qrSbWvR1vVOFWjW
	 T7fuYkKZuqeofX/nEPYzHS1bi/NMpdLD/3Z5gWKCgYqsyfcqds0n3FluTW2P0JDhx/
	 YqgQS1XQy8h6o5eGtHVK42O2zsqEr76RQwfHRPbuur6Y2zgnNgHHSHn+1U7ZWboryG
	 TEkBMMmOK2WU/ODxs4ZKS/jDvgtfvRsMWu91O2DAzvU6vyNSUzoiO+objbuocC2c8N
	 +BLARkXkkw7zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91875CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496519357.21922.624943884642378421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2517f51946856382086259b11769bc4e8ac8f3d92151df064b3c78001964b0d3
Date: Tue, 12 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754965193
