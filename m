Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1229A1E0DE2
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755068394; cv=none; b=gDfOFNMW9uVQoUdvyxJFtpkXNmjhh3VLwCzdPa3ydSADQ0ZgOZWwxdkpnxW3g8cCErlFi2EWgivMjhMrVaaDVLAhTqTRjkdkxYEIzlQ57WAd6bW9wuSYCNNpVLV5uhyZ17ClFjqjf2JrhBGQTvZI3dLj3CkVqkzOYvcZNrnoYiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755068394; c=relaxed/simple;
	bh=vty8rE7uYa7CMkElwG000Y/lpkigj7zxn0aurhZLGVA=;
	h=To:Subject:From:Message-Id:Date; b=ZUPrZBqYhWreN+Jg9qhPkF6+wiL/CfHx+98cRcapDu2pVaftTmor/i8FEE33EWepUd4EGHdCtdsAur2iC36RQbuRkni4Y/cR02SVCzWsL/em+vocNwXl75TdycpFw5KJ2z+hW7b/OK85mZVm8cy9yCg3evoxVh26ukjq1g63PZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvrkM/6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvrkM/6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB5CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755068393;
	bh=vty8rE7uYa7CMkElwG000Y/lpkigj7zxn0aurhZLGVA=;
	h=To:Subject:From:Date:From;
	b=VvrkM/6xD1GYX38ofqO9V04rrCveTBQ4regjCJCoAad259aJe6HE7fx+K3zu0aRvJ
	 Fehy873wAsDV5BJzOejFUNLUCu0qcvtPnLzyQxOwYdGbpzf79o4oIzVFVGNMw+Jn4H
	 60pC5X3LxSGyWy9p8RS2k/t9XzI4GetVrBKYolAQ2Jwu1C75i4pOf2K4heIABs4YBs
	 WlGWdx6sU/TvNEixEWrxzEfNBWvc8dmfrkWFKVveS5Tpelg8NhEHLMBHdyDO+ybrjS
	 51MuwCf+25KUXRTk9RzZOY2RxLqEnB/kQFicm6ScxwTIup7UlLa3hOBDGtAL0yQiCH
	 369nQ/LPrNvQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC49C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506839357.5634.370379120931395879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8484ffcd2d94bcaa8f7995ab2b33ec7ee13a997bda9c8b76a297695e97257bc8
Date: Wed, 13 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755068393
