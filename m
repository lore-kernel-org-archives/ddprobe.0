Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351C85661
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751239794; cv=none; b=YcPDj7HFrKJ8s2zZtlbLZaj/QXNXVpTCWgXWjI+NzQ94RU3AbhAiMdVlxETCtb2deBPgC/jnnoxJ4i84+L8P8CfGEHjgX3kVKto6zUdKuPnS34ZtVywMErYJzp1ClTII2/EaTruZFMk+jwsI6A8733Yx6S+3igcSgNaLZT9H8Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751239794; c=relaxed/simple;
	bh=UrDkLvWBHN2cETMdEAwcX/7gTSxh1V3AkWIpBXY0BAE=;
	h=To:Subject:From:Message-Id:Date; b=EHL4nQ2Lc31x3JOmhtm5VXgB2WbNtWQ07oJPDJ3QsYFFumF/LgRY2G03lBpWSteDkwDZDPVBMxZ3IjYZAQbfJZ7xuI8l6SAVstBxkG8AvmPtSDn9/KfmZXPSEN7PruSYmmtIapCMTV3qbdf7I5uCkHM5Tpbk2u3o2+aJAf9rQQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHmynlzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHmynlzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A577BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751239793;
	bh=UrDkLvWBHN2cETMdEAwcX/7gTSxh1V3AkWIpBXY0BAE=;
	h=To:Subject:From:Date:From;
	b=fHmynlzv80+AOrFc1X4GcmY5rUxFT/1bV/hxVUkrGSqKfatioeNcXw/im2VPpa+tE
	 9RW26iNQpDcvLmdaQNBtfXVs/ikPLISAp/yFuRRmIEPNTcs9EzN1EqBRbEvMZSu8Ur
	 FUBUfdyE8kvkj6bNe0JIshlrYWUqTIeAnfj4QB7OQ0XAQ6blc2BZvBcZ/4jf4+Gdck
	 0G9X6EpVnmG5HPoFIzHW/aAnml8VJ5WQeu2i/mc8IVDMLURg40jZ8gPiBSFfkWxOSF
	 wjodl+Ih5QcPzTXEIaBSA899KBkh9b1zwNOUdKgMcKa61xSuj+BvEwRXCtT3HgD5T2
	 nRAVkUgalWT4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92349C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123979357.21003.10489317525399293868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42521042e77b19266a71f3297900b1dbf6d9a117f7f3074495630121dc9407c9
Date: Sun, 29 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751239793
