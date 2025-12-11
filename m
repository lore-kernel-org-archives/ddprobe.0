Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9893161A5
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765475574; cv=none; b=u2yS57DscYl7cvH5xN7r+Ylmb+t/PShDcIhgfJEX2twFgDZ6uQ0qmfFAy+qGAhLRNOJsD8H9bbzgpYEsZ1jPoS3L0Z7DvRowZpQMB64xmUNdRCFO0We+Jg1PebABiAW49wg25+G3xDY2YrSnw2g6q4NrwmBLz91SF4ZkVuLkSUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765475574; c=relaxed/simple;
	bh=Sc4VOvimlZbvKeopkLvRiJr8fxH6PlG5/hw7IdDwjrY=;
	h=To:Subject:From:Message-Id:Date; b=E85ll5lbn04okjigfZirO0Qxj0E1ZcTl+s3n3vxlOw6tKY1pezmgOusIwkoRzBdt5PRy+63aDz5D7QrxzB9FR2OLc6SmFPRYXBpsmPRilK5G2mUTt+wjAzGNmOXZUvA7+HyQ5UBxgPf18XD/5S37MIQ5Ith070Bv2zQrUgElZ3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNRjDe+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNRjDe+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97C8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765475573;
	bh=Sc4VOvimlZbvKeopkLvRiJr8fxH6PlG5/hw7IdDwjrY=;
	h=To:Subject:From:Date:From;
	b=KNRjDe+ts2doycYoeiLhcj3rsO754Mlvsdy2ZX/Srxe9rAXGY0Yo0VojTuWLTUAhU
	 MXeWtlMeiBbm0BHnhvuiJq9vi0TXuirs4kdHm4aW2jskEeCtfKfJRMrO6J+lfKzW6s
	 KqMokqWjMdA5tAb8aLUfswD0n9KZfIDrIDP7L3ZXn6o8UV5kle/RZfna88r1mwKHYr
	 0qAuzMq5cpBvPkiH8izsf1BPQt3oaUZKM4mNYu2uugUhxMRa2p0u8SYYts/8fpdTlt
	 Ig7N8h0fW80o28yBainy//vOMvraXX0w+d0NdSn4xikro4pWPCMLybV6dzGTyVA4MU
	 0ePJQ3yoM1TzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F0D41D68
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547557359.24616.16437813472013918489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116c043205a82e2a57c87ab9d6902056cf068bc1865af3ca4f70f15c5fe9169f
Date: Thu, 11 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765475573
