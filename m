Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BEC367
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757259594; cv=none; b=VLqoukszE2WGR8qHlCJJs5JrTWiYXV6to0JSig4mdiNT/27UZndqPeFIh5piQl6z1O5GzZy9yBazDEuvX64RdadTjN6aTulIiCF9aexdwPBidY8aXBiqpvH/eQE6YQSg2osWzaDHuoMyjYGPu5KrkaHikBrrsiUzPGpQotuhsxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757259594; c=relaxed/simple;
	bh=VGHN5ETPhnbhoW3F8+hW5e+KTBEHaCeAw6tsFZbGdNo=;
	h=To:Subject:From:Message-Id:Date; b=g9iV5oe8XRK5B7W2N0tgyIp99Ja4GjitWuu211GVA7KcDh9cYaCzBygmzFJrxf0EY7SPCBqE3CPhIIKMnTIFW1FYywZOY1yQshJniw7XztFylYm5K32nzootXUaTo2XAl108CVPXuIcEOEQ/assUhHlsweaYN+hGhV84JpGHrM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGpe3K2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGpe3K2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A11C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757259593;
	bh=VGHN5ETPhnbhoW3F8+hW5e+KTBEHaCeAw6tsFZbGdNo=;
	h=To:Subject:From:Date:From;
	b=dGpe3K2L8XsHwArY/s0Rf7J3bJuyzvzi9MmSg0nesjkzP0OlrrF23gaVLEonBrw15
	 Wz0AhAQXbjYFzJmkTDkRBH5Cm2jXA0ODNf+EhD6k6jTxHgT0ketwruN13Lcj3SMZd+
	 yfADwyjAL1kpWs6hyiCTTYy0qfpheQn89TNe4+93+8de31TSCmZyGWktO8IKEYvj6I
	 hVoITTFri783gYu+Z7L0ceLoU+uKRNmfXQIFOVYUjFGmtcRZqEK76zA+Ydjm3oNuSP
	 mHkfA5HnQPRBXeR/uWSL6hf9W7p2y4F3Qgib1j6pkHBHpCAYl1ty2kuLfmfp7rDf2s
	 KUWxoES779qeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93739CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725959359.24452.15147895381058039793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fa55207ceb9ca6f402b37bd87b01b2237e1a567f601efb75d03c462114d003
Date: Sun, 07 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757259593
