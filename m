Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6E824290D
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762246193; cv=none; b=JAs7SLYHFgQjvomXgd0i7Y++1NYCbuy3HTDKXPUu8HYwZuBTwNnXcgrtkAqP12yVDtB5qJeqbCphdP5r96uwEUzynjxrQu2usrUQ9nS3cpsBQfwNR1NBFH1Z1Qs5l1PtNePJQmXz7nJ7KVhXPxHVH41wvu1J2DlyBDJjKoiFFSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762246193; c=relaxed/simple;
	bh=959NQtLoVHojlhiC45+crS2kinzniJXRn8KK4itfol4=;
	h=To:Subject:From:Message-Id:Date; b=aTb1gCOzEOoJObRVVIy4f77hq4LvGSl868xeQKOqi92oYH5m1wB8wwT2A7efpXuNBYPC0wBg04Cdi3EBG+7aG7hu2ZKa7qL2DZHRd6boWxVHVBmPiIcyrS0dJWXwCtJteHGRL66B1ntMBXe+gOvZg/R0fL09HC3ruzTMvF+JL1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHYulgSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHYulgSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F86C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762246193;
	bh=959NQtLoVHojlhiC45+crS2kinzniJXRn8KK4itfol4=;
	h=To:Subject:From:Date:From;
	b=oHYulgSG8TfHD8fBPBIcsiqVHVT1Z/BVHS4LH0k0vvz3eQusc5yss2MzZb1wqIRbI
	 RBw1/DBBJ4IYzO31NsPy5fl7CGFtyMtAVotENHWDDDfNs/bGWrhKIKch/2bYONiIjP
	 KJK9DjsMnfirNBofuuS7sXdEvXaVCQJ315hYcPVrwlB0CgM1M7qvkC3LUmQgly8qid
	 D8mR9Vh9X8BVDAnv0T0KXXm62zEyr7LJ2kHn8e7yDTYvHIyesBmyRpvnZH4AbDxKV/
	 TSCLgFhSuYMlX9j6ydiE4X7tROC0H+giSw23TdubHjqz238cYWyZl0hiw19WKKbAXW
	 gD8oW0MyaDOQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95519CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224619360.16005.8626360930162754191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b10338d60bd73a29314c0013470bd94d73f57d93407a5dfe4c0fcc1f0295f9
Date: Tue, 04 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762246193
