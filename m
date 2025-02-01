Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D246153838
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738407354; cv=none; b=egy7zBinsJVoqIuSJaHOyK43gwpSKD6EGZeBy68KFK+1diOKW+kZCvcQ5J10pql0kp7WdLwvZAO2JVLX7MBKIBWzbBS47R81/T3zUpUikQmhdMQ2LYe3SK1HmyuBE5RaQBNVm3rTKxmGtWz4u6K+YLxX8+cBKEJVDWL5CwRSIYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738407354; c=relaxed/simple;
	bh=vEFsXfdsM2wLy9sTEJEKEwLTsKw0dvWa9Yc0zTNXFT4=;
	h=To:Subject:From:Message-Id:Date; b=gNMh/fwsprXIRqPFasFnOHvxOIcRWXyqaD2BOdSYdKwfB4knKJTmI2nlIERtlqfLHrVv3p2H0Tl/IsDjh5SgzP27fadnsYw/qiVeseNjhIajFf3TpNyNmb31cl/c/qSwpc3WNq9Ul0w7kq4oKEfY2lhGAmg39mE3QQQB6MUnJiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8rKbk0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8rKbk0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1277C4CEE1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738407353;
	bh=vEFsXfdsM2wLy9sTEJEKEwLTsKw0dvWa9Yc0zTNXFT4=;
	h=To:Subject:From:Date:From;
	b=l8rKbk0E7S1ra5VfeA3+4/pv043sOtlBTE9NBXUlBFK0AuKaXLXHGzqZ55//5QJMC
	 D0jhMnmnfuOwy5vyOE0tqzNFv59uJ7Q55GBPaQ4AzbtkyznJ+p35mC02vSHBFt6kUO
	 ChM1bcAT4cCPgKibeNAah68mEr1pOv6ElQCUPHvAIDnUNNFjUPZkbp6YIDd5tyJKRV
	 nfLwSllqYQLNZStyu/BqB298oop7pz/JAlhYTAAfmLvTf/MiHbYgCX0pF0ZRJ5k9eP
	 ifYCew1kWKbGkWwMYQI2gOs2CEW0PnuAe6KzcYOFd3zqWXwT+Q1yL1w2Oi5i8eVvVK
	 x0ZqDRP5ClmWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B86CC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840735362.30384.12617461994797328165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c649808be3dd36dbaa9d9f2620c501d925fba7d9be30402a4b0732fe08e6d72d
Date: Sat, 01 Feb 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738407353
