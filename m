Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1B423EAB0
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777843054; cv=none; b=H/yOvXl7L5Ghi2BTut4SrFuqBMNPl1H+jTnY5pIaaOjkgUE3wX08cmHGxK8spW+eKWF0igFpTcdmYbiDdfRBYdopOKixqqXZOZA/K7FjAD9KyHLzr+j454/wBUxjhMuTokgQxwAYpLqCn+22VlGmBLXJJ1m6psOhlGzUdVP9qAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777843054; c=relaxed/simple;
	bh=AfGC+nEGhLWwv5eBFWWUsqiIdnGOZMm2c6d1pmmVSlg=;
	h=To:Subject:From:Message-Id:Date; b=M0/2FlmttnGSZT3xD2orK6s9H8cRM+4kRD3dWdU8e0JlC4+hFUQ8Po6szyfhHOH67/rFLM/wY4gP0BHmO1md3aoUf7PGxb2/Z5NrEQA9PUQZa4VePhR2MAI8yW9uSSyuz2ycllNejLWeW2tTVRymktz5alcFSOrsdXv64c7Ve8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RizBVDaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RizBVDaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF762C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777843053;
	bh=AfGC+nEGhLWwv5eBFWWUsqiIdnGOZMm2c6d1pmmVSlg=;
	h=To:Subject:From:Date:From;
	b=RizBVDaKE9jqUlcRUBAymONvHrKX0oVn/mddUIHNCOaJV7ihmArjvEDqofW45+PPp
	 ZHwV09G4nQQ7472rHUpoM9WJ0hRFQ7GMNRgu8mSaK19jzwC6tbH+2zqjgHTedb1PjV
	 xRh0KFfz0vHk/QhjTs+fvRyOZHwF/mtTNmCDTBAHGwBwPfVlevgiq6VQ5l4xctUiJm
	 M8i6jkOzHu8DaNYgngXuxSVU+sF9DUdsvb62Xdo98zO6tMDr42XbsJQfbq/cUe60kJ
	 bKnnAdeKHdsACApMsceVYMok1KAnBAnoRauL9e08il59jZpyDVsJBSVHU00mt80ZAx
	 QaespYEpA0/4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5FBFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784305368.27998.13749936980958992940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23afddc9823992540170a5f3b4034719f373d139dfc1c8511ba03104d2018356
Date: Sun, 03 May 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777843053
