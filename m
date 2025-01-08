Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EC11F0E2E
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736325954; cv=none; b=XFtP6+1hAN8J5SZ7Fwu/ivFZXDi3YdKa4s98NZKXgmk/2M2xoEgzaKootxjyXUq4ZM3XibxnKXflhnaaj06Ekq23U99IvLPlVxyT4aUu8dlwbXqhQJ6POu4eRmO3hvGT958Xed3UbFbX/Sr9qgJ3F4DewCmKVvOVaCeZIQaAWzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736325954; c=relaxed/simple;
	bh=OSLIzYMmfpizltvivmmkKhiVft4R130QlGw8gFowHpk=;
	h=To:Subject:From:Message-Id:Date; b=Tdvrke040ZzbVfQkUKzyb6+qelzp70OuztECjwIEAcgdo55Vq5y5M0Rs0LL7LPQTNSDe1Mz8E4uTyjGfKmXGrMkjQBSF89vmK5SH3Du7dO5eVCdPLHdBGjZiBnKVo0a2c0ZKly8AQE3ur1XEGPU4oifv+Y2fVjUG0RACLNzrRI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tt4M/Qa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tt4M/Qa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A992FC4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736325953;
	bh=OSLIzYMmfpizltvivmmkKhiVft4R130QlGw8gFowHpk=;
	h=To:Subject:From:Date:From;
	b=tt4M/Qa/G3e0qDppmv8sO+UNs6AFTnbCzQe+ydvS3XxXtUStZLZsIFj2KFon8TZGn
	 y5dklpHXDlvU1a5o4XrYMh2Efs0J7u4pPEYEvCGcvj/Oo6CRR4BC2GJqSY7i10Yqz6
	 F3D+qbP8LWUFe3y2L5BP8WejDR1ypnLhf5ot8mnFM6pPRDlkImzIuz46+Pqf8VpwXB
	 uWc/YIF0rHAzxWRvESXZ7LDnLuIMBjRhZeJXRYrB+DDzAOfMNMqVOYUhtGHbK/vzGu
	 qUdlSjlkCYQDawDvdYVvqvI/OmAQkNZWRQgcR/pt1czfpvY6cMUoAKzfH0jR9LciwQ
	 3njgy04h/JCgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998F1E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632595360.8201.6552285715266277047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a16c4504b343e8b7739dedd81ae6bc855360722c149539546d259ccb00a384
Date: Wed, 08 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736325953
