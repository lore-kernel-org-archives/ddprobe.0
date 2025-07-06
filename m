Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D181192598
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751841594; cv=none; b=DTIgTgGEoTtwZ8deF190mTk9X1Nc5D+RS++qMWggYWXPSwpdi/4CXflcr8OO2cUmp/4hofqbaeBc423wYZsWzdGbJ/r8Sn/6rwLkGYmTxjHcXccAZNAJifHZhHUQahRQf1fU+D54wLGbcXEd1v5UP0rQvn3vBGC4eTlzvUd5LYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751841594; c=relaxed/simple;
	bh=LXdLpqsuzjJcBKMK85oBDGJr9Q/J9HeglxQvaD9p0qA=;
	h=To:Subject:From:Message-Id:Date; b=lISIbHACVhdnREawRIYxxtozRQEh1fOqkhwxf3Vv4EigX8KpQ50O71TePVZdZaCfDDut34V4OvipUnh2+Q+FWUd7t+OnJuyM5TCvgwWyd8lu0D9GtsGMyi4Wp+2MW7HXMdS5TgI456/A/cl7pzH8e2iyZp2BgYYs0wPQ385XRIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cz5Mcqp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cz5Mcqp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C15C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751841593;
	bh=LXdLpqsuzjJcBKMK85oBDGJr9Q/J9HeglxQvaD9p0qA=;
	h=To:Subject:From:Date:From;
	b=Cz5Mcqp/3DgL5fnqclWI2I+kMXxAy+3saa2ALUpZ/bwMjvsVbWCeDaMFGoNRBGhZz
	 Lze/wuWoJdUS29ejWOOZNEWcsMGA9xeAmT82HswDwy2vqa4OEvMZFja5p0XNw2z+Ox
	 zZxM/au9Efhdl5HBSooRTuP5cGs6KWbc5Iw4gAzW8f8o90CnD+XFthp655hPyMgFUL
	 f8RUGuWA3uaj+jpTv1mCpjuHRxT5xbElRD+72qg7uYQwXb+MW/F2H1LAxmRTW0w7B1
	 AJNH7w4Yd003pJC2O1AVpIV7gA1XmF1l4H4L+LVLMUzNxK+EEC2wMfGcfGdy15Rwh+
	 lJmx03J2LWP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9231FC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184159357.23626.1747730085669229884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c59b1f4a88b9f61a63fa004461f021087833ddd2fa6bca4bd7c7b712e5dde3
Date: Sun, 06 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751841593
