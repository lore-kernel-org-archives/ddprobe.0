Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE3017756
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711282697; cv=none; b=ZudF4kbKco4kAtHxutnuirJSge3FeB1vCFuUHnc3sA+3DDXJtvKORCykm4QmawPIp1ndMJDwLV4gBXeaCHDi9Sixl4Ds2QPSDGMiY0fjkBqll2mIrfG52DrNXoo4zPJKSLjc2k/HPCfApKwKKeumDFFcOstx2WOPaaS4V76lvno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711282697; c=relaxed/simple;
	bh=9ig0wrV/WONEFR13vmmtlCzJaaYPBTd1VvKMc9CS750=;
	h=To:Subject:From:Message-Id:Date; b=DzAo9Dr2M2/ZkxYnHVoCNIj4Fu0oREpLQ0Cn5SnBxpHKCpTqrD0CxgeYLIcjdYOeAidgVbvh+VhgTwkXFP9LA+GYR4T6+cQp/lAoyUsENWvC2t/rvyOsP6BJbGz/lm7dF+xJLYGvUCYCeB+BNRmyoGE0GONe13nfnuxD7j1dRzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qITffRai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qITffRai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79889C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711282696;
	bh=9ig0wrV/WONEFR13vmmtlCzJaaYPBTd1VvKMc9CS750=;
	h=To:Subject:From:Date:From;
	b=qITffRaik+gAzpVj1ZFmRJTDrJNkty/fphqv+IogGI+eCw4tHuhPGa1cXYBrT2BbH
	 myVLn7dJKnmAMAWwOz7nXLUgUsM26Qe9aGAxWisPMXl78D6Vk68BCYg5s9gx6xwNrY
	 KA6YRJz7anxHVTjvqlS9BtMBpIE3/U8doz1X++XyGHC8vlKjf4oXlsdUsdeCamPNmu
	 j+8NuYlOWPqbxKnRo3JN1zqDiowf3uIuFX+QFD6+l571xznp0hRtG+QQTnkAc3xNAc
	 182pWn1p3akEgeBNHY58RC3ivwuCtlYRTJHelOKTS2BPrEIn35TzOc/2pguCO+rSqk
	 CbGvsFhj+6lSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69965C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171128269639.9113.16565057515370921746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb0e80d44efb0ec5838c39f44da4919391eeead7038a3228559e7a46e82a303
Date: Sun, 24 Mar 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711282696
