Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164313A63F2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787658634; cv=none; b=EAymk4ZoPXQzd2Kogrpd/hjZOXFREWJ7Z/JrhO6LlYVnHqJLq3CW6Icgn5y2ZLcCageC1bXCKeAjDCSPq/AG1b7+EprqM6g+sCYRR41PSnN9PfTFCWCtQjLkcVHhTeawowzuoEx4VZVRaomfcYSv2qRU+3JSTT97PH3d8X6t9wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787658634; c=relaxed/simple;
	bh=tNjGEbbdIE0hJSpdC/6AOzCsoDq/docrPEQw5Sz3ZtU=;
	h=To:Subject:From:Message-Id:Date; b=r/k6/txcHG1/+U5jHvB/+6c1TNf2CRC2BnD+9XDuC4Vkx7XqcrzzPmABm/j/gnN1uezVAjAd2YVKCyRAVPr61eaT1zL2ylmBKVcbC3sXYdxLQrS5dyost+jDGK2Xw7HMrLimDPBa7CoCDSgekdKjH6DcYinzD9zMK/eyljbVKIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9p0gPmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9p0gPmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF089C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787658633;
	bh=tNjGEbbdIE0hJSpdC/6AOzCsoDq/docrPEQw5Sz3ZtU=;
	h=To:Subject:From:Date:From;
	b=T9p0gPmiDxDzOBxJvdEwJ0ZPl+NrzT/Gq+K3VyE/zeoFGZkxOJyeqQP9CvKc6oqNp
	 MbYFBTdtbLwc/pu4k/ssjtfFWvzf8o0qqK3NdWElAvA3plAuMDQ2Sd5ZufI84eZCEV
	 Irj3BGs7vqzEH9KVNPeaC3a6afdrk6y2MOizlwSmE36WVLi9kG6xrlNzpjt0QWTYlK
	 oHtapjRsOgnQ/9bFbIpgELqYyCYcfOZgZUrL7ABt3A8407N3DECg1+8o4OtVTFZMPX
	 DZhfLxvnAwrw5M82bUw1FGfxjodgoUtj0RTvYbv1/uDcuvUAGtjn6r7W0zaacVgA8b
	 GEeSXDi5tlA+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7EAC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765863368.13006.2901050065276467272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438a750ab6541c5433b472d6ee040b5f8e7c0f19ad5bb6585530fc5c1a0b5a19
Date: Tue, 25 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787658633
