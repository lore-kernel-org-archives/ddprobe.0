Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12996350A34
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761076194; cv=none; b=blKFDNEOeyT0WntfpA+Z3k5J+6y4yeZLowzJEhsldLd73nD5daa5Ed6sgRHnoC6Icqit9n+sTDgD+aVyqjpefNz0UEfJmb12AP1fddxDh71XXkshrRzLvZgOT8EZRXfMAFf9/l8zGiYQEYpWCr9fxfoRDlwn6phuAkM4UOMldmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761076194; c=relaxed/simple;
	bh=UqMmKGeKIRCkHeXW4HXksx13y+RLemiKRKVhg9pFuX4=;
	h=To:Subject:From:Message-Id:Date; b=HtUmRhujmUrLnyrbDbRDMgpuCMv51KRo836JhIP8+u2jtnPPQIAHprA3gesL7BcT5Ui5nf8b+0ogu1YZA0mOHEHm2XyEtx0cFxOLcDBDEDjAbpedwcp/ZjPVUUvIYvF56ckG4mvyai4ecKyjVKr2S0cN5a0VJiLCvD0Z8aFPeZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpmrxcRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpmrxcRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F880C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761076193;
	bh=UqMmKGeKIRCkHeXW4HXksx13y+RLemiKRKVhg9pFuX4=;
	h=To:Subject:From:Date:From;
	b=LpmrxcRrbdvUVj+1O1iaGbXnGLJ+MKD83KVDdz0q3zl92f/jz9tLlPFvgaLFdxcCn
	 0y8jJJEIN1Bu1qWiZ9aoYROkCwTB68RKd6FFFi3/LFB0prTi7w0GhmJaCCA+OvB4yR
	 GpY6bWEmkbehImLOQrW0mvlKUilejKMzIaNt7JTCkXTJhs4Eo1XBAJfVRcptASrLjp
	 uGibZoPmLismcpnZWSHTxVZ9/m0rvd8Hls97YRsA48VrU2QLUh9aVpheg3wJo3DCA5
	 77+l7wl7lTYb6kjGxFbBNzILZMbyOKX8OsqUsPyCeT9csMgqEnVBhUBjcZMejGRqtR
	 CXK3eDvNU2b7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CDCCD1AF
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107619358.1520.10003680866803057416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5532d89e94821906b62de2b85c9b1be6b504ea24eb8d616721c60d39399d89
Date: Tue, 21 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761076193
