Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED02399CFD
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783571314; cv=none; b=JeOhw6U6UeGxEV+YN2Ax5n4IYRHVaTRn+lA8qdGfdZ2L3Qyzhvw5ctTvaceAcy5+3mKSgP5Tq2tqhA5sePZztA2j1JO+xHu+XJmQTqiDRWxsLW74pobSdCS6TKTo6EXzJGWxpDp2lDTk2kEAJ+QDEZojviz2CZmiMNYOLwdlHEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783571314; c=relaxed/simple;
	bh=xlCqSwTm9YlqE71H3cLYW/V3+pMbZfV3mD4luF0AevE=;
	h=To:Subject:From:Message-Id:Date; b=DygLMhJOVLGueNRAzSX3xxTX086zfDpYoYNFTTVulMvLn7Iyl/V0AfwZdNTZdI7/bK8orPbX+ymQSje+ODnk+5eyYz7Ib/i+AMUUSVObZ/OVXdl1DanBavClr3lkJuWiunzu72qKKOa+7Hhk6MiQNRGmMEhQvLe8gA1S/U6IlqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTmgboA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTmgboA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3B6C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783571313;
	bh=xlCqSwTm9YlqE71H3cLYW/V3+pMbZfV3mD4luF0AevE=;
	h=To:Subject:From:Date:From;
	b=mTmgboA5W3kHVCjHRWwuSaOm/37NTphJDP4e3YTvkU8ml5k07UiJUSH3Eo73eldWU
	 808KLKV/NOQVYBd665NnDx5Vs2577pzQrUTdtgZ6T/4WpeCJzhJ6y8EWH1g5wdd8KS
	 J+CM2LrckFk7nhWwsilZLljs+cs600KpzHPtQmTdHHrr2Bt891x72eNIUCt5gzu3xZ
	 j73tiOKrQlqny/rjKLeQDW7AAaGieyikPb7wFzwKI29O7QefkhfOw9snJlkmQr15jz
	 881DxRN6OP8Q+L/20gAglUYriebyJ6011bDqv7G7R2GQG8ontU/Kipzz7aK3xsJrpt
	 sRuHut1IXAymA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6ED9C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357131368.425.6830544546172873036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6d1734c5fb637afb1dcc546793475e4cb93ca62bf8b5517d848bb1d5e001d9
Date: Thu, 09 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783571313
