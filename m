Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3F33B1B3
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767395634; cv=none; b=KD5juNrVoxys8qQRI+5J/6IEM1uOH6StWr9mISEI8YIL7mPiXvVanrnhe/Auc/Rsq0XIxON6q5Zix0ywj5gM3/IcdTiUaX9p9rkIEjT+Zk4zMLa68Z2N/ivLaC8X8j8Yuh9ik1Jf2oVwOY3V6wEva3l6Ph1HgCdzR1DKMA8ZGOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767395634; c=relaxed/simple;
	bh=flPbR/MWPIzKeW+tKYw579YrpdoHlQroHKFtBujziQA=;
	h=To:Subject:From:Message-Id:Date; b=qWhyYLEQi6lNnX5nC1oOwT2v7i9ohjsEJaQEJJd9Xyt6fHSqDj+MAwfpsW8KnjQJARYc+haCiQa838Tkf+G5iWaJC3iRsRlZYtBnnRAAvlKubeXFWZWIUrw2nkg7vvbvfMUXHiUzAqLGBhkaL5pBmTSYoBV+XBcylhp/AGeO7zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgAuMxRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgAuMxRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A172FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767395633;
	bh=flPbR/MWPIzKeW+tKYw579YrpdoHlQroHKFtBujziQA=;
	h=To:Subject:From:Date:From;
	b=OgAuMxRUSH1dyynQ/J61inIzB/SDH1rIiU62bLqVujJLf0eHi/srinMxtUNFilnle
	 DvWPIkFZpPlW+4IsVopq5hpLXqtYGU5AE5t44TJjiNla7owmJ58/E4NV+CwOJp0MvL
	 njQeWzr/kB65/3CkwdFasyhBYw1ZNjk8Hi7ZXWE8m9wO9bJRk4BtxIXgK9a0i2M4Qj
	 /XtZArwrmrX2KwvYgrSZbuNQS8i1yV+Ai7rWydY77JygIHjj+lTumET1WxS8ke8xwU
	 gbu0BvVeyWSsKhh1eIh1qUY+CH0Re5lcUSgLs96fi1qNf9GXRer2MZiGX/AAVcvenw
	 i8rnG/qGpGcMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D1FC6165
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739563357.19618.16646338827361227790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc0cd17e4f92e17d7c97b6ffb8d83dca59fe56496c0cc65b504be16985310f7
Date: Fri, 02 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767395633
