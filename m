Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EDE1E49F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724529954; cv=none; b=NxhYVyatZnUe95/+IF2oSXfSQwTEVkYwQLfK59N4eATUtElUs9BXQeVA6g4K0TMiuMJiszX+gqp7LfqLXNNBGrhhMs9WqrS9v88E1hKkm5brybTSgYDQkgxPd8PR9pf6GQ+V+A69gyT/hVofTv6zCxdv9odPxRFfqFrXJVuHKqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724529954; c=relaxed/simple;
	bh=BZjUZaqJAUHikB8AJ7BwEtjnlkq0ibADtHcCcko6+Y8=;
	h=To:Subject:From:Message-Id:Date; b=FCtoodsUjvc1TRsZ0N6E28Wd82jToyhs+IVXyY086KkAbn7UYyzH919xSvdnBIlhGpElGj962Mk9oF0s4ngjrs+TS2ah67eaOlhWCy2VKYy/RIm+j7rYI69rFMoqFVCe8EiZ1Hgbjucz2m0kuch1AFrVkWpumY7iurOZWQuAZMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVNgrmQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVNgrmQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D90C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724529953;
	bh=BZjUZaqJAUHikB8AJ7BwEtjnlkq0ibADtHcCcko6+Y8=;
	h=To:Subject:From:Date:From;
	b=QVNgrmQ8L3F3c8mXIbJvRd1uE3c7t6x2xiR3UIHsmwiddu++YXRvGvbhZnxPS1K2X
	 v/5FMwX0v+K5boqw0t+UMMzoNdnyjsG46vrWdihYqtLChj83fjqO7blVXeTLe12DcR
	 qU13UCQaKTrWoffiW98A9yd5xIF7HdR2hlrk0eoCVfr2JqSCzSw6RLwRdSoI/4QbYT
	 JwmeUHRxYVnGnu6Ui1mvxSq0ETRaZMO31drBnBPjYQXAZydWnaYNTQ8jqKeJZpDc5Z
	 qqQFyz5hNiUMsHZBA94wAWdnw0t5YxY4OIRNbPGRqyjSKizrYBd/iLiVZ+Mfnkz6Zk
	 xYE2KmT6dtqtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A17CEC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452995361.13884.656034850301648742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef040e18df6924719170ef753be0c6ab4dc969884ee547dfeb7d32e6eaebfa8
Date: Sat, 24 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724529953
