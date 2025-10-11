Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C0C249E5
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760198394; cv=none; b=HnxQ5xHtd7TD7xGQ3TmO/Rp+dIjUZHkBhuZpspJ/zoCegdAJV9LzEqgRFTFr7OHXDhJvv8jJL7CPH9wHqDnnToUQ7o5UFiqtG1w3ugU+WQR4KB6ZeAtewEbH+eTFR5EV3+uzpu1wI7cF834WVfLGkGNHcWVd88v0KdQtyoV2CZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760198394; c=relaxed/simple;
	bh=ferBqJB3X/+sDMdrtdv5YA6tkpSRkN5Km3y/etUnJuk=;
	h=To:Subject:From:Message-Id:Date; b=Y2Ya+TNOJvpeBthwvJDtoCOjmdXdXBnBHGH/20XEzEHt/Rah6HbNdVbjL6L8itb7+2paa0A5sc6oafuUpzOASTUS8LH9qkmJYXJ49pFypMXIPRti1YG7T3gZg6V3ahh44MZ7RTMIkX7jdF20dOcE9YnYozFMyJ8WTWCNPlxbo9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXDViR7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXDViR7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B351C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760198393;
	bh=ferBqJB3X/+sDMdrtdv5YA6tkpSRkN5Km3y/etUnJuk=;
	h=To:Subject:From:Date:From;
	b=LXDViR7AWtcUtqDe48mMWB3koFGBQ8nrVzU1QtmeSRS95vbHZO6qCs0heX5NybcoX
	 ca5x8/tXPAByL1qydQydR26ANQubE+iXnCN0n37NhBKeVI455lRDGF7QsLSTMqrJQg
	 e/dxeTBLxBbGOdMjOeL00PFhzJ6Z1PuBNQyEiV7aQkDPFq3LjpPrfXD0xWD/cleWKH
	 Oc3JhjJqEflrQqQprLVRTcfTZuHs3pL9rh0RBdr5ZLErUgLLc0M5C9Q1tpgq+9lJ4N
	 nunuvEhx8lFDi9/2zkzrcWytISLDGqRqDhlwzpB0paIiLp9VR9SI76A/4yUgJ2urtB
	 FEIUhkzEcfcAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDB7CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019839357.14783.10457757290484144135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340f0de6088fdfa59730ba2105eb3ec9f5e9f4909e94e9405457fa6d75250353
Date: Sat, 11 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760198393
