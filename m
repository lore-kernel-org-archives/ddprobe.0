Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC17677F0A
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707314297; cv=none; b=JFR+AM8vCm1DwFX/76Ca+dhtuZePEIo6l4hfrIFpPac6ItaSV/KmgnV68vNNgvm9530NCFwHAFgv/LV9eqrIIMGPAZYwToX3ig34laeV4/6xDyf3dsB07dWVnWWqRUdV2jesEfcyDgC8EA7eMgKHSaZGvDVyyTyULh4zu8wt078=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707314297; c=relaxed/simple;
	bh=YeEiua2cmiZ3GiSTkejzJF96JY5gbGy/RBuHZ7DeBsA=;
	h=To:Subject:From:Message-Id:Date; b=FNUz1MAdBhYROWE+RZAwG+gxnRvBtcQrjW8jIOfmAl0JX9ZegRIF5nOgFK9M7fPIk4/8byGESRO7/D+p4o6Fs+2XpC2vEOD/w85dNlTPHagID7kDf3HoJo/88ZyOvxioP9NS4b/ji97A+4IU8cBZBtpodMIt1BqF6fmLdCKZQdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVuyOPgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVuyOPgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CFFC433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707314296;
	bh=YeEiua2cmiZ3GiSTkejzJF96JY5gbGy/RBuHZ7DeBsA=;
	h=To:Subject:From:Date:From;
	b=IVuyOPgqT1Y2qDKtg+mXWnjnhKTcxrDb3kZDCLAo3n2UfHOF7BNHjDkczR4XqYcNw
	 3GgPad2CVoCmG5Rk4RoKkUeKR7hq3CswRG62gfxxXfH+nggZ9ew2wj9+6z/Wrqex7Y
	 iIHtKeDVAQKRcnV/p6fUS5VCrKEtllvri6lhC1dUZHfeViRaffK4LTf2UtSXBXmAwD
	 8iOm+vLDHCbJcnZk+RNdocbqZQZruvjCvJ9n1c+VxhWdUfmuzv4DORBJBswMuD4yAC
	 aXuLkXkqHKQUr16H9vFvuYQz7bOJ2gCVF4/6QZ1ecwDL5XRW6V8U9E4lfhe1XtQBeZ
	 H63PYIr/+uE8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DBBC4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170731429639.25245.12507231280988721179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5822e0932706dfe72da8e6467184e8de830361e4eedb72a23975ade60079ed
Date: Wed, 07 Feb 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707314296
