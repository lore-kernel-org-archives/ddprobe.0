Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109FB3C2F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771802094; cv=none; b=PXyRPUUlVCRKxKraGosjBa7jLpr3hpFIA95eHh60LgChoaNfgWS6lckk/0f/fOyNL0XKtMiW8U8PTi+2ONei2yGrCNNCFNXPXgoYjAY0s6ZQYtHhk8F48qBA33tQnOmRu7CdvBvVaP8KGVNve1HApvBK/OYF5+ZO1RV+bPwZN9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771802094; c=relaxed/simple;
	bh=Ev4SQkvFKKYn5ibk/LK++LadPmpCZ/DJLYP9Zx8r9oo=;
	h=To:Subject:From:Message-Id:Date; b=rWQ38SD2OfgmMzYyW4dp8C3wCmF/ZJXGb1jxKmD9j65xHKh+FJ2WCt6C5zOxFNBxPAtJyLCOPj1/SXz1D2RAy/jTenrtDT+sJB3ClM9dC1fwpfTf3S2XkB35zOND1FjsYvp4In76qsOe/sK4Dsrcrlp/5sHuaSbwNNmk4OKM1Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfRyNwTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfRyNwTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0A5C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771802093;
	bh=Ev4SQkvFKKYn5ibk/LK++LadPmpCZ/DJLYP9Zx8r9oo=;
	h=To:Subject:From:Date:From;
	b=NfRyNwTPR2gpZMQM2TjK6FZtvtDW04DfFNc6y9VtcAAdrh6xiQ/KJSOVXhZeC3Ret
	 ERcBsE12vrFdvN8rd9TLOEVf+kBvdYwn/0bqQ09NYNBA4KurS6eBqthzc3zpDq2p6q
	 gAFL90m3Z1x9J4Mcq8JJ8PIhdAR46Q4HW8092++Ujl4neSZxYSrxfQHvT6yIu/yafe
	 mCUn/UZVVKIUS/BIdUDHImu3RQBNwfCHgQIP75bAEaoW0jwcusI3DZsUbaIr9av8p2
	 Tz+NJBgbT3anyLlyTSYtZneEZT8zgvztCXemCxz322HlHjhRoIolcS/Xy2GDpF4m5X
	 aLMVpN7Ok5Psg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A269E68179
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180209359.2819.17726903172937499810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2918e6b0b201559b0dba33a83f8408a518874edd31882ed54020bad7eb4a5cf
Date: Sun, 22 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771802093
