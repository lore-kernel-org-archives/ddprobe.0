Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF0C23BF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721045663; cv=none; b=tB+x6OfJlNV0xAYtL2sbMyLwepzuxXtHc88ZRb7IF7knAq5e2+biwBTa6zswuU0+JPDfEj8k/vGwk+Me7HDvmzdyL3OT3FxR0r9X/f4kX+KIjcFa6aH8c30MHQhf/82u7OHLTGSpXYWAwgtaxjEBakyEyYYDJo84DFnKFybsCzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721045663; c=relaxed/simple;
	bh=Pq666ExINtohBcOBQzFAwjo80yJqy6GOVF0f6NIlkR4=;
	h=To:Subject:From:Message-Id:Date; b=OL3tSliA1wLdVdtXZ2qnGNPsA6YM8jj5zyWfDE0X45si0Pqx3EVuxKKijVN4GiDYJS1zQaxc7Ng9Zaijila0ZxVX0UWO2tCDf8vHDgYHQTpZuGaLv8U5C16oErx84Z3Jhf3bOL4jbiZGqImukhzpA3jOTn87TTJSiiO60jVnVuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8DsSv4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8DsSv4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE8EC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721045662;
	bh=Pq666ExINtohBcOBQzFAwjo80yJqy6GOVF0f6NIlkR4=;
	h=To:Subject:From:Date:From;
	b=M8DsSv4ubeuEjeD1GzbEV+zx6IJx8gCzVEV+82eWSzmtRdD4eh48KrX7whWnD/Dgl
	 w7xsZRXzl+oO9HVC4oVzpVo1I4dns7xdD72euqtfcYq6lNTIMUJjo5vQ4HoGe5/vA1
	 7DJL3J0IpDnOO4WeqAoTpXpb0ErHFvo+R7bN92kZ4HqaOVkSY1ZgKfz8Htizc0YFcK
	 E1dh/SnisRL/af7ka7oxuNnRlMDWZSqvbN/nyNr72vp3bpRywKd+JS73f2ESrS9m/3
	 +/MzZWT/i2XO7Hly8C5S8fd51Jr3VrJheif9yev36Ng72F0UHP9zXQSKxMtSMWo8dU
	 5f1lJVvJi0JUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACDEC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 12:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104566275.2427.17255881597831535399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb24bdcc38156082652f312c3ad16378869b870893e48984e0945c4e2302fb3
Date: Mon, 15 Jul 2024 12:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721045662
