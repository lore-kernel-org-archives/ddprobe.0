Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207063081CC
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764683574; cv=none; b=r2eILP+7Z4i/gsFPjlD9B+RzlzwnR6EzgKDpAvgsYPDcuC5dDvZxu/ENKZVXw3Nu3jf8Vx3JG1DpOERTqTAPGiKsmk1556OrTG00du7qUBkmNkNpyfMKammDOnPssVtIB8V+er6UcLqMKITHucvHd9SFNHrdZV8T0SLz/LzAqOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764683574; c=relaxed/simple;
	bh=2crrhKWkzefJjht3p5oERaAOpWOdKdlfb4LaCMn9IUE=;
	h=To:Subject:From:Message-Id:Date; b=J1BmgCt5O67r1YzzMYKVRKU8QrF0lYYQgr8TCjIk175iuMrYta7wxbpreB3pqdd41/G+UlBVRZKmwd1fh+LV27KHfhJaUGcNxstLsvqw8xAGgwssh7zlU9L38xw5SZkjdruaTBFU1uvdH7yP6eTYNF5sTrjJaYueyL46hAfa2tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiFSbqEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiFSbqEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FBFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764683573;
	bh=2crrhKWkzefJjht3p5oERaAOpWOdKdlfb4LaCMn9IUE=;
	h=To:Subject:From:Date:From;
	b=LiFSbqEGayQlzeQTxu+aDL6KVazbBGT2m3mNNGtZH/Yxz4UXQ3tO2+cscExVSsKOC
	 7T8/HhBg6bXCVTyXhideMZI55mHfCeqK5fQiQFZAMMKLtT5Zjhdsa7roCKCFtBrLXb
	 3XkPugPq1W/Ky7gq52lpS0toHUbPAo0YHlq6uaa44bARiyCgFPQK3w0LZDbUTNTd1Z
	 XROu62shCsR0GGtwYT9WCtOyXavtZh+hGyQfTBRDHHuM79rQW5/YVMWaCy/VUzHDm1
	 LTOtNDyEVnbruGKk/KIalVOKvVJ9qgXHYLmfNgKK74j73f/trD+xnaxxqdhPEMZNgu
	 LCHacPn5hMr4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9512DD116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468357359.8825.14053827179333620696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914d08731372f85ddbf66214e310ed51721404f7bcb9ea765f84f611a26b084f
Date: Tue, 02 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764683573
