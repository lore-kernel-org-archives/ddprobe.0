Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F0550096E
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768696434; cv=none; b=UByP3nC0StQcl1Oh+U4pDeKOFbEgeCFWIqev2LlSefzPl3UD087g1v/BX0IfIC9PQZsFB9PO/R0Gt0Fcgl6adJYjvKamqcNNGCcwRVYtnb6R7Kp4ZAbdVFY9B03Ktc3F6FHUtUg5uVkTaK08sSlmgakZg8Ale2O6GW3TmT0pdMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768696434; c=relaxed/simple;
	bh=UCBZ69YlazbZuUZzi5lv++se0XxPRehpMFNlaNr/6Rc=;
	h=To:Subject:From:Message-Id:Date; b=ml7vkDjpMLEbqhX7qltXbeyUBsv5nkYS5ZSSEvLguh4+68W1bAqDVMiackUi8Afpa2tWtf0T2fstYSiGBDNFQnn3uA4vif8tlu13+TnjpoBaKRAZ9abtm4P8aOtYK0hObwpK+dyhgNsouW8S4c+mt+2Euh56Vw/zE6QVdadShEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4W5Sgwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4W5Sgwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28C4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768696433;
	bh=UCBZ69YlazbZuUZzi5lv++se0XxPRehpMFNlaNr/6Rc=;
	h=To:Subject:From:Date:From;
	b=b4W5SgwdYtmZGh5pU3IfZ/iZMFAfUbZ+OLW28fKI1dJgFEn3gcOttaSBtnVOl42XM
	 VnqOCkTYx2Lg2ygq29al5mTEBJ0ncwBngJZGtQMsotN03J0sgEpco0X8JuOzBFY8E2
	 engKdG9hV44uaJCZQ2MUEgE9oduvSdCI2Bw4M0fkcLvw/F6ni5ohSLBtPIDTdhZbvx
	 Op7vaUrLmon3yZeX5zfOw/6a25mDUR3juJzdw83XTK86JtrSOjuBTUUhIdd9ZA7IXW
	 crLKZIr5jlaVMDqLw1CZi97fNOfSKJ1p7D4zblAbuD8BSK2lD9mgKcWTzdx3t2srew
	 RRooMUOoROUTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B1CA5FE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869643357.4905.2687747384742194307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8037416f04063c9e3dd55b5bc9afc3b9b03560607229a92ce2d074ef4a4ba782
Date: Sun, 18 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768696433
