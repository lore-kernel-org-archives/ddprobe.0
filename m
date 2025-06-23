Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE29148827
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750677594; cv=none; b=Qff8EQWGNaxEmAp2OBz4bpMAHba4JmeA6IeK+vAdB8ZdtZdVe64dPIw4519mAaqSdY8br2KP7hnuOWGgpHLJf8iBspO30FknBvbhGg3YmK3866Sbw6iWQZqW5eyeAUgrA2KeaeGrwMX+beWGMhYvvgXrDW8BcevtV3AIQt0TIrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750677594; c=relaxed/simple;
	bh=htbDxrRwHXRss5CPOw60T16YNFVxgfLbKE/5iJb0Yg0=;
	h=To:Subject:From:Message-Id:Date; b=r+LUcQdFJkvjlYAV/VaU4m1vcOOvSg5BRbcUoPkHCoPVrP0GJDxgwXUBWpjTC6O/fHL30BxsRyf6FKQo5DiW2vBhymi77DJeRpvGPcGHyGTmEpWlhh42PouiFkRnur/aZbCaa/YSxF1jKTbtVoeCFdHqImNMZ5XAdAkcvFMSUxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1EE2/iy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1EE2/iy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06E8C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750677593;
	bh=htbDxrRwHXRss5CPOw60T16YNFVxgfLbKE/5iJb0Yg0=;
	h=To:Subject:From:Date:From;
	b=b1EE2/iyNuwpypHV7FrcQZ6N1A0E/6cjHkekyhzTWsAvtw0rMif90QPCRuobrRBsC
	 l0HW6dkzfwnnFofC43v1CNs5sM6DsRgk8PEkcv2QN/qbALde82CWnQuDDGAUaIp/dW
	 ux6X4hxHLNdBd7oAEdsFKSjnWIRyal/6BcFtT5QmqwSW07226DVlerXJMluKMjqKt7
	 tWj3Ju3yLV6bN8kotCiSa3hovOZgb2PwKDtDyQemJVKtksyQy/Dz9EajmVkVcgW1yy
	 fa8IlAebnvrWjQ4f/s3pJN2pm/VatngM07YOVDi6VDLRaHa+/NhtDwuNUbto2pfI3X
	 UyvFixVt2g4LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91778C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067759357.11192.11142115646147936884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00fb416955a367d2ae30426d5e96c20f887069730cd0d14eeeeb15a414eca9f4
Date: Mon, 23 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750677593
