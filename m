Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F714194A60
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748258994; cv=none; b=oKn2WrOZIiUtbaR96B+IXoDytwtUWPootTbJJHak8uVkrud+eVYXkYqhUwECqNrUoSCW1xyZlmsBCEUxuj2dgE86CehPwA5sSzZL4FzdPvbP7e/Elc6ZMUb6bAIXtbB7Pl03dRm5D5k2S9BuWJMJ5TrWAChvOi1hyL5PwwRtGKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748258994; c=relaxed/simple;
	bh=JsdpE7SdWHBs/Vc/KDUZUORz9fFPDMVABTJSJ7YzaNY=;
	h=To:Subject:From:Message-Id:Date; b=fXZCoDNyRQmL80Z0cjoZfG3m2IgGSNbWiogHLSrvQ620SRfztiR3lvO+NOijpGNBKdFM5nUC9n/HLYXeN032F1lHLZMD4nsWAHr6csQrFp44huZHJsf1iTW0+Z41cBX32xMVWrPbZHj2Ig6jwIF1enUhnDH+CQK3ya32h3y7EAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiPh0JlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiPh0JlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C07C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748258993;
	bh=JsdpE7SdWHBs/Vc/KDUZUORz9fFPDMVABTJSJ7YzaNY=;
	h=To:Subject:From:Date:From;
	b=ZiPh0JlQQ0/603+zHRsP6+OFArzQxqj1scDsga5LEamZm5jNHHFwrfAEKj3wuGgP8
	 SRs1QVBippk/zAywobtetHMbKvK7fU6vcEj+lDjyRm2FYiAtEEBbaiLvXY2VwoSBZx
	 cJjndbDquB2gDx7XZAy/BJF/cYgFfZbP4be50dwEBh1uHmdI4j3e3ZA3N4YRIZEYKf
	 JvaNZpiKzDdMFBbQ5xtDm+65f7kBUETHHktdeOUdbMQk2wMgJm24KiIc492V5q7hHf
	 97PhZ/r/AqLztEISProuqk2luGyHqVJfS9/UG8oYJpZ+XoM+/l8FKUO22+sStlMQPR
	 ClAHLYJa4cbSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B6BC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825899358.15646.7842470889729610458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a6639455e630baaffa6d59ae64419d65fbc73b84e0264efcef85ddb3d3f48a
Date: Mon, 26 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748258993
