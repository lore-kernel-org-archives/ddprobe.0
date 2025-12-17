Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E142BE64C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766007234; cv=none; b=q8eP0eFmOOCIJoibcb16Prfqm8AlhiT54jZgs49lfho7zVM7tG64gqweBEAONP0uNDZoU9xi35la6Z/MpoudtLMkCyIwqMaYC3BqwFS2DEQxVAkZM5Xc0QSeq7SZcfyQTtqkOlFPFY2TRTNH7Hjw5dYrdKEey5POoKc2SDppM7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766007234; c=relaxed/simple;
	bh=yMViXhRLfzbh7xJQ8jASdHPTRLQIcl8oF7RtzqfZOUE=;
	h=To:Subject:From:Message-Id:Date; b=QbMpBgsqg6PXw4h6WJjRvyeNSGDdRIMYUaev8efMIU2A9nlXqvzoWcl4CqqQRwodfmjaJ+4olTx6RDcUTbV8rO3PbI1Usx03VZQ17dS8dWDLz97rAvS9y9/1wD60trOndviFbB4kzNw88BENJldwhMF0zuKvIJtwlEB5jwq084k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEL/Z1zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEL/Z1zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FEDC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766007233;
	bh=yMViXhRLfzbh7xJQ8jASdHPTRLQIcl8oF7RtzqfZOUE=;
	h=To:Subject:From:Date:From;
	b=KEL/Z1zysIpJJJEy2/Jfnukv3yaNnbAbytXmpHPXSXoElcuW2VDGAekUj5dkJdS6/
	 alNB5pgGApwdFphW4B5qghg6evPIk6lov0zNtgdrBOBo5PYNwNC2h6H+vdE71O/RHM
	 3Xu7HCdzFmWoMBAQK/sgn/nMgdMpF4YrZqkEhUUZYw0RIdvTr+hGHBkb/hDYq8uZas
	 TV6voAh+ZSGG4SqVnAnEt4een6VJfBy0a8XRdNOTvWGBjKVA2UoArSwa1ACRpv4Lhj
	 udI06taS5sKscZNXmdfWNtp40xpWKFJwbuBNqzmW4jUu5Xw6Ozl8HLnlmM/JtlDwhM
	 T3hXZYMKKtcNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93480D66BB2
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600723359.26162.6832259636236062670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6bee8bbf76c3e32cc67d4db094f5a29661d2e956268451c3797319d980174f9
Date: Wed, 17 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766007233
