Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309A83806B5
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776059854; cv=none; b=XNSbj1Ym4LaPQh2DPa9ITj+yiFbKYsAmO+JzyJXzYc66xen/de3Wr8M0kYScIZ4skneEdPNC+0V85RXds58oDFt4YBSxo3m65819dScAw5JnLyNopXN6DG0Wb4/vQtgWnqt7KxFYQdAs7aHbMxt0hZAwDyPG+rjFoSvB+3/+YTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776059854; c=relaxed/simple;
	bh=SpJAUyKwkHpWS53TDrFFK0KAeNtVyaNXeOLz0yFQPGY=;
	h=To:Subject:From:Message-Id:Date; b=KYxOJqieuzSynZmuhSc4pZ1r9HSxjoF8MHOmPu1gRIXMgdJ8TVL/JhW9hzXiIo2rx0Phl23Zq1QfVJKbCE+y0G8/GR4AWcrV6I22ExRKnWgK18v5wYVqTsevtpSVCoJZg/F/qMwiayiSskg1pnHCOXVYm3E55Ejc3BMeRe8SSHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMT0NloP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMT0NloP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBDFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776059853;
	bh=SpJAUyKwkHpWS53TDrFFK0KAeNtVyaNXeOLz0yFQPGY=;
	h=To:Subject:From:Date:From;
	b=hMT0NloPgnuo9bTY3up3sTk5Iw00sR0BGWmIBnEGaHKQt/INGOmG/4N0ale15Jdc9
	 2PYyhGHHqcGnXK7ZdsY5mcV10EGUAgUgjiTrgUlhsCu8EZNpXSlgwYvrHZSrcWtfzA
	 AFz2yYBzUq6xjjcnWVB1sp9/x7oLCz5+r9FGm91XMgPKJmTDk6M7siX/vYcnBVV+Zi
	 3z9H5adxCmnvjtdaVRHb7z/u1pffCUOwyRtfG6iG06l0MpVsc2MPkBQ0hQC+OUYxqS
	 RlKROAAAJgxGxATitxX/gXrEbd/ObOoMkvCJ/dcTFCjO+oCRqu3xu97ykFqaTRWkKV
	 0w1WXPzsS89qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0076E9381F
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605985368.29536.7736810216212361684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a3fe68b93ef9ce138972b25eec5c0501e8e1021d66542571f3411c5b928267
Date: Mon, 13 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776059853
