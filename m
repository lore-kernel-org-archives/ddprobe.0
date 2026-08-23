Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C37A175A9C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787523034; cv=none; b=EikmjMEhzKQbDbag03GYfPRFlrrhmEALscjv16DpoH4oMI0pWvhzwkmez9WPCAoJdi++fdV+bLVm3dWCBHqL0rKjZ99u4SCViJ7rA8gY5ev9f0CMZ1gRMfCFW2u5EtCql88ObB7kMdexYUFeWI6C+XANiB47fWN9NBf07sz4sFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787523034; c=relaxed/simple;
	bh=clOBMSof/KdhWrbFtz0Ag5zYM+88u6JvKot0CJ6lLd0=;
	h=To:Subject:From:Message-Id:Date; b=m06MX+zR4d5YJ8+C0oloIXusDV9xr7w/VVDU3ktoH1Xq/nwu+CDKPXClnkNeqYuLjpx2osaUsf1QFqc94KM7239uqAKigNVqrDptySJSIPBUqbeaewKfFoG9EllQSsJgVHux94O+x4/eQbCJKNbv4hAQ14jDKRtcl2lL52ZLZvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eo5xna9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eo5xna9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9D7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787523033;
	bh=clOBMSof/KdhWrbFtz0Ag5zYM+88u6JvKot0CJ6lLd0=;
	h=To:Subject:From:Date:From;
	b=Eo5xna9VwTI9TEFwgoc9cdBRKseDaWj/W/kpT9C+24LNriPfn64VGje/NL3LBx4by
	 g3soHq03PFKlVJlKCGxvHkCtugkJLhpb6Qv/omvnqKeHY8F/ratWzW9P99vVQIntzf
	 aQJt9ykExD77JXwTkzzme5MOVUKteutC2FuxlTc/qDBXfjfZR+oPO7FDQAX79DaXs5
	 b2FXN2R6As/UvEJQ9NdocUVEjSFd6Mg8XZ6btj/0LYNDELB9SMUmE2TgtE/SEUOFNH
	 ilex+r6FKUKVxwPybiKGT4wkYvhKXVljtP3XwK7OgaFf3Cymg7NIez19C3YK2U+krX
	 k6y/sEKp9RjcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16CEC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752303369.21875.10395561599795306223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f47a4fac0b5f8bb83e6f04371c60959cc8be93dacb15128c8a57237df5fedb
Date: Sun, 23 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787523033
