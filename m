Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDB32E0917
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751987394; cv=none; b=JztEe91HQe5HzQ8EyWxpAGMytMTJgO66zZdKUbZL0BKjdg9We+3/4l2Q0y9m160rMUFWBtu8AteSG6ptznkiNqgmy5bvWKZjVEzzxBzbV02VxAgBqrw55kRdhP9phm6CiyeGbhwg35mySZhR46VGpLDm1ycY1K3VnMDvmoZbQ60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751987394; c=relaxed/simple;
	bh=mMD32A9TsTCMtsf06xwnJJiED0bY4lvDLIxy96i5xKQ=;
	h=To:Subject:From:Message-Id:Date; b=dNmCsjJg/mmdyW6Y8FKDljx3uxJOAZqO8vqOFkc8fQvKwpYO87Dxa1HtdlnqIXr28JCY/6pdSF3H9Mrz8eYhf64A6PldX+L0UtPwk1/qRKIwgCLw2AogoCa6/0Pp8qeG2QHReoKgN2H8lpN7g+FL3x3wio42h3vVG5N+EIH0/aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXv6Ledm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXv6Ledm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2E6C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751987393;
	bh=mMD32A9TsTCMtsf06xwnJJiED0bY4lvDLIxy96i5xKQ=;
	h=To:Subject:From:Date:From;
	b=SXv6LedmvKuUoepPCVu7jNcvwadKuzaS0w363DepH7axj8UDl1hR5QUMT9VdTTUG9
	 3QyjhMqzL5zdG0e/t7VXJHkV3jx1FcilemHYaeWSzjlA2CrDCEc/kJO3zKc4Ok7UWe
	 c/sJ9rbhUu1El6lpS+HAk1oKNbnAbx+XZUNV7htlRJVEfbafdiRvFjoxn6NvKp2wlL
	 vaM+h4NUu8Pb61iAhD+vNAighpgl+aGnU2a+bM4BslV2MdYefZxnV/e9/F5glDkoxY
	 dIwDkUK0LaghNkGiUrnpnNRaudK/+NUdUGCds3jzjfIac01Xrr13V197FNDWedBWw9
	 ari2rlKY30eew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E5C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198739357.8776.16631734598530148129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669dbf19905a3092ee0ecb406cb8c27016da558b3574f28bcd9068dc51932f85
Date: Tue, 08 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751987393
