Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156FE130AFF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719232343; cv=none; b=nwm8OnUUTPOwQTKqaU38GzzHoBoQtjmOEj6R5TR+t9QbifjV+Kl4NZ/AnsnQsjBoMZXxSwopK5bOFcA7gKpEzgF2AiK0tggcKxPDuHvcuk4S+txnPAdawHvcSuNzsjDN0a7Tv9lt7IY8FckGb9ea6gyonrfhaV1S+PU/e7ITOo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719232343; c=relaxed/simple;
	bh=xIF3EEQFFvrU+ZepIG/DfD/lk1MkTfUL8kvBIiiesTs=;
	h=To:Subject:From:Message-Id:Date; b=fQSljhBVWtlznrPHIOVkj2MQpNd/mIE3ZGkLSYa6/kU3j7o8a2za+PzYbvRNwGNYEDpODWkF/XO2ARxiNmt9cVF6ySDSZok1NTQ76WnKRdpzWsZzZRaQ/gpwZA5pt3S5FHrcsdsv+aWlveqaupe1GDrpDOqYZfiQC3lbauuWPls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSPfKP85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSPfKP85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0609C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719232342;
	bh=xIF3EEQFFvrU+ZepIG/DfD/lk1MkTfUL8kvBIiiesTs=;
	h=To:Subject:From:Date:From;
	b=DSPfKP85s72RcalJQsTD8ycpnUKaXU3/KpepwbN0ysXw2UHuixyenGg2Is+1w8cAr
	 K9xfw8sY2UmkeXxSGREx6aaoPfrgrdCKcyh6xTEzs+1duVXcJwNWjHOdd9G/KAVtMt
	 c3JfTjogvYWpCobRqIZ6XxmUmzb19v/TVtMJt96gq0dAB0TiPTDH5wzHFD9DmHwwh7
	 iNwqJwmZ6sJU++aDJ8rTFMMV0PLDe4IFPdzQBoO9KUk94Wcyp2Fgo7J3eIQxSJB5sU
	 /8TmR/ra/2aNVsHa6vNIqdZnZuoSyJ9s0Lu+TXySsNxtFNqq82u8s8umhvpt8ZF82o
	 wN5oX7la/SB5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA69CC3064D
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923234281.6252.17919771632110243379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12df800f5b1063d608afe45f4df96f2b31adae098fe838f1170a39a046a6dc2f
Date: Mon, 24 Jun 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719232342
