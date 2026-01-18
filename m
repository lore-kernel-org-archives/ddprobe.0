Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1151D6FC3
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768727034; cv=none; b=uAthuDzouo1WPCfIaoi54xgQ488khM0n2idS0oXW9OAdyldSiF9yTy7bfGuiA+1AuCtiBNKfc7R3/68tNyHtud35XnuoItwaHTbuwnznmTSa2jxpznr9/mwmaOaXuH3hamR5iHD3GnLdwCsBguBblUZP/b54e31f3yaIYBhBTQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768727034; c=relaxed/simple;
	bh=sugIAfMGAHUA0pErbl+ITjclIYq6KwV2utcaTowdKSw=;
	h=To:Subject:From:Message-Id:Date; b=QzowmqW1SUQEHZ1I6SLFgmV2oErRsqijUtVDc3GZQOOfwIq5XK3d97TlkKJ0pccj8ABAAbvB7FtOTMoKfJjWIOAuib3h0V50wJyqlWnHBExfAjLbflgZX3Kazlh5GzjqPTKYR9qc+kmitz1VzN9gadT6HEiLc9ySIXLptQ/VqDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJfkgoor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJfkgoor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE13CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768727033;
	bh=sugIAfMGAHUA0pErbl+ITjclIYq6KwV2utcaTowdKSw=;
	h=To:Subject:From:Date:From;
	b=RJfkgoor7dBr3v4WMytRb/iRIhvrYhCw3VfSmVVEgW80KNR37iyzkSnA3yXE5ykhE
	 w5racdr/SugR9to/QxXw/TAWmmQBKe24+nu0I5Ogb/d8PKNvMZIMrWwR35MLvOQ2w/
	 LvdxckbhZF5Oisu+ooSEoQzQVYH6M/CfDx5TBLZXitmxLRz9PM3IBAy9FwarvighLU
	 bvMbxMyRDwlZB96j8ZcV7oOh2AwiGe3uP4EdpCsMqxUt2d1rVfsHzzhxfQ0aFduWfX
	 2nWr/qimWQcIZu7qKtTG05860uT8/+l6c6WVZY3ZT15zhvXD4HEfYkffXJAt6SA4nP
	 F9tnTT9KcVIOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97776C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872703359.19543.13697154051628604815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa40b9c99f840cf6afbd03a1beed74dcef4f726d3909283d506845233cdfdb0
Date: Sun, 18 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768727033
