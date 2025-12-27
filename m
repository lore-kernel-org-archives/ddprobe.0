Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410161397
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766863434; cv=none; b=ak6su7oeZ+/d/FmcLFy6PKhJc9I+VUgCAdXgWHRfWeDlQVIYVMtYDN1TzXl7XFcEN1pLQftrun/PmWsBNmZEjyKME94/unnCMqJacySPGxwK7D5JlE5Z6NgS0KNSy/zkV2JCPprs/nle7O7kRjbjAqZaNw307/kCKOe7yqLbstw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766863434; c=relaxed/simple;
	bh=NAr+0bo5TTMdAYZ3NHNktdXw6XOQW3fkmwCTctCzDM0=;
	h=To:Subject:From:Message-Id:Date; b=AMz8l37P5tElL6r35c4NKujEG03bfGNtNR0PuowAkg15HcoVgbEvupPk+wg4Fd17DJlBZ74u8oLv4G0CzcK6cjVK1bf/rasuqpQCtA2zUAL1vz1AqZpqL2LK6boN03mrZ08VVPGKDLICJTTVoTI27oBVvRUWbZBb/kzHGDrk1tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r053dwg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r053dwg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BCAC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766863433;
	bh=NAr+0bo5TTMdAYZ3NHNktdXw6XOQW3fkmwCTctCzDM0=;
	h=To:Subject:From:Date:From;
	b=r053dwg3315w4safziyCGqJa7s/oNBVV6M00u7DsPJ8v9E7saOeKwqupoLjJmXeey
	 ivEjNnhUc54dnhoV/jy9seJoPJzKkCahjS79xCC0ZmpEbTxGUWlyOXnOChPtmPvhp6
	 S2/zNLhTKYSaTLsLxn61nVXk+BFIpSkMGNAn5/RoRJfOVXYBXW6e8/v6goKQu9lh2c
	 sjtUtatl0RXJ6KqvCnBmKNEVyZ3YBp1ktpEbcoH8bFklkyyxxvOCud+p+/1HTxbrlX
	 H3RBRu7HRQ8XD8wE3Ijg4oZxXVMsGvNSWVU7vGsOD3IZ26tG3PsQTu7w72NCK/ouKo
	 etV9oxWUhrkEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0136E92710
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686343360.22827.7488842663225605489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52833e0eb25616f983dbc905c683b3d3957202996f09e9758d1d6ea3afd9b5bb
Date: Sat, 27 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766863433
