Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC593446A5
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773094494; cv=none; b=Mv2nahRiS9oM610/pC/PUQ1xgp0BaHG4uc5rVwV177nf8h3lkAYCWH4vpzNuua2gT1JQieaLcod/sSYp3lnxOousuVGcnpq/zfkprU+BIfLnM6XdNbb7d1U7qyxGV4PmfXvRep7o+JPLbXl9AHe2XwGcgxsParHq/XlP/p9vr+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773094494; c=relaxed/simple;
	bh=Twt/hjl5oYdWDz/iAwPPLJ5XdGAmH8dLulm8lYB6NZc=;
	h=To:Subject:From:Message-Id:Date; b=CpmryWArCo6RkEo5iv3d2OgzMCzzx/3bx6i2cUdq++RuaZcn5+n2xi1+pgVhihuBC7QTzc6SdqM8sF1KTdol9Pp4Qlritw1bFFaumyxMI5SpBdnEypCfslRZdhTwOQYf3ueuKE5jXlWCLofgLY7ZYN+/aarADoNbedESr4XL7pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=few/WrKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="few/WrKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14C1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773094493;
	bh=Twt/hjl5oYdWDz/iAwPPLJ5XdGAmH8dLulm8lYB6NZc=;
	h=To:Subject:From:Date:From;
	b=few/WrKjR2lbLXnKQZ+xNSECDq19/CQ85MU8Lp4uThrVwjZtEZ4g/2T7m23+3si5B
	 7o0eyeKYbsp/nlI8g9u8Ao3CcXQ+LAxxi+PHqJV1KEnN/dyW221MSFI/dfagSG2d8V
	 +JqAa5J9I+zD/ydw37aSj84GoZZdMGPw3qyLWJTgmejpdg6XcgvxIISMOWkjoWOBP2
	 /9sqP23ukPnGLeJKnkQ//x9pGOiZpZDrHsMP/ixHGsIWG0khTQlA3WU/el/XQpoOLb
	 PO+EObV76E2KW7NDUSROuk7gWTcDBwjiQ/F55RM1NWAnBo9F41cJYrUC3gTei0/9hB
	 CH49ILkft9U5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A6FCA19C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309449357.22757.12857316367098598272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2918bafedaa9422062ec669c2b9bf5e4c46717ddd7b29c60a03f481dd89a9f
Date: Mon, 09 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773094493
