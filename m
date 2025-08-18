Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330231990C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755555595; cv=none; b=ZZaP/KG6ImlfhCG6yqJik/uvHsL7+51kKHo6S+w2rLfMYkbuvhR2Guj264xQpxruBGxBjSt7Q+UAf4k8+lD+5rTdI0X0U7xmnP4+PsRTq9R5MIGjkfDGC28IB2NWI7m91PJA3T3J26IN0XTpmaiWT7ZTTq5sLQbHgTQmbNdhpc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755555595; c=relaxed/simple;
	bh=QYbIZ95FJRCCVy900igNqkc2Wv6UkW3RMRvvWXhqVSY=;
	h=To:Subject:From:Message-Id:Date; b=UoR9zfDkjTCL+w8zCcSUMvSTwdBGIBth0SeYp7lAqgHqP4eyVg3ONx/iF/aUFcZF7kiiCGmqb9qD7JJVxWFngRjbNDSsR/WzWyXS+qnX3OkSLrLl1wkPJ79+WbRduujRbNywSIn0gj8pVQBPiRSPWy2OaXa72yqXGIrcbSX7SfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJup6RN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJup6RN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755555593;
	bh=QYbIZ95FJRCCVy900igNqkc2Wv6UkW3RMRvvWXhqVSY=;
	h=To:Subject:From:Date:From;
	b=KJup6RN09tCQQDH3aFtSAQ2O9+VMVXCKU8DqZcMBKu1Bn2/RvZth0mIUoUie0zx40
	 rurW4oXamG+OA44dvjlaO/JNP1DSdNgmyUxTAd4OlS9qEDgp4IFhl2JUPkXJez7ZvW
	 4Jmx1az215rTc33ZYjqdYyh54Sqy1XCfDocwy491cE6Ybw4vfGTLmusFwGV/JH7tDZ
	 bNTHBuIulylTbqJv6DZkVVLCpuzgc5SQYTFLbWmuuSI6/KyCrQEuXC0w1L+WZwYP+b
	 gQhuFvGSXW9xpd712EI6XFsZP+wyhwMxOO3DpdbzquQlosBChhppwhwI1MoQmNf3l9
	 mQd/HosVfqKVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95566CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555559358.29559.5108696041207782873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52d30ace0e8fbfb76438d4db936166bb1e7caea934fa3581a69c267bb68895a
Date: Mon, 18 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755555593
