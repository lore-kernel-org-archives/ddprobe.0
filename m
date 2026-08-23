Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979D2364EB6
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787476234; cv=none; b=LHggGAPvqPSACTfEYZVfg95XXGYLNaxBXvB/rPPdj61aWcxJbwDKwPddztcH5JIgQiI3NNq4wbl+6tsK/38uOd87olbLxoy1QlILct1SvLDX2NGKK41c3UhDSs4UILgThvNL25P887nhnUSgXdo7V+J2LOqh3GQ5NgLx0fCBA1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787476234; c=relaxed/simple;
	bh=33Ynm7eJKq0VS/uI26quQ5EdHOhbRS7Nk2ZUCIb5mfk=;
	h=To:Subject:From:Message-Id:Date; b=OEQH/MswOdjXmwbeR5o6yuRcA1DVcA6E0LIGn/DS1np57/ZExi8sEIIYQmzPQjm36nQpO/EkvVfmUsFHcV1oThVK1EFIX9XSxXqt4GMMVxiHIqnGl61UOQ7hSJZyuGxiGiPEAAjxtOQ6Mw0wHhfLxMrCEul+M78sMYJcr/M8w3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4ftptYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4ftptYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05A9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787476233;
	bh=33Ynm7eJKq0VS/uI26quQ5EdHOhbRS7Nk2ZUCIb5mfk=;
	h=To:Subject:From:Date:From;
	b=m4ftptYC7ph/I0b+Q83StOOybZUFZRo2qnCmG+DKS7sacuZanqlabgtWqaGNgpTtg
	 ZtsIdHCcRrI3M+21J2XM6nvzr/Rc78gauqoc3syQPJctBh5avnBWODVcMTNDpKKStQ
	 s5jU1pEv8cRGWIxk03M2WDtmJK8/icIx97rhePjt7Av5rDYdykauZr0jngsuyYHJoH
	 hyvH8FVlhHSsN+GF91HLChHB5FVozh8Hvh7dY9tEV81keb+14L23sdcmHeBGYWnnVD
	 N7aSsmbZj/8k0slCbF8qfcAcAB0iGurbm+xBFDiaVwcAyQYNRn1/DQ82WKwr5jWOG5
	 4nqHt4cPbN82Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE1EC5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747623369.32667.1058980855831471203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d3d0826d756c8710fe1f7a5adb8d50d048475f313c68f76aada0138efc99d7
Date: Sun, 23 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787476233
