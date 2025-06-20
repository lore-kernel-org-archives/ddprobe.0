Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D576D280312
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750411193; cv=none; b=OKTZ4W6fDJxRnCSOibVGCW+ktCPoILmwaCvnX7OrXDL+qJICKBPwJBeCHcyaUJB2VpnAHA9O33m+hnYPwsT1WTCEMWeeQ7o3vf4CGGKEwHDKnTt/mtnjlB/zUs6pFYI0TR0JhQTkJp0lxGCcVTf2IxOoRn/LX1ieMf6qw0F8W8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750411193; c=relaxed/simple;
	bh=LTZ2yri9y/gjMjfT25ECkyDQ/rLnD3t9Htq8WfaSRM8=;
	h=To:Subject:From:Message-Id:Date; b=jiF/Ei8kxZDXr60wm742tXKggwz2aYXd5mGVwf+A0rYM//jb2XtS0YzRPGauY4en5MVNItYGZTnqQWRax8jZs4HSA8XtmsKNXFEEDWq5Q8tfr1HlKmTY2+1PqfLh2xRj+TrOJFW97oSAYwh989eW+Lg7UUQ+LVrbXyGDaEfMewQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2eY8AGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2eY8AGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F151C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750411193;
	bh=LTZ2yri9y/gjMjfT25ECkyDQ/rLnD3t9Htq8WfaSRM8=;
	h=To:Subject:From:Date:From;
	b=i2eY8AGgaABaqhtkTwfgD/jZhiZIIgp/P9HT/thAxHNiogW6KZFoAL6aknwn60Yi8
	 /qPcy4BzzC6VWWDrGuS/Me4glG3C4YgQEZte31BQshnLnPSVxqBuDSgcsY8mC3Jqza
	 luEPqKs13IrSw3rPyhJJHxGq1OUEk6tIeluWCtIlO6vo5a438wlrW+CygubzsGhrKX
	 PFtVpVuIxT9Pux6wgTkiBzv/5DWjhgVY011IC9T1n2QBGn8FyjeTvsoCSwvalPnqD3
	 /u1vaa+PuuNCvz6ZpJMTMO292hf2IJQ0vdISM2W7uJNRwA3lQ+WCp38fnwx6YblUNj
	 4L1pRZeBObO8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A2C7115D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041119357.13389.5808178257916640287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d80151485893346657d4bda47905680ea176a1de0416b2fbdf121f135e4d58
Date: Fri, 20 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750411193
