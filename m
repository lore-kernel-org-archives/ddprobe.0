Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3C9332917
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763413914; cv=none; b=G1H8FT3cb7aQeGIYg92W9fFGThPFkhFqis28KsMq+zX8erHe2g/nc3pfWiPqcDjHU7G04ed+9WKDdRk1yUqC8MF1BxyxBzUpTzYGRca5guj1yK0Xv2NNOSazkMgh1fXKMJn1wRzAEh1eYj/DeNjADJexIvYGOOXsE1ODjH8P98o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763413914; c=relaxed/simple;
	bh=8q/cMzhLFjPQI0pvMP5u99xfdJtRQVjbaKklOiEJGQU=;
	h=To:Subject:From:Message-Id:Date; b=S70m7afDcSVgK8brG98iPEFYNBUVliaBWjg4GXrnMPrKF1atMlvytjuisxrWP9IcV1lIuKdujWnfSX85KTXjorzzGrq1RenhSd5Ja3TAJao83yqOT6OwdC2Ps5PI70j1WF+tkm7+S9zr6Cxg82R8wS9Zeb/cs5UqgISbsyguVZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3QCfDoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3QCfDoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7030C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763413913;
	bh=8q/cMzhLFjPQI0pvMP5u99xfdJtRQVjbaKklOiEJGQU=;
	h=To:Subject:From:Date:From;
	b=g3QCfDoK1iNwgOFEkUXGQ7AA+8G1HEP+oR3bJ0yPABSyDskJesUYGrUWUTfXcpejH
	 9YBIWSRy10VBhHl4nG8khoJVbj2HP7jySS2pDm6vyo6wmuEmk53TWeeX+IxvK9ZmaJ
	 FXilxBhjc/ick1gMj6mlFQON2xNYQqmp2pg9dUs7EexjQxjWw7i2JzS7Nee0j2XT42
	 dQWI7DvsfL1BK10DoUd+rxncgO/8OHICG6XtUkCr7ONlw2pSv1forH/m1l7O7vQ7bm
	 OPjE8uCu0whgW0los5BsjTVpXXiIMoXMsl6WC7S+AkbGAVWg9DFEkGeN7rnUZF26Cg
	 UL3lW6oLqLOOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915AFCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 21:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341391358.25571.10621972637068801346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0ca7cbff1688bc42e669e088ea02f79de20c76cd23a452e1fb3cfb923c4516
Date: Mon, 17 Nov 2025 21:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763413913
