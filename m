Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2599422D4C3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749676195; cv=none; b=NusvEexoGcrmfH2wmDFLHhvX4UFGI3WbfZI5XkgNBCi6P6ByTpAry7a16eEAnwKubxykZ3g6XdOtHW+l8ftmlmMYxUQS1wb5BRksrV32U3o2Ps08DtecCa3WUNSVLaLdiKQ8iVc2hlP3W0tHdO+Tql5K6filSDH3yhog3K31Gq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749676195; c=relaxed/simple;
	bh=s0enuE3CfbOZhtPnML2toSV9Mae0Ic+umn1u9WS0wSw=;
	h=To:Subject:From:Message-Id:Date; b=rlHOvrLjOdG22ULyXqZM24QXbfCeonkTSJqnqcurl4UFzKVfVs3nYgtDKvpMR7PL9/spGBSqlWBBacVD+AXwBjIkXsFmLV0ggZfpv4NtwvpEpBeA87yIy30hfVjUx1fQK6z5mZbnObeTUEtx4dFFHqhrIb6anmY+GV5i2GL5XLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LS+bFcBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LS+bFcBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD28CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749676193;
	bh=s0enuE3CfbOZhtPnML2toSV9Mae0Ic+umn1u9WS0wSw=;
	h=To:Subject:From:Date:From;
	b=LS+bFcBySKHYRvDOsP9wrzhPVdUORba6hskIGlVQEUjzFgXKWIM08xksg0Z/X54U/
	 hm5rP5Wddy0IhVP6xOpzVAANdJ9RCHQpvRTvkdKuYgg2I5dFyNUT3Q3V8qDrBEY8fA
	 SHDQzFVTtjA87CoHir1geq///0KcVpujT2uoLbeJcW5FO2Hebcyl4fRFFYhgWTNRaP
	 1uxXchvWzgi250AqC0/aBjr4CzJQDnult7wW+H/QmQr9gZe9PhmkPwiSif7bNGhurl
	 mu5G8QujuSsc4HTNmQtyvY44mOX66ebUQbxO275P6XXPpW0NnbnPGJlWmduO7aDiiD
	 hhXCshRy6U0TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB43C71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967619362.3633.5858661501584232931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b981478df8e438f35d816317fdedee5ee8835b51547d05d1600686ab0b76b4fc
Date: Wed, 11 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749676193
