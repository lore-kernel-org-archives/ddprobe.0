Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B271C4A13
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757234994; cv=none; b=Uvk4POf+Rkwbfn3FMwUunR+yXx/p20JmcLAicoTiiETWRGEgGmd8tWgeh1aLChr3i6F3CdASOmiCY+7i4JbWaQzxOgioibeOd9Da7W1yBo4gLXTEiGXjsbCXuyvuteY/gyzaRhaHeyVLY+sQCcwNKL3bt2DMwFyw2DvLERb0V1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757234994; c=relaxed/simple;
	bh=iNXH1Hm8OOR/mxEY9m9bA9eeExgSKQQvBZzJc+BDFps=;
	h=To:Subject:From:Message-Id:Date; b=Hey6jTGVyDvogAH3QqczxufonmBHeLtJjiUOn4fiZEGlxgF6/SeDuToo5gQcqEbu894Z2RCLu113GqkSPXYF8x08SaZmF4TTmxJ2I7Rp+LHxAsgF+wEUSErTUS/AQGTuEoyy4jqyeNiklSgYVPTLTfTnmULpwQYx7un7QsmwcLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzw60ICO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzw60ICO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD9EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757234993;
	bh=iNXH1Hm8OOR/mxEY9m9bA9eeExgSKQQvBZzJc+BDFps=;
	h=To:Subject:From:Date:From;
	b=uzw60ICOrk3hUYWYNieDiOFX/qCWf5mWavEHyYsBGDVWq3NSgOCQtrb9C0wH/DpQv
	 +mGiVHvxWAR3adXsC/BMx3rNwTUycSe6B86MuOkJNNXtHnXlnq9Fw0AtGZFkRs9Ehb
	 4UzfO9YG8wOpIBI9qW5cJIXwU2AvWbenhCGu5EF1VBQtkfjltHjZt4zllGVqjzUXD8
	 j3v+HAbt7Oc4CFp86ThkT3mZYYL/x/U/XEkEj4M9mf1UFweYninRhoc3YFetMRyiFJ
	 zRutHAJMSfD6A3wz4RmPmR4aeUeo4BwYcbxZlnzinxuWb4earQ9YEZo/JMlAcqllsY
	 HM/aa7WzrHm9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB6BCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723499357.11593.6146222604648532813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3490e431eabaf2cd10b1b820be8fbaa3b51400b2c43f2c189e7d87623196bb
Date: Sun, 07 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757234993
