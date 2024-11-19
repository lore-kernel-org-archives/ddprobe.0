Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDD013E8AE
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732011354; cv=none; b=PqBj0EgC8i0V3m9zg89gouQIqpXh0m3Rplw2BngskYQizktTdcyDCw3uf8Uie12m5o70Xiv60CxoOCEIrGs9or5qY+bOg9omeOjYTY1B3dlNy9WiWy0M7N5A/mASK/niY7YVBV/bzWBSISl9Rri2KIdOw2JzLrBv0ZnvHJl6lW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732011354; c=relaxed/simple;
	bh=kFsES8dE66FMZgIF1/TD7l1wryYkxqDGg8eCjOZYUCA=;
	h=To:Subject:From:Message-Id:Date; b=pv3+rzfqKbtwhby0zx7LvbVh9WPOnXNZ+hcn7SqiYWaO2nWwYw7DliejZzzYtw1WMf/AUzfVhlYNYwoQXemfzunDmr8ZVxIGqikWVtqM3cUZCVnp/AsvaRb5NEvAmgERI1Q5tm2MwBnTcALvIr1jAWcoCVs52Tq1TG/TgYnxwww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMIR0fAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMIR0fAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E3C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732011353;
	bh=kFsES8dE66FMZgIF1/TD7l1wryYkxqDGg8eCjOZYUCA=;
	h=To:Subject:From:Date:From;
	b=SMIR0fALzRV7X8HPQJIfyDdzGhLTWkxBGQTTLcldFDGvvj3v0gEPUfGobVqQ08fhD
	 H635bUn2EJh95VrhiZatHQBKdCRyfgQrD3V9OAFgJ2zAtkv7ttxuQlw14UsfybTx9P
	 0h90OVVuv7yUsPKSlbFXNiNcp/X0hUQF0jvz2MV8lfQomqWiaBbCJIKt4bKjMem18P
	 aaZMcJR1eXrdoX1kqtNCPQzcCSkPJrECxD2tawtpTbhRFSGfj1SmqdgvYqeSl4+70o
	 ZjS7PstDdrgO/rxPedRVJi5wBa0tz7Rb0oDuOvo2X5Cp+HTgc9Kny117IhDem+mTxz
	 X8lEHGeBKBGaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93402D62060
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173201135359.10986.13922213447581062446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e927ea49dbac020182a02bce195206adf38ccf47d1846a6b12063e192aeb097
Date: Tue, 19 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732011353
