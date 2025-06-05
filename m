Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475C9155C82
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749113394; cv=none; b=UxlelSTPMO2TeIPBtKYYHXybH+C2DgeAlayiIRuZJKq1WfrAIKmsGiSDr+QvZ6Nu/iJtylR8ol3ntS20QoUigsxUqbNPYsbEQlNl7FDKOamMvy7v9Nfm56mn86jgFWqwNtCtuDSstkWc1yVqJX5zzrdoHL3GChq/hgtQDhNzOHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749113394; c=relaxed/simple;
	bh=dIuKF+LkpMR1AzcS1Q1WuSPOefl3nM9e6QBWeVl14ys=;
	h=To:Subject:From:Message-Id:Date; b=lX1x8dt7jVgxaruTPmNCiv/u8iBceapUyNCXikdyjPU3AVh3RwdRO6fE7acKHaP8ebv4Tr1iz3cKcjx5x1IWiwS3Bihwx0U5N9ofY2TLKL8DryugstiJYKKbAFJ4DA2Szfg3nZds30zNEq7VMhTnhpm8/tvdOP0MIGlot/oWWl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+x0Hoe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+x0Hoe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8709C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749113393;
	bh=dIuKF+LkpMR1AzcS1Q1WuSPOefl3nM9e6QBWeVl14ys=;
	h=To:Subject:From:Date:From;
	b=L+x0Hoe0lMvv04FCnfXTimcOzdof4FOfUrXu2CYdbA/eJHH1dis0wl2omjWopJPDm
	 fkZibZVORflJHtFWY+EjdMz/fz4GkXEvAdGmsXEvxJVttzmTDr+plz6NApUhEBU1Zq
	 DWA+i4KjCPBT2JsuGz31KilBYURop4AVtcdCpCbHbVouNDFNWwVDGeuEUSav1kJFcD
	 iMTJsudN3ULoVbVQc1mX1j31B3Tbkct5vzaGeWACGX2KjA2fsZP3MApltgeGXtWS9Q
	 Jme9T6+1p4yTG569kjYXlWJo0gqQwlDj3KbllxE3/XlH+CthAvysk/xcZCZ8YSqGuf
	 7DnLW+QCXWXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92830C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911339359.6519.9639495359873340019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fd3217ccc9c4973c265ac1086cfc95090fb6bb09ee3560d413928d65c7172f
Date: Thu, 05 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749113393
