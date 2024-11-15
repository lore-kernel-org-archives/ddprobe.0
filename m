Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AD518756D
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731698154; cv=none; b=B2kevvgsXPgI2+znNLfXX7ayrVGWBnYm1vwGwFFW+zkRyyz4OX3UXuBOWUG59xB5GAYEVuFXqWGuMhp2Qf1FpTRdqLJIya61RB3q6GBQ3kJmHYdor3fA1Y7TCf/TV+tCRcT9AomI2AhOIhqhD5bOnhAtb/KyRF3Y0TnP0ssWqUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731698154; c=relaxed/simple;
	bh=TzC9SJoytf7nVH6FrlG4lgsHnecxvuyTSMNyV1gCkT8=;
	h=To:Subject:From:Message-Id:Date; b=mFy8cRVGWUfI+lGyvaRUILfds01RzqtLERIw73vJSOqgzh15tmpnLC90zrDb9O9o8Ja8ZgQjtnBrx9R5QuWAMkpY+b1nukNcgprhRJx4bKenzgBw/ruN3++6SL6Wq725j0rJNCDu18WhQn87qCLsd1NKiJjd7d/B53LWm5LfpLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/LmWSnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/LmWSnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C97C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731698153;
	bh=TzC9SJoytf7nVH6FrlG4lgsHnecxvuyTSMNyV1gCkT8=;
	h=To:Subject:From:Date:From;
	b=U/LmWSnmDnx6rrAYhtyR3KSjbbKyz4aygbANo+f4x9wIuX+OA7uLmCwOfWg/HDka1
	 w1Kk4nMOzyEGThxPy3YcsFJoMOFY7w/ng4G7HLY0BalKjQcKNEvRdWAEimS9KTqeXR
	 6EQOstQnYrDW79hy1MJ5e7jjfzl5l8dfVMfi6O1vBQmRB48AOE1AWg59/jCydodQpa
	 em+/SEONnquL/NEuqUlrs3sK/QaZrGvsmiOe1YRdMSdPGZc3l1ysOgWOQwcQUNb6je
	 mhyi827qRzQTmm3TRsXEU8Qn8DNcsNN7ceEkB9w5BfcJZ19z9vn32yF5JvSg6EKC7c
	 WR39QsSU9bJhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93986D68BCD
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173169815359.3395.5811217750135092601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe06cee317e8cee562874a399797165e72780eccc978a90220cf11a17317b8ce
Date: Fri, 15 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731698153
