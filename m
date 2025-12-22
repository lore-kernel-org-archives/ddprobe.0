Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBA4219E8
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766362434; cv=none; b=eF/xaxOG3LuWA5jtib48bNy9GbSyWXzLRPnm/gSG3E5zwQ75FnrzyQcxz9JG4faP8wB8V7nM6BboZPvibySd/7g+7E4xe2FeXuMEzAL135qparJGn+SPSjasJcTVWSEvejaoLGwLMloL0FvavynY+k0gsCY6OcFkZMN4TTTR2mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766362434; c=relaxed/simple;
	bh=iAnLZPrGM+Gu6pxT3ag43gU2QoY3jqpRB2V1kS+WX6s=;
	h=To:Subject:From:Message-Id:Date; b=D1loiolbpS4l++Xq/tL7tWoQo+2qc0R3wUIKbOZ6sp3aQ3JcQHR+97qxxyk1pwYQ5tD95mRTRclWRL0VBtcDMXE6isJyORYP9FTNDZen68AMndDzgQP9tER97xrQRuvASQOTzOFZ5LZDz3WPR5dEC/9QazTMWEPHDSzwaW/E2CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0UFUeH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0UFUeH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5671C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766362433;
	bh=iAnLZPrGM+Gu6pxT3ag43gU2QoY3jqpRB2V1kS+WX6s=;
	h=To:Subject:From:Date:From;
	b=b0UFUeH4x6hRwVkQ8/eiruM5KRwjwNvu/pUThNpa7OPuHy3GmOmSs/MmwZOjME2FH
	 qV1pDzx9qBVd2PX09T8n/Mb4pdOdKJp6sMVgk27AoNtxJjAm0QTZvZdEccaddacZMt
	 mzQTwwB2nkwd3ksAiBWAV77DdWmhSkBMUWhawRR1i7V6Rz2KMbjPl7b7qlToU141JL
	 xQxOn7eHmPJXy0fgreJU0mGzCGJdm5zG3S/XnOe7TJOcCcxmLz/Bc8K49Ah35CiQDh
	 eN2Yhnoyz6MolN4BYEI1fHrPBnHZ1mbgHjQJSCG3HPPZcbfCL//eQp4AI0u6wnye4Y
	 5d8DGDzw4itTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92163D68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636243357.23805.5476326617278135116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d16c7f653219c190cb3f33c0dae3b8b14c1d18c8075e3e464dba3f9abfacc179
Date: Mon, 22 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766362433
