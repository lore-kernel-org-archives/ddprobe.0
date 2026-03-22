Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A1C2F3C3D
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774167894; cv=none; b=CbI2jmBmvyYacP43zbfUL/VCwdn7cx4BoeLvC2EA+sz7icS8/wkmmUMAO1tCRLeqK57JUNsvdowRLWFTKoSoAlrz09BwstxeYAObNQdCZAuNXvVh3/sdq3Ef9hMp5iXM/OAlfjGqSnJE/1z7tGnJvjYV5DTIb85KUlJEsMZChrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774167894; c=relaxed/simple;
	bh=rhX5b+3rX81hDzSDJsVz6eCrvEfxOKN3+M9ZDQ7GOxc=;
	h=To:Subject:From:Message-Id:Date; b=OHT06SOlC/xN/G5seQm1mfqaUBXWMOs8XM+2n1OK32OS+2tJGV0X9XQHWw/P9NMJyH9McuRqGST+TlzDrv5Cbk92w9haTkEqmkZmAzaqiBSb0ZXHaT2T1fbPwfNv39Cttcv5BERoYDFRrPelUiwMaasZafvgodL23gzT0IC7Df8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kl09m85y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kl09m85y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D17AC2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774167893;
	bh=rhX5b+3rX81hDzSDJsVz6eCrvEfxOKN3+M9ZDQ7GOxc=;
	h=To:Subject:From:Date:From;
	b=kl09m85yHYBsha9n3QMkdv6YlHorjTIpy7QB68w9qNG8g0BD7lUZ93rcZVUKcLRBY
	 gA/6edMSVjh1AHOgMjCU97pcytn1gaE3AlSuPeqgO6KjPTeECKl9gzxVSbGKcP99Nj
	 IBG0wBuvZRZ9X12w4mXyLVV/3HhV+JK1yGjhFUXwvMAiYFc6+Xa0dh++bAaBWSSvQq
	 diGMqrsC1kLOex1jaA1oHDSadH6jzqMcA3qN67Ws6x50uEa9U+S963FDF4d1imtsvB
	 8o2riGcCDL5TMiatNag3KEl9oPtJ/87Q9WRyRF1MxYr93QmRIx/bALRN4O9osfTQuq
	 jH5ULwDl/bXtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB01FC72AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416789358.24048.3478474133061915126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a30637adfa930d3ca82a9c3228ef42b0dd9fc4bcc3fdf5449636fa9adb58cc3
Date: Sun, 22 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774167893
