Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5227617A920
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718988743; cv=none; b=H5ZEGvVfeKsrZyOg7BKfQpRZhCKKMF7Fvk7T3CLej7t62wlpkjRCNbukqTmMbnzCmfPtJN/Ca6bafyDw6LIq+X5kELK2yKbGgF4lrQuUS/5N2cKWi0frp9OC+WHtEb/Jhc3QrsFNSZy71spsVXb+Xb7/0z64Drg9Zx36iz30RD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718988743; c=relaxed/simple;
	bh=80TcJTcmsyjswKzfQ9dvZOLhb1febCBuA2nGssrpfSs=;
	h=To:Subject:From:Message-Id:Date; b=UOQwJ1hjhp6sk588/cklIj6pNazv1nOdRTBBFaiIe/EUbmJGpYuSeobDKckferY+r/FW5dQLSkKPUdGlDKW5O0cKLKaa6/j5tIq1WwSy5cBpL4e88sol9iQ/C4R+kUQeZUJT++aMj41n4X+zca2EC1Fd/5xMnmP2XFXTIs4aD9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csvE3cN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csvE3cN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA87BC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718988742;
	bh=80TcJTcmsyjswKzfQ9dvZOLhb1febCBuA2nGssrpfSs=;
	h=To:Subject:From:Date:From;
	b=csvE3cN0E8riQRvnrZjrvlGOfELFI1vxfKAz1HsibP92+t3ZepPzCq65uOWiGTF1q
	 Xo25N0g5U1GdDaTb3mmHPxGTh65Ar9wvYTNGmt2LKFE+Aj8dmB8F0Pxe1bxQaIA/5m
	 TCVP/1Z6NvJUqyHYMEZQMWr2O5vfYzcoL4eT+bhG47mIb/6sj9aamLlp1g6X6VwAXP
	 UTXjn3WYWgpsqEPMNQfL4x/ijS6k4Pf2/jQcIdEM4qRCWxpg6NHygwd0KMI1PHcxJZ
	 kzdlH+t+Ph0S1Uf2RzTD888fRpaoq8jW3LgH2JSlzqTxtQVR+ZnZYibKdqt4uYL5QY
	 NxBWsn+NVjVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80F7C2BB85
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898874281.24752.17730024244087429477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f692daf8e894e5a54f706b5543ecf94be6a0b20d56f42861fe73685369b69ca4
Date: Fri, 21 Jun 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718988742
