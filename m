Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1B42D2486
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785208834; cv=none; b=tTUx6hnrVPpVUPeMgnEL/EFCF+naX9AV2/2XN3yXwYTrIsnisLY2quXd9SV6OP+YDVKrVNWJZh3SIDn5+TT36qVzg8Yku8VptOjD6R279gmMMVOiNO0Ao5DmV/xxHDJidQmD3n8vQEnvdwd6fG7FnYbWro899qOBQls3v81mp5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785208834; c=relaxed/simple;
	bh=aLwn/qCEhP+UONpqxQWZHitNclcCump+p5lz9kRDeXk=;
	h=To:Subject:From:Message-Id:Date; b=WNsY9UZVyRWkHBmVmfO3670SG+LxjhSfK/pGpoyllPbCMAozqXZ1cqU7DfiVvJQlkIbMqiHlHTpwNkKVGu6sOL6IJZxrwXUecHGGMZ33CPwWQ/F0hxKQRF66ewuJRAe3ZioDhE2i/LlfDlOfuYRygFGAn0g01iQLGqISn/l1XCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnIIZZ25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnIIZZ25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9A7C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785208833;
	bh=aLwn/qCEhP+UONpqxQWZHitNclcCump+p5lz9kRDeXk=;
	h=To:Subject:From:Date:From;
	b=SnIIZZ25Rv0crFYtamlSMArogCeIp5c0z7mFFxdtCB+ytIT63O2/kPZMg8Uu3xQpT
	 rtcqLrzu/CV5cIAnfOxg79gT7aB/GyKzGnELSN+obtqmfXbcEt8cMOsvSUOS3cvwSK
	 fao+qTa9vT7G7B3egT0PmfBcsydWRj6yPHkvy88jlfHPj5xsTWA7zKrh333x1oIDSe
	 cdZrvAIDEIuxVBI9IvOH6Q9fr+CmLi7/oV3Lr39zzj0s0RBa1mAnolQibg6cgoGRI2
	 lxEI/nUgGC/7DtBa5PWrTWJWKzZqC6RHVvhD95jYWwHRRJbh7hg/7YHsJ4w0K9Kkrt
	 OS2xAPbduW7Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB9FC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520883369.27672.8462303642239396667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff224393061344feb5fdcd4a2a3393476bbcffd9fad11b28db545c88be1917ef
Date: Tue, 28 Jul 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785208833
