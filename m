Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6FA3234
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743431394; cv=none; b=REzxPtVnoR0nSXgi4aDL6EC6nxb0qrLkNejdKd18nfdM9hGsj4r7GC/FzJJd+2pmdK5W0VNx9zrohgUfViyks4nYXy5J/zMAuD1VfJ27gE0vxoENjLoWqFutxrem2D7LT5ZNgm25iQDsoBLOAA6MvzT9cJOlR7edhi0TVJCjfhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743431394; c=relaxed/simple;
	bh=4lMfJ1thfLovM6PzTq9Go+ncsrf5pNsEG/WRiF+Z07U=;
	h=To:Subject:From:Message-Id:Date; b=o4nC0zBebo4RM2HBQyxVJ/nmFtCr7HbX+HtGkboQbLTxtdgdc4xwH0IBMeyJCwaOC5yE3B83O9KS7G6uW6EM7kSI8XTu6mWES98cajfTZ+NGDIN2El4H5OGT2gx9LuicQ7uUm6gox0JffSHemAV+ytr9R2YhVD1spIIugQ3flVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfXFykhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfXFykhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EE4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743431393;
	bh=4lMfJ1thfLovM6PzTq9Go+ncsrf5pNsEG/WRiF+Z07U=;
	h=To:Subject:From:Date:From;
	b=UfXFykhdMt6Mnoiko6ecnv+ihcQwn+7iP/WdhESi2VDY3cpJWa4sOdy4iCt33onub
	 7zkM7Prx4xx3KTW71NrePcOw/Q/nszapveVwSUOOzK15vh0PcpulM8Awy3k6U3z4In
	 xpAXk/Bj00mM7l5udeqhRKE6kADQnIWln7VOua4c5+tQ8UfLnznDEHou0A9ADAkitD
	 WIyZV5m1lDc2BlzVLIr5ZexmPWxH8TKPw3gKeafVeF+588tVpjoExfL7A2+UmpWR9N
	 /7pYuyNlqArBo+wUBuwCIKjzUo3kEvcyS4BmGFBaV7GdGjaSBV/HY8xeX2GVvR+wOd
	 DD8qjpJX2sBkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5B8C36010
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343139363.9237.16317050465846732496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7986592b8c67955e9e72596faa8aba39c4106220ee66b1ffa747885aaf0ae88
Date: Mon, 31 Mar 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743431393
