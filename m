Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2803336DA09
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774305894; cv=none; b=ZHlRMC1GpzZ2b+aCrAKwcPsXJSDz5ltM+WUcnqStUSRM/nKmb7elcDKOmZkyLmdDQDBfZyJR5wzgjQkFVZcagEChRVSXo+isic3Vn2VVpK7H++WLeGWCfo1WdGTJT2bQUU8fFYIg+y9jWdYoL+GYWUGGxop3mKDIBVPXKp6fGjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774305894; c=relaxed/simple;
	bh=3cVHJ4bRWt59pfBL37aZI9DBnnu8/f124ghFcCPzxj8=;
	h=To:Subject:From:Message-Id:Date; b=FRyEOXBDslIvt/DLS8Tyf1FRgJUOAGfsnbL5Af4oe3zkc3Ilij/rgoeN4BR7KQvwRowSdbRDtnsFxz1KShpaZxLPEf+iegg1/lbX5RbqBhwpkXTtMnjM/M85/OOglkA0jlHldXzJUrBy6vP9HXGS8Zt9eZH/ojVc8f2FL0A1ryk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jr1CBbyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jr1CBbyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF13C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774305893;
	bh=3cVHJ4bRWt59pfBL37aZI9DBnnu8/f124ghFcCPzxj8=;
	h=To:Subject:From:Date:From;
	b=jr1CBbyyNuT+8IA1Hgrko+x9zl341CDbG1Qvn1J9AXcUqU6Sy/oF7XHgJwW6bmq/y
	 roASj2hit/FSMg7UuBIqBQn+/vhh/FaaZkADSZiBfALEGtwD6l5RE5U/AxVv6zXCSX
	 yasR3NiQOK+nogCwl1W+x5fnodu8G7qalcpK1/iLOrrsUM2C/RCWvkr2KFfQLNUcGS
	 cJzagAshLGnEZXFneJfuXpmLn/ClH7WWgjbQSmUOw33OPXptP2uvYoQQR+xsyKSwrt
	 F934fUHhLctYWb64DBkwIhoyfAXk1nAmmwWUJfCM6P3CnMUeYyguMHK1QNwmHBdz8X
	 LRT8y7LV3AHbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F18D58CBF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430589367.30839.16277295936807496581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b462f67733bb89c526bbf9a4d76a80fde71946b6809408dad7d4e79cd13dfd
Date: Mon, 23 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774305893
