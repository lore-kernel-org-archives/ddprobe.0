Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B2632AAD6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768629834; cv=none; b=JP97wKD3vgkUWCmPt9QBMGF+IxgrlLUtp1QlNrpUg6fctSsZ9YUFOfniGtqrPrNUB90F0NuWFYS/MI/8lYOw9U6K5AOTVnWj4kWljgnGekYnKxRiXh1rSfiQH0jMIYYYKr5TrGk12gCFV45/qI3DDjZcqpNp7az2IHNt5dyEIp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768629834; c=relaxed/simple;
	bh=73OKFZGbSFADBZuTlqRMWVgO37KL31DqLFp1ZovSVOU=;
	h=To:Subject:From:Message-Id:Date; b=P9YcbwMyBs5i7Q2nLgrofV4gxbO1ELNT0Won43g7rXCsjW5dZPbVl4LQdR6BkcW0SDRgTAS0iQ8WhfFKQvChOkjJT0qBJ/4XtxHYLVBP4GhkkBYa2vMZhQ6+G8dv45dXqjVRzpnRjpnl+z4nplztZ+gMr6AZjxzAGb2tAUPjK+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqgqR40m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqgqR40m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3973C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768629833;
	bh=73OKFZGbSFADBZuTlqRMWVgO37KL31DqLFp1ZovSVOU=;
	h=To:Subject:From:Date:From;
	b=MqgqR40m5ueFfPkHZKO37gPC+5GenUu4x+JxB1yEUE20hvmmwO2+WS/uG+yfzEr/n
	 4qulb25n085GUaWZv22od11klul80BaLHZ0SJUdoDpgxNpyLPiegtDnozc19rv7hNm
	 pVdKpVZCxkc+8GETt5FsIRHFo/AihvqIDyytLDeGCqIcyi8uY0rMnmaJe6tqYDcFMz
	 W2cgOjzgcnId3gJDahauUHZsT2tP6xQuE2+NPZwGNHUZ4j2LhrwjTq0XQO1yvKulNu
	 IC8xFm1nXIIsOjMCLoqnEkO+86PTxOabGwz7ifZYfYX333r6VXIHGvNAH1KrQledpZ
	 nxRRWVs2o0rJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9316DC98311
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862983359.19848.1181197871086604192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558f3086c79134c8b6357ba2d09ae3d8ad0d92c49901fec7863335889488fce0
Date: Sat, 17 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768629833
