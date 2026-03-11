Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180D236F439
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773245694; cv=none; b=Uhgr+7m34vUZn4h19zSTdDIsH7RpEPREiOW2lxBGKxGzujTu1CGVWPi6lwI9p3vLdoOQbyayPIkI5vlo+qFsNaKToqCJ4U7GE3XJUt286fW+ASrTU8RCLJTYb45onQ1rSf9gReTmEIIxFP/LTw3hJVdzFub9vkho2QEi1TIXz3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773245694; c=relaxed/simple;
	bh=duvIJWvUmrPOJbFldEqCyVV91a4veDxRndAi1FbcymU=;
	h=To:Subject:From:Message-Id:Date; b=ZTBgcBLEFgiKw60xqOqwk0wW9Pdj4s/nZftaBroFFCykyRBq64uRH0u3Dh14pGkofwNeS2/xLeRDPBGzCZ4o9I3BIk+vGFi3RgKKIY5+M3kfK4Dk18yOibOJQbC1Xq3MRAjWnloEkz3KtVfdAT+XjVULTe7gSCVLXZat966xsmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EN0xWxml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EN0xWxml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF99C19425
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773245693;
	bh=duvIJWvUmrPOJbFldEqCyVV91a4veDxRndAi1FbcymU=;
	h=To:Subject:From:Date:From;
	b=EN0xWxmlWRTBWfo2DFJXBWgajYoJrW1FI7peASAX3rgvzAdICbGAdU9PFOABZMZCi
	 dCI/sRWj8Y31Tu0ze6FdUiWz/F9my2jJCmgSrTZFHbi67FaauN4+ml4XQyGOyqhOi5
	 fzIIKRAvtWfg9nTkWLOAPhIMiw4WX5dPzz10XhbpHhjPk65ivoNXyYldRU8eEdlyV9
	 udYK8Uyx9NdvXdA9lBN3WDdtueMtzL8MQm8SO8sePZHDBiYbQdC8Xa99OdYg9Xof3v
	 mKepI/u7jnsp3gKKAgIjttyp/BMdk+y6ErbR4R3xYJ+TV0tiwZPRzsxzgr69SODOK5
	 gDA1tPYp3YG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A281125854
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324569364.27303.10951879893046312306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ed1103c55f6e7955df51138dc2d2bfda9559f99421105a119cf19a0057d8c1
Date: Wed, 11 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773245693
