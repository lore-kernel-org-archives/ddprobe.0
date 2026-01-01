Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0081E1A3B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767277434; cv=none; b=RyFhnA0c6jKtkOCX0norswQ8kXfDFOkDbZx14oyTkIDYLHMVkxo8ZnqIkfrS3gsoUdCjZF9zUcgZZoBN+eP+KYs6AwoeqjbCdMUV0Z7JrA0rJeWQxFNS+FbrvZK9d2dh7IyEun/ajef8+/5CfNoPPAhdPTegRCcTeUIGJkXuLZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767277434; c=relaxed/simple;
	bh=rUfTwFBHsVkpSHy3YutrK/bs2pKMbmw5Bgx18PDCdHg=;
	h=To:Subject:From:Message-Id:Date; b=Lrrt9W1c9J6u5bQjtsDejNVw5KXeWuZIiV50JsjU8AUexDHHu3zoWwrRPHaF8qUNUp39mDEjiA5SAYVBiBPx9mg5WetTVqa93rPytYBVfruw4n/GabAAp5H+cY+KeTDZ0SESKTKfgPWoRRUshASyRFUvFWjQuOECsRHBD4LYFBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X78fNgY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X78fNgY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8034C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767277433;
	bh=rUfTwFBHsVkpSHy3YutrK/bs2pKMbmw5Bgx18PDCdHg=;
	h=To:Subject:From:Date:From;
	b=X78fNgY4bnn51nKQrPh7HW3MJayyo1942T35bhTnLAhI8gMOMTJ2XTMubKSumHB0s
	 42ZOiAcsegZ+fQy35mMg90RX13aMOlpK2Wstkh2e0pFgdyanBSJkhrqbmI+w+xIPbF
	 99FweDGWBouowS5sULSubdDrAij48/ARCKURAVIE3cOnwRTeUt1etuRkLgP7JB17Qg
	 gvVzz7UuDLn8RI0brj+tNThws2ai4mXSZFIx7iEc7i7uhbSV0RhX4wAbeusnZiDIwZ
	 h4FBz+vRS1G0rcH42RNnK8gJXAS5MEGll9li/pTbkw1Vo7tUBJZ818J5CH+o7390Ax
	 O/OKAsAQpbgRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201AEED60F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727743357.11511.10720811177446532999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab72414ed0936e9ef8c9dc220bf147e334109644b9282f3247ca3673a876f794
Date: Thu, 01 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767277433
