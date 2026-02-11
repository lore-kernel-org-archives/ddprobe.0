Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CA21FF1AE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770852894; cv=none; b=O3JxRyZEZzIItbafA0UaiU8yZrsC1nCewhnVqPxjO+WIOwIpbNoePWQvOwcv1DR7Z29G4FNhxwp5HnIJQjBR6u669aEUKAMBCgvNPz7SS1mR4SYMQU8kc2JZQHJ23rbcHen+KL2L2F00hkigUwhJkh0p52HLaedrVUDqzSetMvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770852894; c=relaxed/simple;
	bh=hyFg1VCUdza7g4eQS8qj1YWyCYmvFopZbcdp2f/v+iA=;
	h=To:Subject:From:Message-Id:Date; b=bJNflDYDXaDm7IIaSPMMHqGa2qEv0lV3/0SpsGoJYXoricxXMXgouH/Toz/cfwjfl3tS+/yoLsh67CfWirWcDcecDin1vgmB5EYxNgUYNKKEo7EG/0p0iFaTg7Iwa44Ekg6BYeAO6a7AFsOVy/AJNdkw/o8h+MCN5TrBnHS+iVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEGYQrrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEGYQrrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7791C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770852893;
	bh=hyFg1VCUdza7g4eQS8qj1YWyCYmvFopZbcdp2f/v+iA=;
	h=To:Subject:From:Date:From;
	b=nEGYQrrWWNDuvyGXcgcayVS32MTe9r98YFXYKHy8SzztkuFcfZR42Z3pGq9O+gBVy
	 r/ocbek8BqpRLBQcqYl+GN7N6M18QqaU1Ym0LOiRofSnGFvguiDF5KyEjQ+bXsjuS6
	 SKx/wDAmW2+NooEDdh3bJuJKddKXtPKknKoV2tYB7lWG3LlfasG25QawXdv0zGOhjn
	 kG961q3+itmPn1U8gcEeW0xBXrKVIVKpumRaIsxox93faAfai5b8E7PH5KmwxFV38U
	 WmwPnG5nZl3MmevKsAJqpHGJyyHwZ7q3T6T4JN19u3hYSq+GZfoVK5GDtptaBSxfHE
	 Kyt2Z7bmqh6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA5ECD6F7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085289359.1788.8439611309468357650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd8d0ce1dd07876357fafb2d5300d9f4082f523eef7230e4548014ef9388aa8
Date: Wed, 11 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770852893
