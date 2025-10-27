Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF33B2D542A
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761591594; cv=none; b=snc+HK1Aw6zTYx4Y/4+47l1xE3ZayIVh70qM35HZb9Qxu3g4XYkFU1kDDPTYc7GMhxM5lBEH1uH0mMwAQQr6VNAY8B2DbUNMg4sqGr73MGQ4i1WTRc8ZVki6gY0lDdHDMKN2iEcrZVoVB5S3z/COrm4KeeuUSwbQwqh5XI4U9Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761591594; c=relaxed/simple;
	bh=p86Yk4nBl2Mg0BgpNDY/bv4sLCpixzwrLZpFwuaTGSU=;
	h=To:Subject:From:Message-Id:Date; b=U+qbkFSryG/vxBGDd+wpAL3gogSQhwJxYFNo4MWfpjaQrAK/pNOA4YmFdY/LFey73q6c48U5A8NZhVMSlmkWBfQdiMBXUurVn+jFSGVBiAfxy/QF7UUqWVZQduldIX/WAEQyjejz74cYULMISdkYSEIKIkr4Ih26n7QYo654xfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssZO3dL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssZO3dL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBD0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761591593;
	bh=p86Yk4nBl2Mg0BgpNDY/bv4sLCpixzwrLZpFwuaTGSU=;
	h=To:Subject:From:Date:From;
	b=ssZO3dL4vO4DTQprPNZaMXU1P2S3kflIcxGxpRcN+tSKEzxI5busVwSEP6gH5LhF3
	 Qc+u5UVdG7at2FlJ9SrBRGVbcwqkOkHoYCcllMM9lFBVK1rWWu2PSv4YcMHXoWYq5h
	 Uckad0WEMEpJbcO06ajEZNl54g0tdCCVtwFYasPeEzbV0VykIqwzUo0ws5d9eOAiGE
	 7P0vUv89kgsuswPrKbWB/ThEh15z5Aj+jf33pseauws4MkMwy+HbgjeZUERm0RJWCR
	 njl1LZ1hQM9uj1bjCNWZF1rZkYTHekWSV040I5cfUsrAHWcxJaKJLCQKtJG/g4p7L6
	 PtsT/h4Q21CBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901FBCCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159159358.22564.8109831510227309819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbe2c9448360b5c6db5e457ec5f81e1182c4a1cba046cb0a986a633afc7f28a
Date: Mon, 27 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761591593
