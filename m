Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A2F399359
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775561734; cv=none; b=obfAUaojxuKJXqRw2u2KtpwSMeLtkG4eyE4Zbool1WPUh+mh1MWpaGCKOiYJAL5AfWu9VT7fHDr+eWapCXJrdfyrR4HWROUiHA07h/93oXG7L6/uzGY5qBUPozIvCh5mcaPGNkfq/4EoVP+EmUWs4XH7Pp2oM4Wt62CWZ5PlQ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775561734; c=relaxed/simple;
	bh=yq3QhSM3yi2i+huaWk86YXEBqGRZckpBaO21UTlT4YA=;
	h=To:Subject:From:Message-Id:Date; b=kKtO3Dz70W1cttPmTthm4BN7IdzhJecUExukc1ZS/hjIcTkswrS+tNmeKTiEuXklI0IAIRHqWcdDyjsXKb4W36H4oOvhnCi1Q/N77inechKVym+ja3tZD3d8RCzPv/2QiCknWl5hwkOZSWqZS8TAizycXL2mWj+H5QMjHxCaw7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dcp1t5bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dcp1t5bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BB2C19421
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775561733;
	bh=yq3QhSM3yi2i+huaWk86YXEBqGRZckpBaO21UTlT4YA=;
	h=To:Subject:From:Date:From;
	b=Dcp1t5bmLRAVsz9OPavEMBnBCI1ctYsOxiRgGkFFYd3EHGRckI4vTf3rFNid0oEIG
	 Dh2KN7FfHucCHxCWiYrdbphENIxE9qVYHN7ahLkv0WkEKg57m+koCXAbwi/qxpUMB1
	 hBSBN+IzIgvaEuGD4WDFkPwMwW++pR+ax5lWmXSVUoPPEOx06SHr7t43PddlhB7gXu
	 /inJLTIVL3LvJ2ujRU96LdMsKAJ8u7RbTBb8vBXK/11a3TXZfwj4YULUzZSCde2a6p
	 DFINufrLaVZc3ptozqe5DlR41KKtB2bRfV+gAl/ODCs7YgIPSATGiS/YPw9S0pI9fH
	 JzGOSUNE6JFDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC69FEEF24
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556173369.14018.5551170761954795736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc19c441b932409d362325087f3431d5fe481fde77509c78cdc40ea8cc58ca5c
Date: Tue, 07 Apr 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775561733
