Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197F917D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763273454; cv=none; b=lAS9+iJ/BJataotByGkZy7rjO3Z4gpz89z9zL8qjj6PC/P0b6Ey7eB1LSG8uaLdTh3XQU98axSEYkQY9Px2yNp7WXNVa/IH4P8W/36z2wBXwwJIXPBzLukczXKO5H5ceRF+o/abDwQel+MjepmoUfLVBKgWDQ7fRw7bkUTiL670=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763273454; c=relaxed/simple;
	bh=pc4NvmyPoNnnI97jNJ2jBALVjIz2aFDRqOUdWqtdL6I=;
	h=To:Subject:From:Message-Id:Date; b=BPK6jOOCQEkG1mJvg7yN5i43m9fV6XoBET+TzUUHJQcrj7ez+RfbReClCtt1URfrvtcL4UWTSSvRngLTZHWvz8y7/JcBRLrZxcs6J+8uX4rJc0eGVWMoMnXUqtFAgG7uHi4Nkluc5n6Ta3GMHBXMaIGDplX0lDRvoJuOHIohDJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baU7OX6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baU7OX6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D09C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763273453;
	bh=pc4NvmyPoNnnI97jNJ2jBALVjIz2aFDRqOUdWqtdL6I=;
	h=To:Subject:From:Date:From;
	b=baU7OX6+6JyTApuWzuBfJsdAjXqIJnJcvEXg38zeS/4oepVL/PBUEOfjPYWGHG9UW
	 gkCPJv0VHX9FvIYRvIcav1YIJXYgRGFE/oP8mn2Up+NSZJXZNBJl4s5Yf9Rx72Rwd7
	 UhhNIwTvZw3KOXpTuYbM8/YaSnWzAAigqew+aazNC5ARCjpDTRTiuTYrBHJ1nkk+9p
	 cCqpnAtNUTko25KdRPTDsTsDBbFJmiyIeHxkkuLdM5kID3fqfyEtj0jq6AXDuyGtEK
	 BBZPxzI+QKo4IABoDft2cU00nFsrI2bkTaHChjK6RtP3BWG++HwrYX+HTIBu252kVc
	 Su0jw4bKZs51A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994E5CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327345359.4523.5059676697572200306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a1e82566ea40aa782a9e2182b902657ecbfa0f7450483b13916ee176676d5e
Date: Sun, 16 Nov 2025 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763273453
