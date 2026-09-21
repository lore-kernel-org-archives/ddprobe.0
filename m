Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DA930BF70
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789957834; cv=none; b=a0V9ATyL54P+VLUtjjAaJLkZBFhuPOSvkJFPuqObozLa0pfCcaB58BjOzix5glBpohiXd6VmlW/geAJRxOxlI2RLgQv0zZHV5u0W8K0AjbajQWWxX9tYAeBE7DQuptkIyiIvQXefme4hPdDMy7IvBQqM4g5wqujEaVHAU9NboPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789957834; c=relaxed/simple;
	bh=aLD/lxuCtzz5yVHbx15j1LColXwHLh11vE5XofECcvw=;
	h=To:Subject:From:Message-Id:Date; b=mn2753xrwJw4kEtngeEjOHZi/ihYgzVz4mp3RN8eaYouBycRvWo+JPrUVsLvTsvLTQSxN5tBK6S2eCyFruBtzC2CPPdtstPJZEo6p0lUUCGTphncE3UiLPRseNbZqCprvPCpELZRSn1ZIfDcD1/Mite5T7DpiaZJ+vISSBEmezY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5sWtI3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5sWtI3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD50C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789957833;
	bh=aLD/lxuCtzz5yVHbx15j1LColXwHLh11vE5XofECcvw=;
	h=To:Subject:From:Date:From;
	b=D5sWtI3MffXUxfnzn1qUynUKlKe+FUTt3lKZqKasPICVSjDytc34yhcqJ24qUVnG6
	 oBnuyVzoGewBk5UvqHDWnAEvBG3JUtp0ofPaGelF/XSB+8MHpJzZwHuhtQyOvc39Dk
	 UZlv4v9gH4qg8KOn8UsygPoNkd1zVnESxGh7I6e9avhyXWZcrSMxJm3kvW/eCCsVJD
	 FnCMNrBNqrZgZNt8ZsxO5ygoDRXv79pXiLThQKoHPXw1LVjugi9oVTbhuTtH35GzRc
	 FWzyiXMSP5a481GwEQCGTw2hXY1gIwJcwrZT/FwGD3WvDMPvd7eba3idR1oPQmbz1d
	 LalRXZ4DqvBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD59CC982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995783370.30847.9873537437988936910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a9feb9713beb0b37aed05053d2e654321bb1d5d6c8c672aa5aad22526030b0
Date: Mon, 21 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789957833
