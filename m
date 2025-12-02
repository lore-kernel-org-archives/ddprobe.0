Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216602FF170
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764656574; cv=none; b=nx9Z8jf8KpHljQaWGRcObQmIU8iswSombM2kkRUZOlbdBty8Il42SUqwm/o6p8gksTD0x3HVUbrPV2DX/wO92kNW5M4rs97R9cnSGiAtA2bvOx7YYERTeVHi/GqJVcXaS57KqwKzE6/QROqXld3oPNI0fu2hXDWnV/ZA9eOochs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764656574; c=relaxed/simple;
	bh=7fWUe+VseEmH6+2sbd+ebZbCIJdsbyICLCfQuWIuFbI=;
	h=To:Subject:From:Message-Id:Date; b=aYobzjFddBb/jpNeGWDTCejJejD6RR8FyL1P7G9dAkAT6WWHiV6EzzGbeQRzDuvZQiScsi1zHZu8vdy1fJjU7Lxvq4JKfvKIomCFph/SLimlpREfKpAOOUUNRP818uq+InsiELtib8g5Rc4JoixH0j2vChLH/N2dAFyCWBwUOVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qynFJpQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qynFJpQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AADC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764656573;
	bh=7fWUe+VseEmH6+2sbd+ebZbCIJdsbyICLCfQuWIuFbI=;
	h=To:Subject:From:Date:From;
	b=qynFJpQEYwCaQx07mEn/Vm218Htf0qdbP24woLdw0P3HQSIu2gJsqvnYMovuyXFHV
	 kgn3jNAwWSiBmhmcGPxQNxZLT5aDMmL5cF3kZz0IaUC7ATyWi0yEarJMdbpJHrhZj2
	 +sV3nz39FCWshF9mNbfXCv0/PZTVt/ndgiij2nrYxQgKyl7l8z8GroME/XBMxAcJwt
	 REKEA7KhD8BAA64tcbzvreS2XRQudY2sI9aScTwoYu7TlJAmNBqADWzz+Lh1wTnDoY
	 Wl/aNx+166kD4/R8JJvc+md2hXZz4X4RQiD8WkPYxPyAyjCV/VpXRxJ0vZr0RlXXBj
	 u7olTKk/TjnHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BE7CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465657358.9280.8595384883328382920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d65e487647b944fa374d7528e8f7c676fdc85c70ef1eb0a87035e80e97dd421
Date: Tue, 02 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764656573
