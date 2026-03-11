Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0741E2BEFF5
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773204894; cv=none; b=hOAvvkkc/UIWPv+SgeGU7GnETuY9r556UTEoNVWvwMM23wscCZEv+1KhJH7h/eum+5MtKAyhAPw17ZzLsnPCAKtn3wKL2HWebTzw/9tvCZV7uT2w79daZq7phDT5ppIETWeFsxdHyRht3x6G22r3MpcTPzj6GShbELnxzxKWRFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773204894; c=relaxed/simple;
	bh=Y+Aa1sI1gx26HusHFaVjRUTLYfUhsswQpWmAT9p285w=;
	h=To:Subject:From:Message-Id:Date; b=Kf+Dd7YHZ5y+5nkEX0mYNUUBNkG72FbXBvXualgX/3TafmrjTtkOlgdwOWmL13ihfWIksBL7YmNUyezD9cdpT0WaLuIZfl/n8nDSjx915Z32oLI5AA9MGNZo9XfdM7QTVC4ErDGiCtcrk1Mr2MzBx2miJbYSAyRcSvZrdUBje8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7zJ5yIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7zJ5yIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4135C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773204893;
	bh=Y+Aa1sI1gx26HusHFaVjRUTLYfUhsswQpWmAT9p285w=;
	h=To:Subject:From:Date:From;
	b=B7zJ5yIG6E937MO8O6hflI1YV6qnY0g3duWTu+47n/a4Q43pq4gMz/6A9DKUC+JtB
	 soaqubMg0AcqjR+Yq2CccSIW9LfxH9gq07vFqRmdtJWaUUw55yqSvsCqqivOnE9Roa
	 6Ykak99OBBzYSYqG3As4jw0fIo/o5tp63mLI37XICTQS7EDS3dTsgsunFoAJGpzFsc
	 LHJBUj8xTR+JyyNp5MzdDwGdIdKjp5+uR/CDdIM4B838c0k7KW4QRZMcOI3C9t8w+z
	 WWfqcHXZ4xeXZhob7g5dpV3WFk2KlOId2xB/MDWkbLJWa0vngyeP0MXk8B3fNqd/PJ
	 MNjguVJLaZYxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92876FD88F9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320489359.19018.11917851627660892881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02837e0c14aaaf383f56e1af9ae55472a0716fa522029892096e024b1a6ec4f
Date: Wed, 11 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773204893
