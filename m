Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C6A30E83F
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750423194; cv=none; b=hZ1+ghb/D4DdTCx7fiNaqYFz2X7Aw0t0AQeDW5zCtQz/jvsSaNkHg7DJngjBgi4vkcJmO/GLDAfS9koy6gdUNqbnqpiRVODZFc+j27Z0pm17v2Qu+r3SN4zinm9dVP83RgTj05UUPngaDdLhQRcWrWzTyyArx1mUVes2hDEWpl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750423194; c=relaxed/simple;
	bh=LNMEPAukuycuUqrWfk4HPotq2OEH/z4x4YZya9IPDlQ=;
	h=To:Subject:From:Message-Id:Date; b=GdO/B+wplhI5/NI8ES3ij5PCqqV9MRa4jfWdd6hhnNUmL8qXN5MfIro9hdSn80OQHsW0zD+O+/b1Cg7IiRD50niRSKSUMfFnrWo+VFrYxtPKyOlF2HbxBDvtg7mZmu/ahg6cuC87MbX2YKf4S8P+HasEam5XidEgkR3UUbgJciE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sD8pgrHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sD8pgrHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2531C4CEEE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750423193;
	bh=LNMEPAukuycuUqrWfk4HPotq2OEH/z4x4YZya9IPDlQ=;
	h=To:Subject:From:Date:From;
	b=sD8pgrHW668Rw8h1xxvhux4mGkZfTVz1805vXNisdaoHGuKZv7s+en6w990wZVEfK
	 WF3GK5BEq6PDss4QOpIGIGeQiXndTx5qkWsXwyR7/jcPbqPaAN9Tk24q7W8enTG3iJ
	 tWyvZVsgS1/8owGlGv0xVP1lgCsPzAjMEGhQNCkZUMmCJvqeqrOVNSih4yYzo5P7VL
	 QcL8b+biGAtnGkQ9pTGbShqjaXbG25RtEGvsl+naPQWH/1WGRsLHfdj1DKq4JS4HTx
	 xRVGMjwFEtDbVYFKJubVdp1BztsvjmbM8pNlhjJhKVcqBd1IdIbBYFY4hnrdaNPBQ/
	 DIsO9fZ3eVXug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F43CC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042319357.28020.4575795793281790823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5aa6e992efc032754c56c823121c371f3a5a9be29b407f7cdb0b4147fc365c4
Date: Fri, 20 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750423193
