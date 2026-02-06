Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7B72BEC2E
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770359634; cv=none; b=NwEKRIB07hfbFF1rPj/alsDtA8wKkf5wwVD+zjnzhiLtWFjlcRQ0CKq9GlLdh7nSpRcl1I4h3xBkz9jcHc4iW/ZJny7jzx/J4dX/HgZuvZsl07MsEuFouV4W1E2/t2YcglZMtHElfSMrQgFP6SJ837Bk3SxzzDMH9xwgzl/ZW/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770359634; c=relaxed/simple;
	bh=Y8ud4OVraWn8Dh78nAu9/PcuurFITDytydSAizu/cb0=;
	h=To:Subject:From:Message-Id:Date; b=XROScMDs1kGZLji+42TMW86U11GrZ4FQsE7bG8X0Ilix4b3F7sIA4PITBm94rFu9/rYPlK+lvAup73F/znfbCsvuMJQRlDH4C2CVUT6+DfXHnQzjCOLFclFuLjsuEfrWhDHfxUaCRDQ+ZrC39Rj3gobVKVdihEWS2Laq00WjN0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HX3pn4jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HX3pn4jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1071C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770359633;
	bh=Y8ud4OVraWn8Dh78nAu9/PcuurFITDytydSAizu/cb0=;
	h=To:Subject:From:Date:From;
	b=HX3pn4jxwudF4o3ClONoTW2trbQOm3EK/oarc0N487r+eNHZNO5K0ale+RM9DKCnz
	 m4kSky2R7kSfkUFzBAZgagcHgFSs8+pnb1f6wh4dqtQB0bgJNV/8zfjXn1mG/FZl/G
	 Z+xIIRh8jy/k+CKvi3li7TETua431AqjqMPPz239L5hGBaanLsbQqia2TDYUMTs09B
	 dyiujeA8aLH5jGqy1OmMbVFoFei2FZOhuYa8yEIVfIFvhqShHJkPoLZLUhxk/rpYOC
	 q8fwVpMf5/BOYWExQAj4U3IJD2lA+dJVGVe0W0vmQR58quziA/4rgr4IfjUIgIMaAi
	 4RilaST76ifXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F83EB28CB
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035963358.9155.1167325519541698409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c65ab667df4207c214e92bc3fded1843c74a98fb5159fe8b8720b68a7a0df3
Date: Fri, 06 Feb 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770359633
