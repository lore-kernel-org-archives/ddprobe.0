Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF07191
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778940634; cv=none; b=JoOgcRkfjm+lY0qQiSwc3f13NvVAB6gZxCmyKapiWqa6NFrUJWyGY11kiO2HKeMnX/NbDQXj63lDVAyquDph8mTJMGQeriraXPkI+i9Lh9AWMKVBmuzug8YBzL1vWkcI84yTrH3pMGc85pPugfrYn0siHYwD6UTkSH4SI7vOKSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778940634; c=relaxed/simple;
	bh=sBxpIBz7Ed2Bbqbb05A3bwq8Km12eMmawK5053fKsGY=;
	h=To:Subject:From:Message-Id:Date; b=bv5id7A5LqDz5aczPsq8jErJ9us5e1hEeQqy+ITtLjEUEyyBv4U4pzaxWmdxKXtKk4sfY1Xnp6Q/yAyAFKXkiTdV8Yn1rsgW10oRxmst6atUW9nQRTzvfmoRbxQ26ugytovF6ekiRslutgFFeIg1z81qFKUTaDAbzFTubri981k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvoHauFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvoHauFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19EDC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778940633;
	bh=sBxpIBz7Ed2Bbqbb05A3bwq8Km12eMmawK5053fKsGY=;
	h=To:Subject:From:Date:From;
	b=IvoHauFo2RQkCMmGneNGGCO4u826howiBZM5oMWsht7uZ9dgPCo1JL9+Q0CQ+euCL
	 e+zmYOEmkpET1TxkZDF7l2rfGvgi1MfsyKYuDTZ6WyF+QYChwXzvhy0nHbenlmKPdw
	 Z5sWFQoapCtibfsseMvjcs2dpmMica5GHIw8LlszKJLpmMe9Cmds19a98pRlejHt1m
	 finzSH//LBjQTeStEJgmU8YxDC0nsVPFjRIeh9gyn5YZ9e3Nw3XC++8EUTXrY75wCy
	 5Rm65pkFWaj9jjvqEmQhgH1pISalHd/ngNvx3tT+qQoHL3zI8zEva396RqeBjfmfH6
	 E+PpcgvHOcg1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB71FCD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894063369.16975.9472919920823351917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4cdfd42c854049089632db0cb5b2c8bf2f90bd006f061f4e7915198979505c
Date: Sat, 16 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778940633
