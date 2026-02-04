Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB4243C04D
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770238434; cv=none; b=DLkfnWroFeYa9J2svbKxUqW4er/BtHUHUawIPJcuFN1KVaClWrQ2AgKYKXukVjpCg2lyF8o16BZj/jRXPUtDVdQX4RU/OptPI0CfkGOd0qRc/aOeu07hmCGrL/yDRMEmum7joI9boMSEkxS2ktV0GvcTtoiMkSo309Hj01y7uW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770238434; c=relaxed/simple;
	bh=FFEjLqvpA9NdHZHI1264fgWBSG7t6C1kAon4yKtBNrE=;
	h=To:Subject:From:Message-Id:Date; b=hhFcfVUPd14Oz6i+Y++yUJSyWaqTulc39CKy71s2YAZVS7UEWSrzhYg8q5jIKohoCQLM2wE6o/Bl1yrA5/NRYdpIp4PojjVz3h2BkOUtkSgYL4wiSgy0L8hfT9aPAjJEjMcn7qnL6MKG4fLRBIW/Of0BgR5VH2icxxAzXAAbElA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7FFP7xJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7FFP7xJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6568C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770238433;
	bh=FFEjLqvpA9NdHZHI1264fgWBSG7t6C1kAon4yKtBNrE=;
	h=To:Subject:From:Date:From;
	b=X7FFP7xJ8o7tNT+1CJjzK9wUagP3D3PWDzH2HxdGEGnYfgLRbkXMB/oCpeFWDDVmo
	 d1rkR9SLMlqmgttoN+emjpnptPzSfU5Wy0bIsuotlir3p4FYB50sjZlOQUJqiNgrTx
	 ShVurNs67/R68IWXIntvGMnGIXfBTj/Ds50Tn2bTewDRfVR2CXwjSXY1YfW2Od/2Nv
	 K8iVf/hBGVcPwX0KpSZnIDPwkjnSt8BHiQ3BbBHTifz5+nMKnq8SnnGRdAkWDsuWZQ
	 rGjr4jeX2JbwPOUsgwAlAfJWDo8JyAKmz61FUp7AzZTDxT4GsOpaqhT0jnI66ckdOf
	 oRzx23ggCQzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE6FEA7943
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023843364.18967.14424676392185190269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f187d28789eb5d111d1b3ae5ff35f823290b74845558e8220a98fcb62a3572ba
Date: Wed, 04 Feb 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770238433
