Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE6521C9FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738711554; cv=none; b=Z11Q0MuB9ZmV6V6Ie85GBTbt1C4L8LGYiWcHMnC3j0SiFtJvnzs5koBAQWuhBeRAsml+fO6iyGdUBV9tTNyh7Q89Z/IlXrKWK57cgfq5XSH+PR81faz2HQnDpt/pXv5ZN2h9X0QpFnEIbs1ppMJiedah3MiVpqq0EtcehnjYfGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738711554; c=relaxed/simple;
	bh=ujy7tpTsSVlmB9VdX0J53K4PghuxixSR8kaPQK0CHgI=;
	h=To:Subject:From:Message-Id:Date; b=N5iP8i8HLnqGXfCYhXkFbN9cuO4Bpd7p++Anf5PhLzlAUZ/XRwkug3Z1vF148UQnX4TlzNUAvJGY9pZBuRcp9IsqDAs1uW3jLpiPxezVkE1KumIoE9i1E05EK5C9Up34g0ilV7ndNzvJgWRa38DMUAUuF3TKA2rinJI/6vZ8u9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szzw+nIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szzw+nIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94A6C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738711553;
	bh=ujy7tpTsSVlmB9VdX0J53K4PghuxixSR8kaPQK0CHgI=;
	h=To:Subject:From:Date:From;
	b=szzw+nIOEnK2ePQZMMVL18OCc+h99koNYwRb020Nx7l5pD4w9t7WrWeX6bWx5f8rS
	 OuSPhpszqzKPthduRle+nZfSV5nwrWwegwgk+wTCzmaMHMhWFuec+2gNwnHGQwzs3M
	 AQJLWgBI3ruoaUVbDRrKxa1bJpgwlK+gAKa4V1HA3Nr+FpRkYAvQFj0Rdc02Q2Vwmq
	 Xft5SWK5tsNoUtBfgZXVq0KjZwnOCjcmAsmkcGKxYqQbZF+mblo1V5bSxzd2pKxcGZ
	 nt5DD1FqwbMdbpqhqc2Bnj7H6rxyKw1VFuZdBjkkqhPxwDcM7R69ZyQKeKzxBxtKTs
	 R6bGLNu6RV86w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B4CC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871155359.10013.8045157468475188705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3aa6aaa8c26ebde8547595a8552f3788ee3c82499d855f5b2bf46f0b8b038dd
Date: Tue, 04 Feb 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738711553
