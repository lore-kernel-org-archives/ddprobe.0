Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206F1279907
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766604234; cv=none; b=H67SnSsw10qF/GB6GzWSU6qPvKPTrd4FZi09JhHpOFCC/YGfCt4HuW3YHZ/hXaAEYCC1vkcR+AaNeMZKZU/lu1z+hlPAVlLdF7j4DwYRxRosVuMOVI8EEjEF66A+2RKPHJphYZ4aHzMooAHROF7MjuFhiVwDRVv9YYprdTiN9cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766604234; c=relaxed/simple;
	bh=adNZ7TZLlMyQC6PqWPp6Vo+EiK1mpHyh4G3vaUZ1PnM=;
	h=To:Subject:From:Message-Id:Date; b=EayDCshZbMIgCp+SnKjtuFgrCLiht91RyvaNioNZl40JaXAXObU36rMlqbG871cBWBDvou+qlGlOz0tvmXfx6sOTlA64cDvF5yCc1r/yGKstnho2ec9e4kOgT63SvW5m2lFpNzpnPokrolCUG5FeHic2RFaUbCaZYSWOptLYWmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cl/xPfnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cl/xPfnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A93C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766604233;
	bh=adNZ7TZLlMyQC6PqWPp6Vo+EiK1mpHyh4G3vaUZ1PnM=;
	h=To:Subject:From:Date:From;
	b=Cl/xPfnXqBXglj0BYcl3OMrm8ffemk1H9SB/Y4hfYU/PuZAaPA3WKK7/r8D6ftG42
	 E1dFZ0K3sLNW2vmdyKIlaCPCLBNiUrcRaI1MiSluDaNXT/1jfC8LjU2yEdqYOt10Gr
	 EDP3Tfe6bcGXSs28vroyLRdxL5DalAIV3jgfs04Sakw4APbmyNR6Ae5/NtEH35AsK7
	 8nM5vtRNLk33T/KfIoAasSd3xhhBZ/ZShqBi2pPLIWOGbjwhyTxUESCUFAFER4XPVU
	 uunMV7MZ5OF00QZEBhqgi4Pkem4ADpyfuPB3eln8qB3Q8DF5zKnkgRFQqieHh7yssg
	 Ah6HBL2czembQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F112E776FD
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660423357.11465.18070564869600374390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b2cb2ce0e6af087501e68e28c2ecdd7808ef995cc682ece603ee2cb4955bbc
Date: Wed, 24 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766604233
