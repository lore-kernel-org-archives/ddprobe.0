Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AB11E480
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712073497; cv=none; b=p3o7pQe+35dZgwTjmhThzQJ/B+3DbLD5tCBA2+MS/XWT9koY3xf/8crS0AtspcBY/mxKkJ+nigP9+ptrR3KABLCdjRtTFKiUa1erXehX8UuLcUYpS6dG2C/TCc4x7mlMRU9HkBiETf93Fd163AtsGG1zAD9CuwJ7YO3yZjmHUYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712073497; c=relaxed/simple;
	bh=/4cfKXJWtJLRWzlc4ZzfpLAkmEld1Ulz7DaqKDmEgvA=;
	h=To:Subject:From:Message-Id:Date; b=Ep9RSJurBWHnuQWslNLJE0ZaSS5KScCV/Z/xnzia48C/dGzmCFZws/NBWxre8MwZ/MdjH1Zd+b+iJOP2SP2kxn/G1zAtV4MWvzbUUmnyLsSdAR/If9Kn3Odr2Z2buHagoRfNW/kDlMVMMH09nC0umq3hY6hKuR6zPyOR55fLwds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqNjCes2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqNjCes2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBB5C433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712073496;
	bh=/4cfKXJWtJLRWzlc4ZzfpLAkmEld1Ulz7DaqKDmEgvA=;
	h=To:Subject:From:Date:From;
	b=iqNjCes2JI+tEJKbRUJ3FtLKGszeWIYuYNj07lfrm0gpFzbvm4oLF4Nio41IkkwP1
	 /Jh1hV2LT7lBEJBq/kz7hSADxVyGMEwn1EZIuyWjRynA9xwsqD11amM39aIq7t6PEQ
	 GOwy3Z8lQ8PugIXRVokBlJr8MlXRK5MBroWJYTr5DbZpPxz53figbVeskGfZMUmv0w
	 S/EYK5KpG1rxhbg3N56R1XMy50/l2QqyWGnB3bUSeIczL8xR1w/xSDzxt4+yjok4n9
	 tJjpWq0KmvcKDTzDvb/bD+pYR2y/wc0PaVfYNRXpRbBp6W2KTW8pbRBnQdSE3rbYFm
	 rPSQIreCtX9ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7E7CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171207349638.26620.6415485647484472883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 394d98548f56e9f66fdbbf8817edf5f0c84cc4138e982665d63b3037a0974c05
Date: Tue, 02 Apr 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712073496
