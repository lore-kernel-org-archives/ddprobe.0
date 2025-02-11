Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3341417C91
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 17:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739293854; cv=none; b=U6HmkCZ+9htj5Kv/DrpSMsH/5S57KqNOHghFauNLKL8V8eSonxrqk6URezRICz2rGPmMRuSVdJh8zpFe2QRAdxzT5K7B7CjVyCoAs5Qc//2p1OEkzvgnPuy6mejDkOcSmJ+0zHBoQVp0ROaRt4SIZTTaKTAxllGhZViaTd/jv4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739293854; c=relaxed/simple;
	bh=j9Hj2LmY70dcYj9bnDOSuJ+ZJAAOAL+rb/hfEsYI/98=;
	h=To:Subject:From:Message-Id:Date; b=ooFtu4FD2xajNEEwkdNRnIx6TvfX9fzg8ybIoUTkpy7C1u2UbXKLMGPtaOcmGDyNCDQXwm8Q7/SVF2BA0+0ZNW2hpm42Qxuk2i9KhZNpjE8nJEeTv4BHkrvKAPe3XGwAgwOpYFpFRi3yR4Mdj6s8f7ABdEqNHaWv5bvujap8gCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTNTe29K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTNTe29K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BF5C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739293853;
	bh=j9Hj2LmY70dcYj9bnDOSuJ+ZJAAOAL+rb/hfEsYI/98=;
	h=To:Subject:From:Date:From;
	b=GTNTe29KvzfBpumO2Gq1O9RJCT3jYSCCTuOTBsxwGv9mG6cQK9wYb2luu4lHGQE44
	 EhSK4tP9roRZPsFgnqsALdXkCtV78jTKawcvkGYytrOCCb7nCIzqdHmqUaXVObp8pD
	 gl75TbEu9kWdQEm6fIcJQoUXkEit6IUKWQPJIhkAZys3cberbTYLJGQIdbzUfpnYtS
	 aqHE/Z+KqkTfyrZMZkbp5I694DdfkujyzuR4KqAuFsFA0lgtnMFXMqqWyvFEX0Cz4Q
	 hQtlnZAQrS3ufegBbVIyP4iTBl1t2R+EU3Y0vzeQKYdN6t61F+iZDAGBxrLu9gMGNO
	 QWZcn1QP7kueA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9289FC0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173929385359.29536.13110706848765378832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a6da0b8456a0a122410d7a63666a6e4724e111162bbbbb78aac76720e4441d
Date: Tue, 11 Feb 2025 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739293853
