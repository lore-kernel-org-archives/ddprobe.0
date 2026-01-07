Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F171A256E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767830034; cv=none; b=P8Rn59PHuW+ABvxDR6I5NkWUdfTEbs19jxFUTm67bc07MLYnRMMAmiFUUjj2UM6Jwy4BUuTTzdmk5fPDOoisv6ooBKrgbTtOwC49Bwp2AxWJW4VQO7vBFcI3DA7+Km3F8seqasUCffKKsBTfNe609i6L1jEPcvAwg7QUwZ/Ctps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767830034; c=relaxed/simple;
	bh=UjlfY3NtLI1f8d4JjHh/SDfuiplsIaoTHt3GaKDtg7o=;
	h=To:Subject:From:Message-Id:Date; b=FBShs4NpniYBm3PMGM/1sOtByyT8SmUys1QDR+u9LK2gfRsCpwFjumuW2Qhm6KaLNxtz35xMIkpt4V+OXGIiXWpzk5FEYM3jQpIx/H+PVvTU+OtEu72CquVRp/lNZVG/ck/jmFSOw1042OJOlSmiSBa8C3IzaEu7cKTh0lyHJnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtIhAD+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtIhAD+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA75C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767830033;
	bh=UjlfY3NtLI1f8d4JjHh/SDfuiplsIaoTHt3GaKDtg7o=;
	h=To:Subject:From:Date:From;
	b=JtIhAD+YJibRSXP9a107zf0w+khlEJSJuTZKj8ITNV8h5Zff+7f0W1AMBGkidVKNk
	 m/UI+SEGgVhTQQpLPcAuCx8DIXAnUqHtcddGnG0ipUF0oY7Gf/ughQxHZqHOgdfQ3C
	 iNaqZqlKYGB7w+KWnc+P6b0k9q4UuFyTIDh7qCs4crTQypWDY6pHR1o9s5n6qaJg2p
	 YayGRIW3vuVC1DNvQoDBEMV6nWXQYxwpyP0+S7qTsCrUs+e8M5Jvr2off1uyCcwU81
	 gGGIRDEQoqAjRU5ZpSCSmPHduS3VBSOKeMvuiiGu3mfhpJBK02yGSewAWoukNvSbhD
	 ysOxS3drKwWRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11ED0D146
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783003357.6792.2653277540100663027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f314f2c5713d64d0c6baa086ea4f19a84f399f9b995b860d92e1444782d57f23
Date: Wed, 07 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767830033
