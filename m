Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F064689
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732683354; cv=none; b=lFIVowwxcK7jlaV3zc3LINOeYtia60TWf+JB7Ciq/ufqf2+9Pufu4kYDyC3UahJ5fdYA3etiC1Qzn4K329GITq5tgx03iTPmB/ly2+2oKyuL2NWANxhcER5niPzQ5GWbotk+a/iIttgCo3f4xJXzMLZIdZT8+UXKkfvH3O6HBbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732683354; c=relaxed/simple;
	bh=Xs6f6LhvkAbe2cbzZK62Oi+haAxFVdXVHkPVCwazO3M=;
	h=To:Subject:From:Message-Id:Date; b=jsNgr5ypHHpRjlv4OOLjCP7wv43epO33r0YAp2rMWnf5hBvqoigrMSUPrj0zUmi1ezipCfSFHk7C9ZvTHAspcrdT/nOAbuvOMk55jBQUZKNJvgrzx4be/fKSjsrvCmymqoPK3Ajdf/1DXReFRh/xmHL7VFreN78VWqQLIgS1kgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qe3w1iP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qe3w1iP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C2BC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732683353;
	bh=Xs6f6LhvkAbe2cbzZK62Oi+haAxFVdXVHkPVCwazO3M=;
	h=To:Subject:From:Date:From;
	b=Qe3w1iP1TjqCxgWA65ifwLGmJGL3q19JYpw+VJ6TYlXHBlhvnWENgJ02nIzxISFEQ
	 AXl4zFYOTspzFe6cVg5PmpApUhA5PL7reLamdMHeuw1xAwzlvwNfITMoyw1UVCsKbY
	 t2L57TOgpLk5PDTDHO5dtMW1HpqBjXZBoANi832EIo1oK8MBdvGVYmXKhBSay42c48
	 AoU99PMC8I6077dl9NFnQlNAXYmvn11m3wRCWv/G6NloQvqFAxCGkXmXDfuY1P/uQv
	 j0FeQlE8erCWP3uPNHq4CbAtA1BHe2Dwo0n43O1Aeyr+DzBwLENeP3jpLUpbizEpCJ
	 wlDo8BnxR8pFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D520D65521
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268335359.24968.4495639777374286759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7381a138357aaed3dda611c166e24872d1d8937b6084bf205361da2a110bc5dc
Date: Wed, 27 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732683353
