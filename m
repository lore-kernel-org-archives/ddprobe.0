Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFE68460
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761022194; cv=none; b=tVi8Mx6k4wwsJO1ZFPVfnGIxvbHOw2agrVmWat0zH+vk7GBgTWe5l2vRQjDQUu7nhpKqsJNty0j9kVX/9N1OrBvBMFzbHsfXudFM4V1SEZRHe8IrHAKviMfgTG1NjqofE5wCR9P9M4ZEOexr5y0RIBBdLKq8StxvhvoI3CNHMBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761022194; c=relaxed/simple;
	bh=atvzecqfX9ye2t0bR186SZdOelZ9jKHF9TT8Dv/L+aQ=;
	h=To:Subject:From:Message-Id:Date; b=EGRovzRidrDm0FTMm0Cqg7ooSQIFGwQeOWC5egDcYENRO25NYC7BoX4DKphaI3yannzkdvuDnim+dJszFL5MqLW11NSqqx4Nm3rsUT0ZFKZnwhhK+NGla03XOgZ5jbk8rkiXQ3awaqLAGwCDCyyE0FeiJGjLAqGSGf3kcDNqR6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7erm4Nu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7erm4Nu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3469C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761022193;
	bh=atvzecqfX9ye2t0bR186SZdOelZ9jKHF9TT8Dv/L+aQ=;
	h=To:Subject:From:Date:From;
	b=O7erm4Nu3sbLIj0Y8nYbi0M9+bcek9v8KmjDF5ZHsq3ste6GX5lr3/b0YefR5sQUe
	 /sZCnNYWBUbRd+OMCpknXJQ3VdoslFqpb5yzpF+7kj0G1zb/e7casLGgDrKUsfB8Fa
	 Rb+D3pZ/1uBF8clTTcVfwqt/k0AsEtqnedQXa3ZRH6jPHj6iPOv6WcV5ap20aFaTLl
	 JjQ/YRJGwS9+wdI1AcJ3GL5R6m01roQV2hnNFMFKJdVQLoi/M101Y0m2vXF9MtakNo
	 moa07plLWIhj36Ua92OmppzQgY8Ey4f8WSdnGSVq+6NoKbw8texDceWBUQnx8Qrqoa
	 T+oH+Sx17NiQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9077DCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102219358.5980.8518275055030789066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfca1f9ef97e63b04b0cecb9ef63f9496dff6735ed6a213f13f91889e6bf52c5
Date: Tue, 21 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761022193
