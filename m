Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0318F35A2B7
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757079594; cv=none; b=aW/joyLSKCVpcTVBd8SVXcNno5+99r5+/IaH8MoKOECdTbQxT5/Y6RJjmZ4NSrtFu9w3Vnxbwi+OA2fGyLnfUoau1TBI7e16wfPAwVN7fP1WXv0uu4VDKDfnqdS4fKW6nhgadNGJoWj0BPN+dPu8eSDPpDKV0I+KK08dXF2el5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757079594; c=relaxed/simple;
	bh=SackCDOEgYbD4shDdQBT8AGblxSh/+/9IXZyBkchoD8=;
	h=To:Subject:From:Message-Id:Date; b=ovLH3HCagEaQyrD5Qm1j1KAuzZ837KKxfuEb0fnWtX/d8pVgu1/qBXyJZIknHu4QJXiKMOKZ1gmzuhkfMShto30QKEBbBBCRl2vbJeILiqv6xKOWS7cvvXXjVIoWO1kXfoqpZhFNeSUn2wWJOR54tCswmcU09DPQ/Yq4d9CvtUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3Wvrv7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3Wvrv7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A151CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757079593;
	bh=SackCDOEgYbD4shDdQBT8AGblxSh/+/9IXZyBkchoD8=;
	h=To:Subject:From:Date:From;
	b=P3Wvrv7WtPUp/bTVvXe83IDIZjPJ2nbzsdvNLomZhoWA/osp4R0/6GVqkFSmoiVur
	 ZZ3fdsUcZlFD217+jCw3rFrOhf4tDhW96M6WkvhDNkerLa3KXwmSKHmt3PXGlM+4rl
	 MZHTjTPKQunIzf9Kpi6Vfw6zlk48it+E1JbWBjLVLDyI8DLsrZ4UT9L5Qr4fdvkKQe
	 ZnVm6/JLCYVIE7lMWKEn1LIZIBLgdNDSa8B41sZw9mqO0/DwLzPjwlThmzxafSHI5J
	 Uv5L6ImYWqNoOeOpDcwodjUtSv+OKijk3AIepkhXyDzq0e13qRwIR+qj1C+HvDsjYb
	 Iq4J3dnG8vCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9502ACA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707959359.992.6212784809233222442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f9b59848259c878b66d7915fd8a1742fafd1fb0019259e9c30eb1c1556c225
Date: Fri, 05 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757079593
