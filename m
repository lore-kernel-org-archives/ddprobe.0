Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 954CA2C032E
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768967034; cv=none; b=k2R9vU80Wdvk70IIA8M1c2wDgFesRylWBT3vWd/j3tQu0UhpeW5+8AVCQt3p2ZT/NNbGNzITTvuAZcc3DoQ2pft3Q6FvAfr9hb5g40eT9aU3LO/6G7Jpbf13PPbegCLUeNAFGnkl233bIfGYZ1vRRh8Vy4Opuzt+ZcFYtnao1oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768967034; c=relaxed/simple;
	bh=tFMCddRvDV8cgsU+YOkhDlk4otyrnD/5lLu7DFTBZAY=;
	h=To:Subject:From:Message-Id:Date; b=gbeZYbyxpb/tzS6H+qRLhYKXQRs+bk4q8H0MRPuyNimgo4ZjYPpVYJvs1YN5ehS6hP2TL+TcJk8SUeJeGQKVXOg7eC3X2eCqTnMGTBW4VPK15jtrXcABjKGRc1GSwLBfFHxluoV9BCrx2TdDfrNKbQyytkh5MuAGmBQg60YTh5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O46eqFUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O46eqFUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B98C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768967033;
	bh=tFMCddRvDV8cgsU+YOkhDlk4otyrnD/5lLu7DFTBZAY=;
	h=To:Subject:From:Date:From;
	b=O46eqFUL2QEXDvO3zUkN5C2ckvgQXzlh95wbfwqPa6/jzVG8cYeqPUgT0XSCUPZCj
	 h+Noj8nljtXOxFsUeoKRyvBU4nbsnsdrtwNRTLGDFnTWe9JvAQuCLRtcOzW4+9BInA
	 fo2fSG5Ku2yctJyq1dCSQC6lgd7xXi9sPrreOhgzyHuSQHVjKzO9Bk81CcuaTG30ys
	 QezQWmBb46FAoA9IWjCiRs3Iajd6w9PH0B6boIERdqK5uNyuY9guo/Z5Cc+b4aTpnZ
	 8UFGOJp7eBmOpRlzzA/O8FG3gPJ5i73B8k5OAMbHJiWvua2rcSl2K/kphEEqPG9djb
	 r0E6nYjHK2WEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBFCCA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896703357.16541.12730054029530162471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab2c706eb725a013789db952019256eed39f31a023370f8eedaec545b76790c
Date: Wed, 21 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768967033
