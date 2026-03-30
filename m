Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C59433AD
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774834494; cv=none; b=U7jJ2v8wAV/Pw5EnLFaa5ZieKJ/omLywL2m4KrSnThlYQSbB1FeJTEAwXZwSY3qG8kzsgpYqcKaMf1qSTXrSdBRf0p6wdo2umHP8/8EUO2xtHOBds3t+sYdMQQN+t9ekyDGxBwKLH8mQNNClIV8tmddvIkrSRUMIHZz3/TqHqGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774834494; c=relaxed/simple;
	bh=1aTRhsCB3kNp5c0jg39AMHURbOa0MCtsQiP0jye48oU=;
	h=To:Subject:From:Message-Id:Date; b=DZyUuEPvHYxqWT9/JrEdbabEKySd0+FPOTgUkzeJQVg4I2JAMBk1kzx0ncuLjRvIfPEBCsewynugTWI+F20gXugSXrHOa8MRTshfxCzg7u8NtwJJvHY2fx4rqoL7YmbZmYYSMdiVKgIs8Tu0Q7Dai7Drmx0FwsaRx4htWmTPNVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4ogzRNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4ogzRNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD49C116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774834493;
	bh=1aTRhsCB3kNp5c0jg39AMHURbOa0MCtsQiP0jye48oU=;
	h=To:Subject:From:Date:From;
	b=s4ogzRNFT5BaoogpoqozqgStSWlL25yqrg4BJNY849SN5aJb9WWjEiJSzcoC9vDSU
	 eNi6Xrja22VavjxRghmmTAg5G5S+3D9UpXZPcUA8XhTFKnr5K9KK+6IGxSG0Xsm7be
	 lXIG/huWhoHrbfASkcw3R6ZjhR5zgeylN/ym8R8g81uI6K1cecDKnxaFi6T/1lFgQV
	 lvENeziLOAOUA00LcjZn/rlyLQx8jsIeEQ/g1Ytuf1rld3u5ZFi8toGqdVS67Cr8k8
	 uGVgvVBvseLqzVe6v7/ipnR+yor6Yb+4QIVYLGUCUMRRMM1lDzNT3nNiZf+UBzv7Tq
	 PJQTRPQN+SNJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907EFFF4927
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483449358.29985.4786612138362149758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d503bde716e9f5018d1ac75ae23a72fdb40bc3d40a9bc8f4e5737e4335f153
Date: Mon, 30 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774834493
