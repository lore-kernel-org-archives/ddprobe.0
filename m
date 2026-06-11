Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B06388883
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781167594; cv=none; b=CvPiSVFh5p/Yco45xlzqsIC7MOWaZDlsk4l3QSC0rxAqu1lLvq7+RiXlP7KtI5y6B7SEBRIR0PW73fBN0Ch2fv0oZVeaOh1rfCd5i3NdFxvUon857Alm+UCCgYV0bppzulSAUtHmZA2MLxAKGCrcukhq4byg2eW3jGqynL+x4a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781167594; c=relaxed/simple;
	bh=5hwzSLFRYghMBKlQgHj6lGzjLVIvDEWrdGNN6Mw4res=;
	h=To:Subject:From:Message-Id:Date; b=umMpG0Extwy/EDRpg36sbMW9sbooi0FrQ5Md2GmSxlj1JehBybeIXjmVvOYQZjWaMeaFB6YsyUPq3YCE7pXFm4p6gtVrry/9L6WQbRTXTFPgqwM28mRQzGnJVboYWdRDAyiLju1tF3v3Pd0bwCy6n62/WwT+I2ZX338geHrAo8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8HCQHHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8HCQHHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE213C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781167593;
	bh=5hwzSLFRYghMBKlQgHj6lGzjLVIvDEWrdGNN6Mw4res=;
	h=To:Subject:From:Date:From;
	b=i8HCQHHPzJi7vsEw+lmKFOFDFZzHfECLrDheBn5bcYA/qqvPcdCmOymsFAPj9T6ox
	 +bJdbRBS9sy+QiruOJlExQgxDBuxE98D6QF1wdyeVWXRvJ4iR4B3UidPK00mv5I5cT
	 eBB4dCm3m+vLSnkT0yjFemsBIaTB/BMSAMJW9YYKPPWqZ4RINEJkXMF/62JJAZbddX
	 NeIXNmU2WeRxVs7LPbIxm6+JnkkIdm+Lv1PH1zhP+WHMkq1Fdsc5Jxa0AVA9YDyx4W
	 lu4FljpHENmvFpk6vpVMbl0elLirM1vJhYNXoHbSPwWN7k2fVTMak7nJMQ2LkYF+lV
	 Iu2KgiauF+S+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEFFCD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116759368.4197.17994821990047853860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f62e601a115202bd7d12f0bba74400cb6c4ff66068d9b30ece3e6b84075b9e
Date: Thu, 11 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781167593
