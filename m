Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27625285058
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771910694; cv=none; b=SGQK4mXRXjw/je3tYj8HNOO++tS63C36gwqRoN+9FinnXC1T89lGrxMGkGCDdo8ybSjy8vcPVLl2wtzET6mus2DGt016oEdKf5hOfawJjFZTwzQBBS4b3ezcaK5y3uTeeZD+ecZA9AX1fgGMdm1AZ4R7jC2p0gj58/LniDN/jUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771910694; c=relaxed/simple;
	bh=RNAAM04BXqBvMa0AoETftd1KU07iNnq5rSif/ZcqvfA=;
	h=To:Subject:From:Message-Id:Date; b=mGYVtIfU0SPudX9TEjJFkl7cAaCE5vCRNrxpSkSB9/YKtkUfcrdYpEsJAFbp8fhtZXjiwA6ZW7BkQoQMq2nzPcgEV4Fm8KNYEr2b24s9gBBDlH/Q+DhX0X0lV9BVE467tP6/bc1Cq+7E69iqm8wh2qho/KLXOsEj4vHk6UbLB2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoZ3LInV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoZ3LInV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B157DC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771910693;
	bh=RNAAM04BXqBvMa0AoETftd1KU07iNnq5rSif/ZcqvfA=;
	h=To:Subject:From:Date:From;
	b=qoZ3LInVKMiSqYIFwRKx3NTcBmgyeRZqoTe3grSDBsivrDDEPfmKzEB8me9VO+TFN
	 NJ9tSKR5Psp4Q9swm6WphSApGvN0VOBqERcoOa4cT+nHXdtXTjo+YDx8EMOfiFoW0y
	 izwD/0FvYbfwAxzp8p9DgibRl/MDFf+6UzRk65s+8pQQvHrRtE08Vgoo22TkUOItFY
	 ddXIIbr5wqRAW64FnbWplQpX4OHkBixqAR3OsjAaDq9KpOfLVuTqn+avHEzGmraAap
	 juBYcOqcjZP5sxi6rrHnuRi4wK7lhxsR+IMI6qlA4XcqNme2Bin8LrUReDvvZlzo8Z
	 wmC/ryD0uE0tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFE4EFB7FC
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191069359.4879.16157067952585685709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3f4e4962b6766930ae1d5eb33c9d5189e9d2c855a8c2b097de6d094aaae49c
Date: Tue, 24 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771910693
