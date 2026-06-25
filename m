Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532B43E073E
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782389854; cv=none; b=TGDDbsV1yBKMc1PKtEyGqRAPNfAVltK3iPDQbITW8YSEGXwtCnCSDR+4aGYVNbsCZBCNLrfnIzKZZKplZuc+RcOScwd4YJDClIAeHeK+fJbeNfpXv7o0/QG8dUoYaTte2VK/PjUXAgJbkz9Q2TMcEhdg3bWRQNzxkg2kvyFNNkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782389854; c=relaxed/simple;
	bh=vZ8yAwHG5dHJMjj4P3B28pdSDHQPR/2Y3jeM+YswpuQ=;
	h=To:Subject:From:Message-Id:Date; b=Dz9vKVl0jU/WxHRdIl9bxBoc5L7038lIAKEwXCgPGhCyJSPpuBun+CRlXovzsh1ur2MfRkxMyLJ9D7N55ZaN+7pIK+MLNBt71QHnOOJJVc2+remmPH/LoZKg0xb0GiWDJ7l1tXBF9pesik3YHgH22SEDSOIu+O5rRFbsYQSiTMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kh3aK7hP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kh3aK7hP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2AD9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782389854;
	bh=vZ8yAwHG5dHJMjj4P3B28pdSDHQPR/2Y3jeM+YswpuQ=;
	h=To:Subject:From:Date:From;
	b=kh3aK7hPgpvtMBSuw8aAJ5I4K7A+UNERf0NkeJAyKRncdCtf/djwhb6E7kTNWnxJh
	 EYvLhWPskQUQH9YAFI1V7MOpyXV80leOrQfI8lZjiAl5kuMQi8oXEnSV6cUzZ1Lbu9
	 6+dqLhZSTyVxm9pD/T4Jb1MvL4ck+VDjJ4q2qNaDa4CO5fe5zWHkRIlQc+vCaGIMrP
	 Ck7siH3n7XMMq0sajEQhPZZdmq+x1Q2kv5r+7MZvlLPIyJsNzU6NoHlB42a4FRY2Mq
	 WnkbQBR3nmsX3vQEwSHQEvnPHrzTa5RVhEQnk141WxNETA734op72CK0nUMIRJUZ2n
	 KfxxIE4J/h9cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C433ACDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238985379.5604.11300677547384538093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e110dd9a9419f51edd261009bc33fb9a8866bbe7a71c93b8fd1d7f2254a5763
Date: Thu, 25 Jun 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782389853
