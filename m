Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375D119007D
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755477594; cv=none; b=IaDqCZO/PcFXX3oGSEardrD/DcG1e7mx01zLdrQXv6TG2wm8R00d55x95E642GUK85deiGBS9XX5+DTPRx8DlXHu84OXyLOi2HxQ12PbqQUNg6DlT+2uIo8IyRQYiJdhhWB53vio5KnN8Jsud7/Sr3kIYsWVOkz59XNUtqd7xDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755477594; c=relaxed/simple;
	bh=Oa/DBHz1q0XIz9ezb6dATJ0I66huVZj6rLtVd10FV7Y=;
	h=To:Subject:From:Message-Id:Date; b=Cp3fxdrqx83zgdijYcnQRiFCnk8t1PQljHhCP8PNq4GB9s3AiJGexmJKBtNzkzurnFzeV1s5ir9JuspubMICaU/fcNKtA+612bnpEVj7gdCqSfmqQT6FegB44p9GNgE24A1qGqIz2XYX/O46NItW2W7yr8p7t69tgi9K7pEEz9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsj0vOpi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsj0vOpi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53C0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755477593;
	bh=Oa/DBHz1q0XIz9ezb6dATJ0I66huVZj6rLtVd10FV7Y=;
	h=To:Subject:From:Date:From;
	b=bsj0vOpi2EjIh7VZQQQQHT610+FiBOIa6dL9vDZ8bZT6RaqS5rUR3MycMA5iPid5K
	 cJcXZyFpQN+w/jwmmPNrcJksfKrvD4t12Yc7m8IVJzXBc0h0zDVf0UqaGzWb03XbsX
	 CpVUJ9yTQRsbvX5WLVq8pupSqjRWRx8CBDJTeCPaO8whkZrH9v5G9kutQYURUPkQI8
	 V6wXg9TtLaYmlXwvBoBWgD1vAZyuOFk7LnMLdJBlEJZCptvS0uuHvwXX3qhg1ATAJl
	 t5V1r0ZHJF7wfROXnZOvpYTqNYdfmsUmUJrzKlQMrB+d6H20osHlLSAjiklxKTT6sN
	 dlLtheNQ4ECGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A08CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547759357.11129.3335861026165221063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514139111333462c54bb3a87f0138c8cd806d0a2a312ef1c2852b3216b5c369a
Date: Mon, 18 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755477593
