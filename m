Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A1B37D12F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769797434; cv=none; b=mW/01lzFqnZr4Bh1VozTuqwVjnjoQ8z30iB8Jf/i+o8ZZtxkjq/tcyEuNNg8dT2qKmKQqWLZBg7psOpKE5XtBj9xatqmfKCstpLXT0hyTuyDBsklZ/lMchdaoGW4unnw02tC++NoE2HwK0ya4Dg1ECyBDohs+1cxsuIon/KD0P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769797434; c=relaxed/simple;
	bh=RA1m8XCiO7lBrDZv0onObSFcDtYzx20iEZMSDQgCVPg=;
	h=To:Subject:From:Message-Id:Date; b=bUSuwXrrlCERhqZFHnAaodx47l4Zjw8wjZMLnuGInuPBEApDnp4i1Fh0t1gK9ou/RpgCnUeN/XbF12INOYW2emTSYYbrz11ExVW3GUYmMSwAsWp9vmITmnu2vsA7Jui3ZuIL+Yn7PrdxVCVwaTNi3kfqFgun6RJGxdqkyp80mzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeUprsrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeUprsrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769797433;
	bh=RA1m8XCiO7lBrDZv0onObSFcDtYzx20iEZMSDQgCVPg=;
	h=To:Subject:From:Date:From;
	b=JeUprsrb8R7FFrRceZmodyCQu6UfErIPd9M2q44/EQ6mLKQZdGHAG/SsehpS2+/Xk
	 bK6RSXAAGynusSv+rtWXRbZ56OuBh7IEQJPB678bGdPnZQ+EEXSSsbC+mslFl4E7ta
	 fXuXef/YFuQWq3tg2BRsk935fHUCj8bNzNIySeqwCFGm/oYCx6xeielrq4y6ktzEQY
	 qJ5/xzTsne7s1g1rVmDzEvqFIWSwPJs0jBoIcQDNTaJYTm9ehsg1IGjWLsdInCTULB
	 gT7ewyeUGFEFFM/ZaKmbF6erJclIfn/l26YXeQoLnBHL2OOfqgMmb5z+HAZszUQcjD
	 XmY983QIK7Aiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90950E6BF30
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979743358.8865.1785968801834543625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7d675ed7689512c11dc3fdac2b1c7bf6a43dec2a1a0764a5cc2828258d36e5
Date: Fri, 30 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769797433
