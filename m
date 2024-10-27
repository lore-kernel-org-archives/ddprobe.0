Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35600161
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730019354; cv=none; b=hWRWZtq8v6Fw6GXHVT2j0QilFAUoEsl0zlkQI7EmWWSnBUHdhiCE97EQFReAeNPmKkHaQVfRpXnYVzHRlL3T+7UefEKm1Qo4Gfz6zfuxpXDTmFLGp9AixqnvekD6/Pe0wwLu7u/wCqHRH2wU86aO+6cLQ97R9v9soukqjW39tbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730019354; c=relaxed/simple;
	bh=6wX4huBRjEU6QYE0gahbgf5W3yzAxUjt4F+Pu54WXNQ=;
	h=To:Subject:From:Message-Id:Date; b=oNWi44iGiGw16IP+UakFG3Delha2sn9qGwZ6urooVtNrOJ/BTmntT9m+1gQntORU84HwiFjLvdRQDfPk8M7Z2RvQ5W4CntOMBX+D6eYZzqo/KGpRVj4i+7WnfqVPgURfR6og33txzYyQ26WMMILNG8icbJXVPVK7WGvIVgD56MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhVSc6a6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhVSc6a6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD28BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730019353;
	bh=6wX4huBRjEU6QYE0gahbgf5W3yzAxUjt4F+Pu54WXNQ=;
	h=To:Subject:From:Date:From;
	b=PhVSc6a6GDdUJltMgt7Xe6GV+yxHp4dZSg+1yRoaSnWp8QfpzPiIpJmVCb7OvGiAR
	 3EsifDemDXrIoIBGHXNbw/vH8Cv1yOsNXbYn1b4mJo2J/4AHFdSB0AZsZveiVy//XQ
	 Lb/PA6Aj3NVweqK/M6I+kbAG1CkGqqrGFTL+j2sVHDzxhhdImdNcjgl1/u36QgALtd
	 CbdsmDBtHhbI/Y/ml/ojPjziyp0JwHLRJnJUcsNgqTNFklNxRC1ctc2kBXhEPhVzmK
	 MgxmFSQi03pdRS0vE+/OHAedZ9YK/ttn1ZQQmYDjirz3uou6Z5sJ4BykOUE6oG+Fvu
	 CCdOxJKUNgXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DECD10C08
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173001935361.1501.9790196770378509591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ee36db2917820c6870f035a650f61c1502a6f3706c2b946b619198a2750b3f
Date: Sun, 27 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730019353
