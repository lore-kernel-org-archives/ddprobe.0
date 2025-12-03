Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFD4BA3F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764720774; cv=none; b=S9EbUISmRQCksOzAtoH5d2fu/10J9kgws0/Rz5vglBo1GMF+eBYh3UCZSXEBEI+ZeHk3qAWM63vfnSevtSf8udgEc6t7I+NIg4VIuFaYsljV9AzmVpPTDHEcgAPo9Y/qYcfsk2xj77vxU83cWak7LGkLNwCvIo3i0uPHILZ9E7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764720774; c=relaxed/simple;
	bh=PAmL9S1+IKSKB0sVcu+sI7QOQcaf052Bgw9qkxV+EoE=;
	h=To:Subject:From:Message-Id:Date; b=te+KOBkCGboT81md5sSI1ll2U8K/yg1mGf0G2mUFjiNsL3sQ6hxK8Mu7AHuqFslOQIbXqCZ6UqzXCJasAre/6gTSZidbfwTdASgtO4daEQ0psYaj0NYnUqmSBwhvR11I/QEeIPDroSk6wfboSPZdrPylCIpKaGdQDBk4R0ZYM44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Va22qzKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Va22qzKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9337C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764720773;
	bh=PAmL9S1+IKSKB0sVcu+sI7QOQcaf052Bgw9qkxV+EoE=;
	h=To:Subject:From:Date:From;
	b=Va22qzKs1yk6eXSjtB8eDT14Qlf+8lzBhKIxEW4oKcSMfoLHkPmJAOkJYkh1w2Vvt
	 ud6ljvxW1da9Y6Ol3Nr3yrZhR4KLcGcYU/1KBGLttkeoI2mvEmqV2sR5P1dEuE9HVh
	 O0iImLQ4DKB00TUqOiBtxft5GTkahGm6er8KdIcs0w3AB8J196WkETkIRK0T7KGQjZ
	 fExKIVA5SV9eTgoSlTAQe+cxoyWCMJPWqPYuIoyEE+jk9rOCstuBUDzBqeqSjV8yjO
	 9Fq0lpBhbjBCQIde2TJ48IqVsvbPyp60Uy3nKuLgXO0yUaeXgNepDa/ajwUDUpH07+
	 P4SFYieUX+ONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B16D1268A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472077358.28264.10575375503892643963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521f3ffcabc7d4147c81a77c6052d9c31a89336f62505f3022ccd47b2a5cafd7
Date: Wed, 03 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764720773
