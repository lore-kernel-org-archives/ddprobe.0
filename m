Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276A927B4F7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770615834; cv=none; b=TkXeU068ULkxH33/zFhWbKQ0oAv14ylyzXwZW2bvcToKq8EIrHUpCP3HSSELeiRtxKWPliwgGX4Q0V3m7L50UTRSGX2ROIcQH9W9eKwQ60Y/QBtGx00iy4cBcAwufNGuisilJQtRXt6MidkvWfV8CNoWbgw5YITpcmuGTpfPs40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770615834; c=relaxed/simple;
	bh=O1dIIdMddGr76DZznvou7K9VfymTUEPggsXkE93q9nQ=;
	h=To:Subject:From:Message-Id:Date; b=YFe39OFd3mtw2e/O/zw9x1A4ecTfyetL+PoEwRj3nY+jZoAu1AMZOVQqk8sTEnrL/QNBUVsmkz9G5nL8anzMw6t2t6F2rCFYuNgsoOkvXjnjLtt9JTN8TE6wEMPAaqwhS833792feA4vlcq44HeUZuOhCw2DcOv5855GRFKidBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0mWR2yC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0mWR2yC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD175C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770615833;
	bh=O1dIIdMddGr76DZznvou7K9VfymTUEPggsXkE93q9nQ=;
	h=To:Subject:From:Date:From;
	b=D0mWR2yCps4DROOfZG5C44cTbX9TORMy9e0xT08B+ZPNTUMgRkLDNslIUVeKEmr5d
	 +Gw2Nvu4uksBl4cjNUCjfIgQY8qqOOJyqzJ6SEQ45/NOKD6WF6fgYHeEobWW68IPVt
	 F6h1sZUhDiOB+KOYikDCV9lLAZtbpaIHZ/ViC2QyOuauxOGuk3cBHewmBE/nlG5FWt
	 yZh+WYCg62kFi9v5nstzDIuovEdBS2GuwJwf5jtF8ba0+IFgTNHei8GE9oQTHsEBQd
	 4TqZ+f4o0qR+7Y/pp18ya4OzpPh05ZRfuwm1+RKT5hNgM/yIvp7h8sSk1JihJRNLhl
	 9pvdMqKoGaWbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96933EF070A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061583360.2601.6227392552669631566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b3570d6b5b77b53649014f2926516ccb044b1fc5321430eed87f67f29f5120
Date: Mon, 09 Feb 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770615833
