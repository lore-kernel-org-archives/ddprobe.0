Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400D61A00CB
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727967954; cv=none; b=Myx0zFPMTMWGmLNxGMQ9ES6DoGwIEg5h5bi/UDB5LgeDXS2jA/n7AjtXnrY/4052/ILLZS3K/qbgUQGWTB9DC0miHnJs2ztYWXyG4XVtZuH7nwKMeHCPQeqTMJ8iE1bjP6IywrFk6pDV8rhc0Fz5is+2i5PqqGbEcaleguGVLXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727967954; c=relaxed/simple;
	bh=H062ZLNbpBXGRhlAx3nrIN2JgzR/qJNL/lNYuMz2pZg=;
	h=To:Subject:From:Message-Id:Date; b=KTl0nzRz7kaKxq59xlO0wmu7+6bDGdBGHFjBr8IFqxnXFwN41Kwzx9pZ4tD3NkcJdTFyh0MSNvEl/goI+nKOLAlzScr5LOlq3iw0cGB76vmRuZc/f3nrvb8L4kzaTtHZZp7NhjHB4tVlXriL7FIIrvOdowxtRctEB6iEhqml3mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTWxLi/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTWxLi/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0021C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727967953;
	bh=H062ZLNbpBXGRhlAx3nrIN2JgzR/qJNL/lNYuMz2pZg=;
	h=To:Subject:From:Date:From;
	b=DTWxLi/EIwGg9cq9QjVLeq++wEdvMPikJHFTJTi49RrIdxjYCr2rUP+8eo2LT347L
	 ltFvIsi5G+xD5nfG9ftQMGajV1tjg9yvhDzwE+Bj9UGUjqDJY/e0LJFfBVXD7QMgqh
	 cLm07hmeX4G8CU1UuzvrGvPrgmEDTduGb58wUNd5pQBWYQUT0QxCjsDmzuQMgDwtoM
	 2ZMLgiPoZgGonQGlhbE3xfmM4kuBBxjJzOWf7xYeIO4BwccKNkK9904gK+BTUtsvq3
	 e3y4bQQLJHEWO5ovhsWMUv180TpLWSEq63o/lZ6laudmgCZCrNasvZ+Izyi79aZMDV
	 1CjuaLqSP0QCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A430CCF34A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796795364.1615.9835247854789932752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc441cc2e918018e2f56b29aed97043f64767989d697f6f2c10a15c258f86d6f
Date: Thu, 03 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727967953
