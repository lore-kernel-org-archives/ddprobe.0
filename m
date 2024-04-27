Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DA22C6B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714180343; cv=none; b=uDjVRVoLN/AyKdAsOgT77F6KiplGdXARqSnRTOdO/i3o/KWzaomAOhkdPphYRdyiM5UB1lWUR4BD89oPvFC2BMrc4JRFbZHiSO1O3Kh5UutPvA8SrJgjOZoQIm6x8Ll9je4vwU23WdkpH3CMKhrsxT1MtkXT/K2CgTVV6kV8Fyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714180343; c=relaxed/simple;
	bh=eMiltVw/o5TX7AiP4LjVlKV0/v9JmJ13yO0J0AMteek=;
	h=To:Subject:From:Message-Id:Date; b=YtgV5TlnrVKaegs8JUXiKdkKxxUnS5MKZXUEOPNhlE9FCIDhY+pD2p/KjDPVBNYNnGu+D//dvRHDUQ6Rdt24+1qoAByE+RYlkLGEB4Xnz3aYH5p1AewOJSDOBSNg436dumo+4LeTm8V4CRXx18VQarbBL+iYVPpl9QL3FhcmVxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQWL/SHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQWL/SHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B15C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714180342;
	bh=eMiltVw/o5TX7AiP4LjVlKV0/v9JmJ13yO0J0AMteek=;
	h=To:Subject:From:Date:From;
	b=rQWL/SHjWV1y7RjSt8k52HwU9vdPLZUNJDKpPhIIY07I5FqRw4J9mfLY5dRq5c2sw
	 Ep3h53KOwcZWb0Bbms7bPtJMPcUu2Gxy6z6hQRxYXVBlJe5vsrVdDDfNEDRLnGY91e
	 BP+LRaTyoYZC5xL8sXFB9TOOSEKL8Mz3Eg4eY7XS75dGt9rcLr3dyowJRLQSvLCd1J
	 lWXMgd/+lJvx6CdRGHVYZ7Qpt1ZfxNl81cFrXhxVuPZBZZ0KFXkmCzScYBmPef4Ogy
	 FInWwy2qraSFPw3egHCqEt8aIPbkUkSB4o8+d+gB6Ch8BV78LkeUqj4MW1gNsjDod1
	 dwLps9mFTqcew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0715C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418034275.10580.950136441693543675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3e62621732e1f686e526138613a1d79002e033e6781ab75c73e93f57966fcd
Date: Sat, 27 Apr 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714180342
