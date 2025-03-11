Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200AE2620F1
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741714134; cv=none; b=uZPfxpHibOSMuIQLbVJ6uy440i1QT+/8s3/IXNySkVlHziiglOtXHc5V4KtKFC/ivsJ2a37AnuMzkQZfXVMRKMprWkgX0QVJrDc1OlpOxaUteYa4amtZGJl5TjCZViOFou6mfmq/rbEdUrEws3IaFBaOCjF14G951Nrtpc4PPGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741714134; c=relaxed/simple;
	bh=2zgp25XIXovnNy0trDRC8ZTdqJzFRVrLdZuTXz7kqik=;
	h=To:Subject:From:Message-Id:Date; b=lz5O1eEkJgglVOOlgmqGEi47o6jA6Bn0hA5QGjlhuqHxsyk4DSPidYlk/XvqIz9mDSJ7QFePmxGj4l0Ni0DQef7y+KF00J5f5mfE5IcIbJ5uSnYU928foGrV2MUw92f9XL9jTZ11sOACmNtyktSFsA0NdDfbyZIzHGvKOBVunWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pw/rZBTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pw/rZBTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A507EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741714133;
	bh=2zgp25XIXovnNy0trDRC8ZTdqJzFRVrLdZuTXz7kqik=;
	h=To:Subject:From:Date:From;
	b=Pw/rZBTxRgLJCAQLIpr8VpOBn40MFTFSbQ257Dc7siUJI7L3ynyPI82wMzfwiOxc4
	 pNdvHrWTXhEpkBn4DT7ScjhnkufDx33eKUFEK2Sgz3UUkZZC5l6HdhJ3e3TsEbUdWc
	 CVmj2rSP7C6UQQ355YcAS/KHtc6G+dEBLke+OPEZnIkAI5/keI+2paUBOpIpaiAS4i
	 ss4mndE7hg8Z1yqIA2Oits0FAYFo75jFIrSHq9KfVdiEf7qchAZKIBqPzOz6Bes6Vn
	 alvvO/oUW9Qui9BcjePNsKlTis9x/5kUxYUO7bqYX27+EfDo3kW+0R5ceya9EK7iUg
	 Hy0wOHIhbwxyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B10C28B2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174171413359.23429.10239726546571486612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20416a927c12e81604d0d80323b8314c5b7b018141f3bc0061fc992c73afb40
Date: Tue, 11 Mar 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741714133
