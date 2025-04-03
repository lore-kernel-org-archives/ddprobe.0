Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402471804A
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743667794; cv=none; b=YUHhvWCuvrcUwLBbdmphhiyehf8P8yDi8JgbLEKw/SpivE3FhiUgltO1OfF8CpU3l8OHVx8lPZZ4d0Xb5u86bIb2fPDR7ryAD8GmQsJDmJ579y2sSQMEA74ffSObxkFmFFam5ha5jb3XObSajJc5LNGsx0z4KuLXiS4ydsYnYQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743667794; c=relaxed/simple;
	bh=F7rb5uZTAR1HrALpH1d33oPvPSGTtUpu/K5jfXybvTA=;
	h=To:Subject:From:Message-Id:Date; b=SDBWR0qPWMl0PDDy1VG1W8HtzxNLbQ9aAX3nU/fKmX/R6QtIrI9UNxtVbdg4hA1rsSSMACkyQlfmA6BjiAHwHaR/FoVRx37UaxLf73tGdozUi6tZbiFVtTLXOL/p39SCAUhEFq5JFwpPu92tg0FFLjWkiJJzOsYlNCs32NG5ZGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koi2m6BA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koi2m6BA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA60AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743667793;
	bh=F7rb5uZTAR1HrALpH1d33oPvPSGTtUpu/K5jfXybvTA=;
	h=To:Subject:From:Date:From;
	b=koi2m6BAQeiYgQ2heZjtCk9QtRp/zQOo3QnjgID4Yu+2d2mLCrLsJMUqHfF8lhubp
	 Lqtfu58lnkuSgvWxb9tcSqlfMY2NgCMfDYT6IiCcEM4oqxRXXPzM2sv5SzqWwmcwFm
	 oqcBw6+H/q6QCGMOMz64lTGLGAuONpA2UI7gZHZiaS7U4A4hYwr789WLLTn6Jhauve
	 tv3NCueXSY3yL4cauwqLMNJN8FnNeTt2bHZnOy/503BZbsvQiPQCP983INA04pADgE
	 Hbnxw5xDOvpIVi2NBB0whEKOYbgkNCfrzZuXF85QZhhnIhBlxSVYerVwYSlh3ckomq
	 /DSe90IFxS0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973ECC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366779358.16146.12040901364862672090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f535fdbd48be69d905c1089cd45f8ce5cb87519e135807f704bc4d779a7cdc1
Date: Thu, 03 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743667793
