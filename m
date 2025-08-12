Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1EA22ACF3
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754972393; cv=none; b=d0kO42lRCUYlBhjyVSJyyhOOCgy5fK4zRr8s5tUOrnJ/Nb9Ym95KPReLioW/fb+L0TG/hp+4JUnHxfFGOSHIocR+ibqG62n0ts5I7NLFUJrp5JuBw3z8wZVePtSlKIXptwWrLrXEll1feGa/xFl5k5sjo1HCOvOiBw9CNTyLSqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754972393; c=relaxed/simple;
	bh=HvurHQ0RlgjczuDY4kSr4FXA7sUADku7lO45kTQtbgg=;
	h=To:Subject:From:Message-Id:Date; b=O8Pptzegmas0ro3KpfA8UMXN9j9RLQjDc3WvUW3U/cngSO6+yNcA/T+UFEzH6a5hxml7Nc/5mtSO3pYlWctI7smaJHQiYA9u55ND/UJpnS30RDD+9hkC5KaKEIU6I+7FDnyw/htnC0cnu9DVO7Uwi6WhAgKpvJo/1b7IZEmWSCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTDIsTJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTDIsTJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57E9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754972393;
	bh=HvurHQ0RlgjczuDY4kSr4FXA7sUADku7lO45kTQtbgg=;
	h=To:Subject:From:Date:From;
	b=fTDIsTJp40YgM7tKbvO1Nnwqt5BomcZ2ycu76JUOALomvsIDauEPKewyaqMreNjSV
	 WEoEEmjnlAcwFLLq+A6xfgBblcJ9DplCRcnnz3Px3tn0IWuli6qQ6hTh/2egAdua+S
	 8+KYEAxXPHEHRyk4FjMqD59+CyZgRocKcY20OHsxxtHzFXpWFS1PgQHNzPOXwENroh
	 oY1j6YVJgO4vyK1acO5DMcpnAi7f2/TSXNjpqhCH4CgHKFSpB4ifyw2g6XE8XaIA46
	 N29B9A+y9N/fUq8Js/E1qqp2ZwZY2ygrUiyjxuK83o91pPkayKb4LgkT8VZzHmuyad
	 yN5JENANrjNAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9257EC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497239357.32500.1870888722094675842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44aa768f75bf711a29f2427dccf428251259559bef401cb3f441a2dcda753a6
Date: Tue, 12 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754972393
