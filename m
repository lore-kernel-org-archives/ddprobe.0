Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5DA3B95F2
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778703633; cv=none; b=KDEDG4jNlLN3PlLvsmwsj6dHDu3MsjHrgNVqa8s8Ck8CUXjYTxIldwLlfhVFT7nU8CxyLsizNcUdIjzzzQK0yutPaaFaC9iZcdR/UX8oKZjavUCCmF28bZE/weXUswbZPro90cr1OmfLjoWkBi+06qmAOb4ft1jAIRw64JgHXHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778703633; c=relaxed/simple;
	bh=gpeORD0RADFmO+RqZl6MuF7IS/nLKj6L7MPiMM6pOf8=;
	h=To:Subject:From:Message-Id:Date; b=QF54PYRb9y5xvWh5vJaPTjTdtgDRbhgtnxMijBjjkpqijvMU3izxqi/3bU7E1Llepb+FX29MhXeih/y2AemjaV4PQm77kwytFvbFYG17n9VR2X/iEukeasI5lJK5B+ruYyzsrgd597vwTOyXSXw31zTTLDZbFbLz21Dm2WUujFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQWF4seC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQWF4seC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF325C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778703633;
	bh=gpeORD0RADFmO+RqZl6MuF7IS/nLKj6L7MPiMM6pOf8=;
	h=To:Subject:From:Date:From;
	b=gQWF4seCv3p85HSgOF1QhuEqa81GMoVcW0jolcBfN52c4xyBg3ltn9Wemyia4JflW
	 4Cim9fDDeJArIPIgTdtTLCl1OZaGO3gFOfbD+6D0OiA3gtd0xZE2rfCjI9DN8V7osp
	 T2NOJmFaw/scCtha8I8vXg7T813rrelGi9rmc0u2xVSxFm1naw3Gy8xLpSmgaNKqVB
	 44UsQLre6t7SDRDZ6rlHxCiaMaBrr+zn/6VnILFuNUSyBCt1OhWL3CwqHgWLXmBir6
	 5vr+jpEcmVZd+rbxdSBnO2M35ukQhBsDVaIqQJNaS3lRnvxtV667D6mDNjmytqqsrh
	 65Csebuq0qNmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFC8CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870363370.20010.13207483746888865726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dba49184d872164c44b41182dbee7e53b85b121efc45d4e75aba19d5b498471
Date: Wed, 13 May 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778703633
