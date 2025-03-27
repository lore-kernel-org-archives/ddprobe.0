Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D6736C
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743037793; cv=none; b=IaTn+Q9pPQU5OP0P/+XfrNYWZTwK4IsEjAX5H2WKph3qDwJkJB+31ElNqTnLQUl1aTFuJhPpmPjiF+b1WDUcUT8ruXJ1M53l5QcTBas4ljGDcvOByCAxJ/QTT3u37wIwgsMUUHQXzJsTJY/5IEBBEYGv7WBmVysJBJq+sszXjyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743037793; c=relaxed/simple;
	bh=hBTScJc3ym5CoZIRFTos6QIr43+Kd582b4Mx5aAa3AM=;
	h=To:Subject:From:Message-Id:Date; b=pJbF/1zmMIRwSioxhXvMpeZO3Luei0Bbj06zfxcq2YZyphG2ZM+T3HWq88tTIx4WZ7DAlqskMVIrAz4W1OS1H2oSvg1IJ+gqwJ/HvM5yzLf5w6VOrIIH32fIYjnLUgncnfKOF90hJBDAMuGSkAgo6Qimd8qW37Mufs0b3Toj2Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr9MbPOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr9MbPOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03CEC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743037793;
	bh=hBTScJc3ym5CoZIRFTos6QIr43+Kd582b4Mx5aAa3AM=;
	h=To:Subject:From:Date:From;
	b=Fr9MbPOgNPtlZodL+7k1DxCCBtZlUmNE4jkuhIuJrVonQXla5YLjlPSxiaGDBDQcS
	 7LmXymsavTR1fOSYba00pjxqXoi0ZJEsvjiN+penJPQWfaGjRDgVVQsfE3C5HktwRC
	 vV+8SusQuK919FvWO5WTd9+vubRQIYeqox1eBSjBVGZl1+6GqRB0QnMg6XFGp1r1u2
	 oci6dtP01wOekQf7XLwn/TcmHh5WboDo6djOc/8ZHJ+jHbJNcjm92M1EtJ4GKYAR4f
	 HlS815g/VdROooLP5XYnKpLKfIAcyTMVD4Ik5sLUpXpDM5Jz96ytwBs0mdn8fe+Jsz
	 yKcngAVgxLZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965D2C36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303779360.1251.11134335444327058271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56c6e5e5948622e56f01b2c8c72e4f5efdf4d755b2f8146c19a21ae049b32d0
Date: Thu, 27 Mar 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743037793
