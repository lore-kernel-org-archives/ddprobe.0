Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6C8355F50
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773856493; cv=none; b=GoJ6pJS3wW8pOXXAUj/oTgpPOSKtQ8CujXwtUQ9GGpGqCeTzoSxCCnn3B4E1vQ7908yEgEOx0nT/IS2Yf63D7T7O7uhCOsaW4cHRk227Mb/S8FAZa3s/hD05JZwNpvBjvdLijIoFHbbkGvv7zhJY+oRjjk0hWEULjM4z2d3rF6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773856493; c=relaxed/simple;
	bh=7OJ2xx8roVm+ZzNmqTtbPKpWExorahrI1aTREF05PHo=;
	h=To:Subject:From:Message-Id:Date; b=cabi+qqhYLrsOvHtpdbwoIunfEpr3/Q4k99kUEplH9l9VJ8H8YJzjfV23hQOdJvdxH/N5yDD9dAsflq0LcF9qxj1xIiHVQ7peADATXEwupoWm9aMymUYDAf3RPb0EkjW354iPuwvXmpqVFiaijpgd5hw2/6vShstkY8RvYGUlvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePUEnC+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePUEnC+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C6AC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773856493;
	bh=7OJ2xx8roVm+ZzNmqTtbPKpWExorahrI1aTREF05PHo=;
	h=To:Subject:From:Date:From;
	b=ePUEnC+FOQ/xgbrRPEapqhrhXoZvL0vU1GTag6mfMp0qgqxKxHIuIBtP8mD9ZsyyE
	 x5jI0c60g4BFyEJl+S9ZdmFBBOg3m5v1BG+3QTdge+WIB4tcdh3L2prSIVSTy3knUQ
	 1+1jb0d6LHv5TWRMOY5WOuJGTcZDDXfkDrYeCOsss2BjQEiB3KWyl4AW026IQKNdF6
	 2DrqGY62aO+Wc6Xy4/2PUJcPScfFjRTJkbnTYMcNyGqJn0mFdJzRwqxnBPje23RGfv
	 RJMTaMYn1WB+4ZCqTE5f1m6oOyZgj7XAsV/VeEHd1ogv+ugn9g3zs0b+M/WHxiW1DF
	 7OKRUOwJWv5sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9038F10775FC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385649358.6389.8163403133990790114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a07a59874b4eb94719d2e7ff83dfeaa2dc04ae91be916545c82957332ad681
Date: Wed, 18 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773856493
