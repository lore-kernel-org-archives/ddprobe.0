Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF5842070
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721126723; cv=none; b=Ub5EqGHzBwGee0kDXf/N60uKvihYJobx8maNTgs13s7XbZdk0gaNnWb2Ws5ivQKg4N9vLIP/NuGq2O4Kb82DQbHFyNpsca/F01sZnERJR2sC6EOmphj6f9+DKCMT6/tvKcwGs5mGd/RAP+eikWV0yGGmh6UvGuTg/6t+ahveqcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721126723; c=relaxed/simple;
	bh=WwnRv2s/7iw7I2cydhA/JnC69KJK9CAQOSc5yIPbWkA=;
	h=To:Subject:From:Message-Id:Date; b=Q4bTFX6mKwDep3tMcJJB/h0VtAQI+f+A3Zv3eO1cV8SqlJ/fIUEM24oeX9fmfkZWlRAXJQfymZeHKUgmdnSvPDlAy6gRlV8VR+2/wo4tD4FpBpi1AvpSkUJTpsrrE/JfZDeiCApGaoQZ8ZiqnB9anuRx80Qd4JweXCPUI4Yjonw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5CU0iJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5CU0iJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF639C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721126722;
	bh=WwnRv2s/7iw7I2cydhA/JnC69KJK9CAQOSc5yIPbWkA=;
	h=To:Subject:From:Date:From;
	b=D5CU0iJm5INpZWzvgp+JvkWsKtw6Vu1Q8tkFVD//gCtqsa43t6yrelyswXM7fZQqt
	 Dhw9KFS8kUX3yCiCq1Qvj4EN74w83KT0JLUH+VqgmFvDYvueGVXHM+FVsASDtIe/uM
	 qk3exsx385AbpaGDKbf976rH2zCcXflsLIhI/ueNyJb7Efr2StYtXpuXamgvnalZ6h
	 0iks+HYHU67eCcQ+0yNlwmVIG2eoEW+JJA4lrGDFErK8vs3a4mHZHUROt4LW2ogKXX
	 dGGojmu78EMmjJapPkEhPwAtW5toizKN+wDU9RKEIrbJWN8AOTvgi+VoGIOR9gqXtE
	 iZuSKdp0knuIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF44EC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 10:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112672277.16407.12835266004811506185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba6a1354f6ada021d07f7da32c697c826baf1b0ca5625b4919d61b979ed8551
Date: Tue, 16 Jul 2024 10:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721126722
