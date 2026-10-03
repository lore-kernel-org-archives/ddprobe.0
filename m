Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EC8339377
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791046234; cv=none; b=aQGsmD895JHM1Dr6hv/sB0ndlylr9EHpiqmocfa21ItW9yiLoI+KcivBgCjto1GTWcZZvlYX1gRMn1SXpCxxQrsrr7+XwnSJZ/vHPyi++wXAaVzcjPOWt/CPBweBJLtxa7ungpNyD41DbsiAhXK+kTOcXrSf+SWNcdFGaj/xRjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791046234; c=relaxed/simple;
	bh=MjQR6UIW3n8Vphf72S2uc5TIRUozSrqlYjWF/bKM2Mk=;
	h=To:Subject:From:Message-Id:Date; b=fVtxFPt/Rv1KS8ZVx5aLOwDTlWv/kFla90S/BGvJ10BmtVf6IL0bTLoogoGzkp4ll/FsYLiT1A+J/85KvL8JQ8pQYDLi5t4yuNd27gtLATOsRORshhvsRw349oDQOfrDfjvF4I1H4nG89cF76ahte7SCK7tBBTGfCmDan3Aywpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9cRTXAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9cRTXAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCCEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791046233;
	bh=MjQR6UIW3n8Vphf72S2uc5TIRUozSrqlYjWF/bKM2Mk=;
	h=To:Subject:From:Date:From;
	b=j9cRTXAS2/A7DjpC4Kazj9yJpE1DF7yAdBMMrGvaVYCZEZBuDYX7Pal+P6DhIEUxX
	 wS6Kq+4C87Xwak1w6LvSMkl7Alba8MJUDjWKz5I5UcEajLt/9oqrBwyD7WQefQT9VT
	 QlQIs/1kxMs+344agu93lpO+PzFDZMhx4/Dw4iMs6Y0VzbjJzujIgi0By/SwIjPbGb
	 1pnPOfqxzaPRfXkmfKgpzRO/yD2A4zerh+Ss3mF+fu8Fzob+AjqbLhueifxI2y4Hxg
	 BRW15b37Tll3yCerZUgrZLEifsnWqrf8WzKbwb3LsPCnSogc8e31DwW9pPSaMmyDu5
	 D6UfLXFT4+/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71F1CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104623372.4877.17327908802849043151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c66681d4f96a69cfcce823292aa1a60eae6659dd7abcd98a5ecf065373ea9d
Date: Sat, 03 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791046233
