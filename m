Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C8D2F5A1E
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763060394; cv=none; b=q34j/tkKRWTdmHzpRqUAbuXox0irk3EXVTfCCP6u/9r9ldDxa/MTbkN8PBoSAMpwn63VCGbU1ylzkQuzAM547UQiKt+AToEpoQhxUhCXMwP3k0JVLN9b8C1DZzG9qcNqqd8yPnapdHqjj1jczdypXwZ5A/R0DLm71I7rgaTbkGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763060394; c=relaxed/simple;
	bh=/yzMCzdlAAqYjvozTS0jxH+GP4oZzWAtrW//mtJOOX0=;
	h=To:Subject:From:Message-Id:Date; b=U/iBHqc+irhb7nXFtth+4YLtKUKJ03amWzTDPLQFvbdmAa78R+nAzcbNysbKiw/EeqFCkRSNBOmRcqId0ZaTeSKoMomxPVe4LuE3HOqtXUDcrOBh9lov3zFydc94kGteyfnbwLhJZeuLyiiukG7JVc3RmRYgiVWeL3FhFJMyej0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyCOfc/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyCOfc/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3ABC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763060393;
	bh=/yzMCzdlAAqYjvozTS0jxH+GP4oZzWAtrW//mtJOOX0=;
	h=To:Subject:From:Date:From;
	b=YyCOfc/fHtkyxnDLBeSNTa6k5EC0hjsoX+gf+Nbr00qBD7n4ZO1OstPu/zFYMFvr+
	 NTBP2xopxXtXHluMzaNPyxBig9FQ6PphW8/4MffiRqIQiianKzn/UtVamXsrwgb/JM
	 DWai2/Dd4KfAKfh2qNEbwJBDRhfU1r2dULj55rW3kRB/giCq5UGOqevcB1cZ/3NSof
	 br9xTu1CzFmPOYE5E03ca2adSNtpTezF20/hhgq7PyWRUTvsWuxeWQGvZpr37XsRfB
	 a897kpOJeGwoos5MKrVCksBT7KweNbNSqB4/0d/Dk+MSDCeURzG4TuwuQZJrk21FO3
	 CW6/VITmT4LIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90875CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306039358.18674.8659946745313011550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf05c8e59fce230f87824a5f1161caf29c0e99c8ffb646f6dedb565351412c3f
Date: Thu, 13 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763060393
