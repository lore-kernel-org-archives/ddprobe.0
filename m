Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2082E301704
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771365294; cv=none; b=ed6Fe/nhxs1jMIsHaza07colweHL+9h703DwhdozDy39Xzv0RYVVvbI2v1oLUzsESGvM/Ow98yv3jpWch+a+KT+pJA8+BG5+3Sj8g7lWC/H6pnSs/5MNOWAf+0c6e79KqNU53skwhQW7ew3j2KcDecWrsMrzXbeFifK0ol8wXaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771365294; c=relaxed/simple;
	bh=t+6fxl3aMWV9EsEuOHxFlZIRVxFV7KuVIQRtVNy/olo=;
	h=To:Subject:From:Message-Id:Date; b=iPiaHm+7tcMhay9Smwl2QHbNoaeIBpINQdAXLI9qn7PvjMEK8VtyGZ6smBzyDklga9+Kbu+Ns+l/Nu0sJz61f3uNL7yI94VHQ9Zs5hD5IIU8+TrCFypM/+/VtORr4ZOgCAF6lqjeTrBN6OHUMJKPlcqjhhvkrjpcVZVLAkYZHDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2fNYL8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2fNYL8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE72EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771365293;
	bh=t+6fxl3aMWV9EsEuOHxFlZIRVxFV7KuVIQRtVNy/olo=;
	h=To:Subject:From:Date:From;
	b=d2fNYL8t0ZmRweLFFaUusUPEhUIYgpR6vyeYe8RFf6/HCXMS6HDbG3xiZQt8L4AUK
	 rGT+Obn0HMsM/fEYJ9eFp9Gvhgv7RqDVnOBGQ+kqkiyaFqnT4VgU9j12RO2W+/lg85
	 IVzIIr8GKQ5zeolg0Hbg1i+RgBd4HCNZXT88mdDn77hJG3HK48kAKBQqj5au+29AWk
	 0R0h8WeA2SqimtrVFweHSf/NeR4yNyOKFRwr3+Qj1ygIKxqqYDebw3GU4D5r4zhw2c
	 dUjyDXuv8U4pV/8e4iT1omsP0YmqYdhx7oFFofNfn/l4UpIsTQxUAi7sfr8yZ7V9O5
	 EtsPZeBe901+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A6FE9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136529361.30228.13503976357569461727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a27a3b79d0cb51239e95ac1ebe996d2f2a185d5635fb78c78cebee1f6638b8
Date: Tue, 17 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771365293
