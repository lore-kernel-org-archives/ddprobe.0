Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AA121E3D8
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729035354; cv=none; b=Vqdpaq40Gv7DNN1bLLK/MTx+sgqTWAwWFiTBiSZQZ72EkEbAB0EWE+UaZA9iqrTOcGAB9UN52r32zNzxhoDOsZFsPYGIL8fSXoyWI5RbYvXINNxkaecvwEmioVF3+8/YVOFbN2ItbYeST2YMliK8tQZYsn94iREafpWqCEy4krc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729035354; c=relaxed/simple;
	bh=3qlI0TqgvAysX5cS+YYBp/iO71E6UvjezyGmyf3RYRM=;
	h=To:Subject:From:Message-Id:Date; b=jS0q/ycNAes6Z6iwU0C1OoqVO4WeZYi25yI/WU+sFXW4tDyKFNe32zuvRFoDgqzaur6PkhYopUDlqU5b82TdPW8tPz/cOYYxj2VgeSAm/Tb0rzuqCvTYwBx+LGV/zP4V9ss7E83XxtlAjxSYGTQpJ6/Sry4ycp60oyESy7IMS2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mK+qayZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mK+qayZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D04C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729035353;
	bh=3qlI0TqgvAysX5cS+YYBp/iO71E6UvjezyGmyf3RYRM=;
	h=To:Subject:From:Date:From;
	b=mK+qayZmxqAumj6nj22JRulfySxTE2tS9eD3LOhWtMcNsLrbIbXVukiQHzeSFV14J
	 huTq28v5CmLNJQIoLBFIoO6fl5pIt84VTaFB64vLdFOsnlns7wLG5sV8HzxbDvREcd
	 YFspFOb+9YN1Z0frbK1PE9EKuK/k/6QHfKwNAwPg7dKNXTfgUvukmX0B9petz9RROB
	 Puph7zJHcCQO+323YdqchlkCiIO6joSZc6mBaFSDp8RQRJXhdyItOn4x0P8Al/ZL2J
	 KG4MG4YNVi+0gAIS2HVwIqC2Hr3c5D4Onm1Avlz8WTyUg4o1mSwLexx8VxixofqGZs
	 xA9poPZCLQN9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94473D20682
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172903535359.8301.10255390426231488413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74cda67abbc7ea4962dc2fa746630b19f9298d24c2b4d482abcd37c1b8c9bd38
Date: Tue, 15 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729035353
