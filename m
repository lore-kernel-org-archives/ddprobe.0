Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A473318143
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763364714; cv=none; b=lyu4r9vYegCsuKwqfmUK1kCpqKf50XJAZ5ybGIMnnCJ1xb8y5bD4roOY5tZ6Fw44uoTUv7gjWxZlDXE3hhk5TfJys8addtrB5wXl7fxWTBDYYKXPL0WPbgQ42KJmfX8ZaJvToMbmWK+KJ4M/uoASeVDjPXf9i59HXPAvfQaGUVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763364714; c=relaxed/simple;
	bh=bcrGm+HR/jlLXtAwkt8VTVIP58AzpzDiyYdvvhujZUg=;
	h=To:Subject:From:Message-Id:Date; b=HsNxVp54w0/x0BiOMiXzHyotP049lnDbGq1VFXueYSE6tvL3GfSy5A4X590Fomf7mI7XzZgBpBL2dd+2ZCm+4d5VfrzdA1aUeKXO+Qx6FKgchF2K2yigYP1E0ZRUvl0mV2f0c3vqiyXRGmRqWV8Hi5StrSeDIDS39Uh/KK2loSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsuyaqSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsuyaqSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C0BC19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763364713;
	bh=bcrGm+HR/jlLXtAwkt8VTVIP58AzpzDiyYdvvhujZUg=;
	h=To:Subject:From:Date:From;
	b=LsuyaqSOIXUfazJ389e3fCQfKw0pdEPT5gmgNclKkug/+QLxnxiMhomhVfCquOtOt
	 obUR1u8CqWKTRTiwN9IYBhETT3ozG4Y2byuvxKB6yqtk0JgOa42uXff2IKwdhvqdyJ
	 q6XcrHz4qvrq8q1H41zarkHiu9UumitwW8sXgCeC8giNiw2FFaf4rLA3YzMOk6uEt7
	 5/2vbQbWZZUpfPKvFcXEIGO03QsyDyUECjSg6JotJ5aJ/NY04KV6JPtXqpjeG6ious
	 eQaToZ3/QKEX0Qw1QBxeF7pm7F94r8J3GdX1Ec0RT4MlVLlEoys0Nw/WqfpJzotJiE
	 vIfmUrk6zZuOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9197FCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 07:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336471358.18604.9656990675168403935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f8fbabba4eeaf502b98e2c0839c4ba0c57d208562ca9e8db28864198e992ce
Date: Mon, 17 Nov 2025 07:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763364713
