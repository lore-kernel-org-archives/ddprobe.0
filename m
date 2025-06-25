Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F77AD58
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750824594; cv=none; b=lgvLoFaJeToGZrJGHFTkbGY4T8jrsJXii3K8Foz5gPw65vWjnTK/gSc+YIyOUrnUnhZsl3+ZwmqxpwAOLlr8Wz4aDi83OP6Wk4R3ZKsILden2ShLamw0fm3Yy929jLfP8JLk8047WZrg7Y1cGLxFYl9Feop+NEWgZokZ2WS6tDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750824594; c=relaxed/simple;
	bh=fdPbzL3hawnVGMNw0JSZuH7nBEbPumIt+1QddePIGng=;
	h=To:Subject:From:Message-Id:Date; b=CWglTtl+2E3Go6TyJAQiqyaMC+utvVXsIejr0PkK//rDVzNmYrSt+3NWJIZ18kbzMHCAa5ZQfRZx1NfsdCbZb1sLxVOz7vAks3jgGnR2v6fqejC8gm/hGVH1SdxQqgNxs2BxsgzchOe9qfJvQ13xhsdPLBonh2dPDND4KS5sXDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajzStJub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajzStJub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A365FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750824593;
	bh=fdPbzL3hawnVGMNw0JSZuH7nBEbPumIt+1QddePIGng=;
	h=To:Subject:From:Date:From;
	b=ajzStJub/2aWxKVN47HWD+buma2FreEzYtAn/lUx117BH6pagbLNHrD+5fFAVcxEY
	 Dr/QchQCJAgoDSnlENAPf5wVqPhTN04YBfI20RyJheKZKsKWIZ1Bmlz8d6GdpozAmt
	 1tKCunUzTaOxIpPPF8777X011mrLiVCVdVICMbLYGZyJNXG74WvUsGIvFuRlacCyHB
	 YsbHCNnnCQI9QDuKa7Mha3AjL2ZxsC/cdeZ78nMQnE2bTmiJiWSpMEHYBUegg4Wx6Q
	 3v9QujYYhZ2+d9EzMZo1OLkZfgL6B1nab031KLvtVwTZWDs99vYrdlFd2RF30nXRJ3
	 NoHspcjsBRHJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C8C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082459358.22708.10208987707354365336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8547e0cd322574500e16c05b27a3bdbaef4a1e57474aeccc95b861bcbec61035
Date: Wed, 25 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750824593
