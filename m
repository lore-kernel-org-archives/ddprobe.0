Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2391208AD
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762373393; cv=none; b=gqewsdoZYU0ZwyRYvspgEU2SIwPPo5O288TpxWhsnOzXv4Iq/uBns6nOyQe1NwuN84rbNHrlFXUJtBpJW2D+CiuSilcgMyy6TpYzY2NFZY7Hlf+fW/vDqK4+eEAlkCMRTFS+IYnbPs5lHqvVqZd5BAARJpEptt5jCi3elZEYgHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762373393; c=relaxed/simple;
	bh=5UEFoAxj/gR04LvtF6SWm8VNuIOxSOfyABdh/iY2BE4=;
	h=To:Subject:From:Message-Id:Date; b=hb0TLaNnzX0U68+olCYye3iqP/h0ewUVgmMF3KZA9w+UoY0J6RfikpwzULy2x9z0A2oZgUlf7HeLX2vWQMgM6nOKcWMim76vP996nWLviTe4hZQiXdJ5oLEnykyRaucknxRSdGoknbS+859OW2XIwK8fQXdtTbYB93gnek2Y0eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+m/vDRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+m/vDRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A005CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762373393;
	bh=5UEFoAxj/gR04LvtF6SWm8VNuIOxSOfyABdh/iY2BE4=;
	h=To:Subject:From:Date:From;
	b=H+m/vDRi/6OZJes6ISUtmStbgC8Laq/WfrzIo2vF1fJvwGpdouUEaW1KClfrFJmdz
	 NWUpNn9MzAFLRpy8Ow94J4ZIFP0eaLbCr8vlHwXlCuJVNaA51n7y18mRyt72dSW3tr
	 +9ydSqVRMybnG8oh0+j9iTguL7BHDi2WQ5Zh+ztj8YDGq2cN21zGekHrpK5LrzyPym
	 oS5RjYlYwY+1HxjuT+6XtzG87/7qag1wL7kbIRUpJ2ILVIFqm1Yr/cikwSsrf/Nxic
	 xR717otKB0iI1xq/ES+T++N6KaC5xaktvbHG1yMBCtml1SsHZg5YoZi5clyN4k+nos
	 z3Ya8INTdd5QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92899CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237339357.5370.14747132634192893195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992b290105865863f69959efaa4b4a7717a993ed0043bf5a5a594f8d1e03395a
Date: Wed, 05 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762373393
