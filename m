Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E20191F98
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763791914; cv=none; b=nOrICtbNcMktoXOOiqUHJj7xJaPM6flEV+43i/phlRE9ISHSxkLtlPnmnKVF/nVu9uPwgS3NMXLHgpLOxOEOGj9KCO4vYvNvLYO7o/qYKdTxqLv7Wyz323YTQMhp8EBCyW4JRzYcB9EUrTab17QaamcerdLhjQr8Qq05FmGyIN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763791914; c=relaxed/simple;
	bh=QeT0qP0jl8qit/UykFEM4a1u7xhQRRhaP6KpS5tgGec=;
	h=To:Subject:From:Message-Id:Date; b=LP4prChMEf4tsC7EuPD1wBTTyS7XIINg2ZTCMNGzFA6hFzGT8hna4U0hspm6bxhz1a9YSxg1a0k3IJyc22GSCS333pS4zcuHqRQ5i+gz15UHEm7xXsgRDe/R9lseTezSGrnvnAG1P9fKSk0G3r8TvbGcTVpi0nNsCy9KmD0dAvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKYK+pXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKYK+pXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56A7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763791913;
	bh=QeT0qP0jl8qit/UykFEM4a1u7xhQRRhaP6KpS5tgGec=;
	h=To:Subject:From:Date:From;
	b=hKYK+pXT+cKy0nph/bLKBQLtxnijBPKIFbCgfX1IHfYKodvDesW74/5C2wfouXBTw
	 rtlLGpKc+PKLbKq/e2guXKms1u2FiCHWbkzX4Tsuox7DyXq9P92prHUqDDN4qBVCdm
	 Qw8VOUk3TqEja0eap+foQxoNyjQB5msilMiuTt+otGlkSfzI+F9tvBTQO4TFDq64Sq
	 JsK/MFj7RU2MdfHhrjJaurQx3LAhFYzR3WkIMeGT+Hy6faeI1WhGvmA4wABEUlU07a
	 /fyLtIOoLoPr6EOrM86W8l+57vrUHcSbGcPwjz6c2mSfxxBZkk5OEJezfH/FBGER8L
	 KUghSE8pUIB1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9263BCFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379191358.32640.8424298406746427159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c32be95024a0f8f92af7f22e36f64d3430997c56af8844057434b102efbbdc1
Date: Sat, 22 Nov 2025 06:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763791913
