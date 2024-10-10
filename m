Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226DE5028C
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728532554; cv=none; b=NKPG/Rc3GGC9DohyGr5xlQ6Hj2GWpWaduKmu1quiKn8Y9XbWcxy2CwPrrGha3Mp7JWHDnUcOHJdELFG4wbVObVfU+wsyX/foy8PuFgTVhBWfmoLeU5+y793WLqKV7ygCiF/xehDkzF5fAkF3sBtEgH6glCXZnNqpcCh5ZmzoSXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728532554; c=relaxed/simple;
	bh=27jGHXZBF5Jllrva3gMEVJO2OVnlw+SzWVST416qPvw=;
	h=To:Subject:From:Message-Id:Date; b=tqt07Yx57UvPQNXxaVNdxTJ4RG8ERU/PbJSaV2M04jwc45RdFepz/So2sZ47IQANqjIepYNPfe3W/UpAbD99BNFn5dFwsif0xqDx8B5RJYoVzctuhbVpMoGf0pAepjPsXwli00Cpbkm2MpKx5kPZiSZ3HNAAmfTzfjFNgbRI5Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSrVpxbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSrVpxbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6674C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728532553;
	bh=27jGHXZBF5Jllrva3gMEVJO2OVnlw+SzWVST416qPvw=;
	h=To:Subject:From:Date:From;
	b=OSrVpxbUoV955U/OEDoWoWylvwmK/ejqKJD40y5q+SNYVUcP6+cg1/O8XMsLYTz9M
	 Fi+giA7wPhJEQztlc8myQ0dAX9Z0Hxs+4lMrHDOzVRUjcYH5gYpereVluSOyPdeJ2A
	 YnHatrHQ0XEM4TbOBf11Y6QCHH9u+YHTmoe1xBs0wV/5aF+ZZXQnVOp+i0k2NReSmr
	 kbtv5+NnOIREH4Z8q660eQyja28NqAdWxIoFwnq5II1Pxss8QhrFeETqWQ4JhCVNKj
	 DlVyFnxiK/kukZn+X0aqwRK83MUR94M7Lu/hW2iHVPEX0C8hyq2yxYG1T9/+Vfmavc
	 k6DVciknSVLgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E35CEDDBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172853255360.20289.2068584756557679421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834af004d9c4913a72ca78f9688df13a27b005d2730643dbdf559a7cf181f8fc
Date: Thu, 10 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728532553
