Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF3B18FC97
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777603054; cv=none; b=T+rQ7udSOXq4OSkkdR6ndTPyk3WCKVFDl1+6p/bRhREHcmBQnJqZQck0J7gG5zy5+kqcVft6PJ9vUGtBVvkdFqwBy+hozObkAKwp21M7YTh0oj5GkV+33y5mCVAhZfsOQ8cusU36KH27h57HOvngMWbVhjTQyDS1D1KIGTmM260=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777603054; c=relaxed/simple;
	bh=D/v4qDZQ3DdQOJP7DnXCPNAewQmxuBSLF9lBP+iNI48=;
	h=To:Subject:From:Message-Id:Date; b=hCP53d7Caaq4RzNzFfdEZKUohd8J+Z5IhEuicHT/+4ttVUwoBPMKvKgc/tSD7UniZpoz+1x5Bx+oavIJB46zvViakK4xDcgjauUYd0m5dR/+ESZTmJ/+q9W814QdPyScZUhmqC+o1b654QBqj82kRKBwBj5M8luxVbPQNKJjICs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAWH5alL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAWH5alL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AF2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777603053;
	bh=D/v4qDZQ3DdQOJP7DnXCPNAewQmxuBSLF9lBP+iNI48=;
	h=To:Subject:From:Date:From;
	b=mAWH5alLV5cHrNIJs6fs0o71gKu63mEYc3yoXjH1a5vb5ZIrVjj2BE0OxQbaaVhuS
	 nOzRGKR92G5qhTj74Rwhp9w4nmy/ysTsDEgmC2bdvNCsIomhFQ77C/3/V0vN+erog3
	 nlfD2PdeficZnQgHeDNeUpC1UrUCW5HYXw8ngeazVxJmegzVVBNlT0uOBn7bfwnrno
	 lib7GyJ4tDWKLslcL6BN+d9WXbWrYbqOeqws1qOx2LxCxGEqbi6YaKBjKY9lVFmAHL
	 wxtva60y7lRUEfDBIuC4hVcm1Ohm5KdV0xTSkRKS/lBqYU1JasPsYXBrrAOoWOKjfC
	 iOPg5MnB1KRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B063ACD13DE
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760305368.26149.8866598051065702378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d79309ba6a05ab05f7980a61adb42f2ad38059b5af2e9065ba9dcccade2dc8
Date: Fri, 01 May 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777603053
