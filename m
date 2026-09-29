Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458932EC0B0
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790655034; cv=none; b=D1332srT+Rsx+cYxVZI2tVIuOi4rCjxRaoE+3f+Tl/4BK3sMWjeJKQCCVNPhUP6X5p9RIGn9OV6SjIEhIdHWYPHe5MzC55evbtA7NFxOexQOBb6LwRs8210Ix8p6EJAqmq2jX+L1NEryz0tl4ajH0qxOeVnuhyHY3kjZuiKFfC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790655034; c=relaxed/simple;
	bh=kFcoredC9gSKRRzQhKhdmEvjcMBQWZlVaCeKiWpJhHQ=;
	h=To:Subject:From:Message-Id:Date; b=kAIXR6bfmPtfZWcTeZbOE3PJPhv8AOtUW0arQ5NCjYgt2CWmQKS+1JtGXTJcxlq3Nkdn4ayl0kVyThS+l4bMnqiupSAGhWT9ovcQ71OCIw0kSAtm9xZzLyvfYEFN7KV+VCzTP2hZ27GzcdVNMOEXsfuqGuaQX7V5gSILTwkF9jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Otq6Dt/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Otq6Dt/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6958C4AF13
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790655033;
	bh=kFcoredC9gSKRRzQhKhdmEvjcMBQWZlVaCeKiWpJhHQ=;
	h=To:Subject:From:Date:From;
	b=Otq6Dt/ThgqexQ5QEkNCjeZx0NskbFnYZy3HAMStpIPZMLsWjEmKIubsqjysjs1es
	 cOrvTg5ToF3OLpfJ3z0U0aMsr9rKD8Cc+dCDWkgBCqN4F4os7vA+BDaatPWMH+CegL
	 UXG9ML8cqpN9VlzmGmqkVvs96qTHdV6xZmCu52cYNeyp2bLdQeJ8r49ARCmbr2QFuu
	 VbroRyT3IybWFSMvdZBz8Y5+MvOsbdQJwB4km/AWFDX8L8xwyh2Jkgs7TAW9/7sp/p
	 Ckf58CT+VbF0mF0OluIu1uR7WtIlxD/VEq85yTeOVD9/YwJq/o9ZFh8G7YAFsgyb24
	 TBZKLoK3d8C1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1786CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065503371.17820.16094492175461698272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08e6d9ab94f270a3ec527ec5d59de9498b550f6a34a56044a4195567fdefc83
Date: Tue, 29 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790655033
