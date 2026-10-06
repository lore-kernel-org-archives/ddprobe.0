Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F563A1A5D
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791326436; cv=none; b=q7bDri9VVFv24+9SOwmPPuuoo0/hxLL1z6dWF1bfqa7fMivjsNEoBcy1PD+SXunECJP3t9l2V0tgSS+/gWD73xh29WSvG4rglJhExFAhfMlAFhGzrIrn98/MN44aPM6dpYGKltFoaGpi/mufAWK4apU/qNpCBgXHZVlzALCN34g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791326436; c=relaxed/simple;
	bh=/GlbyT5XApWd6YBsTj7Kyw49HQDeyQX8BZ3jA5zYEH8=;
	h=To:Subject:From:Message-Id:Date; b=nWRVpMhoHJccQptCP77H0EqVjGWGNLZct5gwnbwqAcXjZeLTYvEGS2Pep4eAIX8JN78qQtdA5bfY5F/dgzOD76TI0qXZ7QJWDwI8LV1q320rmMMswegzRP442jWj8CbVvkRtbroWVafUEfAVJiqOqig4d0sgidj2VNhc9HVZiI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzgKB60v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzgKB60v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E23C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791326433;
	bh=/GlbyT5XApWd6YBsTj7Kyw49HQDeyQX8BZ3jA5zYEH8=;
	h=To:Subject:From:Date:From;
	b=TzgKB60v/8G2Z8Eb3QuJkQigbHeZ3kzHw1rtLvx4c2yGz1Uv6SlyQ4bQI9ofvS5ib
	 CCGWHEuu3P6gQlAVOHielRLTtKfm6BVOPB0lYt2awfKjnwdWOtS600yGMn3KmJFOeZ
	 AQxQ3D/iRG87aXCRiWOUBo3ml5auTfAO85RYqR28V/+YsNshArLP1HDb2kX9WAOJEB
	 CPJ8hflmvcggwJ7Az+zU34jrebNPDfjnlyfoHfZVYfqXvJ9d1NHudhvPEoRXK3yXXK
	 tcUIFT1/6b5rZiqE2CKhWwi6rLULM9mstyGJSZYEJmFoCNNMNv/qwDqTgu/H+Z0fxI
	 aJwPRlTtr4FxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4E6CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132643368.29128.14886996932332081825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f95fcfe2873026fc0d827503e2d85054eb1449cfa29595e59376f9c3d92e8a7
Date: Tue, 06 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791326433
