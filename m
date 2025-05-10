Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF6C19049B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746849595; cv=none; b=ph2HcH7ajCfXlCRZipKncjj8HSTLyxIHpxDXS44LpWnnqM4CJxXE3tN1ZrPaz7GxqIfzILXeEcykWFss8PLlyIUdWtjfRX8JEmHK2qQy0oKp244MH5mDYNRZQ7pkKgV2oUfrco/SItzz1X0h4+UXIX+n8vcOwBcseF3VAIkCgSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746849595; c=relaxed/simple;
	bh=9OHgbGhKe1UbZtAAHCQQausHL61IR/c9HDjO5UVNopk=;
	h=To:Subject:From:Message-Id:Date; b=CHWSrJAUIDaSslk5wruGvMvU48symz3O8mAYKh8+0H80ycbtE+CTqz98OsKoiZIQNLuuqxr3RPUbLfB/29w0KeRJ/kcAwXS8jN1uLRbKBmL6HLpGwBISU4OtpWQkr98aw1SE3d/qfLyWf5fsfz93Wbk6Z+Sv+ewsuAjChHIw/PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLFW7i/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLFW7i/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F67C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746849593;
	bh=9OHgbGhKe1UbZtAAHCQQausHL61IR/c9HDjO5UVNopk=;
	h=To:Subject:From:Date:From;
	b=vLFW7i/XM2sDyfhGp6eVs/7itUqOatb2kcas3xH0QuZq61BBizAuCDwyNH20/sCok
	 VMZnLfeTnBHYl8IQl1Nc3a2+E/Q/hdUpplzHTnZqXRfT5YtQXWmjMxJmRTXq2culmF
	 SGQfvxD76yizWD/qqslXZTxtHK+O59qGmYy+fS6VlgoVra2c2xj12xnPH3bCxWex14
	 a0R1dxbLsBAJsSgr/uSvznQZNFCV2gysMounN40FalHi+cgjLoLk+nJxM4pF8BS0qE
	 uCDVxe7egsAQC5JS7LIBPDbfhcxL8t7agKzvQJpm7Yet7nbV0526fFtPnNEnaWcOvM
	 FhZGDga9DeV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F68C3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684959358.1316.8870765044007933168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f416f0ed2e09144bcf2f1191d8d2b74e03a8a5e0190a626bc03a7416895ca3c
Date: Sat, 10 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746849593
