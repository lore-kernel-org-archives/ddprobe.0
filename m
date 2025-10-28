Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C5734C13F
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761693594; cv=none; b=BcJoDEUzf95m+oQs/mo1iP11h+RhIcxD9gnRMeKw1/oFOMw/hGjs0Ygior9rQXfj2EhNtBpIZhgsmNPbJNvR6EuB6MPFpLSy8a7qAVcxPAy3o9WELYRt52CGs2yOzdxyDpZg4JiVGvuRDU7gthnSGWN2Lsl/S2UO+5XTfrJxGpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761693594; c=relaxed/simple;
	bh=fZ0aUWbRSCOikdr3qRTwifQONJP/7Fee2r70txtUVNc=;
	h=To:Subject:From:Message-Id:Date; b=sXhY7TOKRs4jWufFsg5HRhsEQFL3VRvp4HPk6L3Grh2ca2Kpsb3DHNocsVAD3ntjxqdaiHpZ3389epoc8pygFf4ZuBY6gMQCY7Sc1bfQolmE2Xa8UnCbhZ/X6xVdyVYHutq1Wp51pgmp1SL3vHDt+/btCnwbMThpLKEVFbO6SzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBMACILn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBMACILn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA47EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761693593;
	bh=fZ0aUWbRSCOikdr3qRTwifQONJP/7Fee2r70txtUVNc=;
	h=To:Subject:From:Date:From;
	b=mBMACILn42NSf/m9J7H9cemeZmeRY6ouV1ewJi3g9MpoFG8tymsdzDtR0ucSKrL59
	 tYE18+OBfiltxlz/96feGjLuMVfLVuh+0PNSktUB5oTLs9hE/JIq8EZbL7Rsz8OLyW
	 tZke859TVQXXURJyykpI2YGGY8SeFfCzQifgnB9O02qtTPQ05F3RIKpyNNgCt/eKSJ
	 Jk+RF6sOpErXUeno5VubOPZj4JfnZG9aAwqupIzhax//vbNvCK0i9PW3sogk9IY46B
	 wyHQbeFvxMwQAXC42ik7Hu/uQlOtVkEGJNMeFDNQx+acH/BVUqwGGDUs2PNQHl2mzQ
	 ancVxWyADSbqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CC4CCF9EA
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169359360.24928.13593304861745272298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86840cbd3a7c007673c9e3622928e2fbd74f6a80395d52974bfaf51b86e78a2
Date: Tue, 28 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761693593
