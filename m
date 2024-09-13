Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D12481C0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726248354; cv=none; b=oamNRMYfhS+HtcOmyJhPwYLcCODVi8UWovX3KGBvJZZNrLh1LW/csGWzKEBT67klf8JDJxuv4xLtyT3tltX73l3+o7rm55rayj0bCbuAuQH0UuxylaPQ2GJevp2wKSegoQodHo+YHg/LZ0gQH6Ft9S3tOwYF2ygWuNDxLwHcenA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726248354; c=relaxed/simple;
	bh=4igO0C2jGuJvMybWuSZXw1U+IUQCTxC4M1AjxWOTmAg=;
	h=To:Subject:From:Message-Id:Date; b=OEbB9UqKgjZtOMAlwF5RzQI2u5Mr/vHQwEevAd44e8KpwN1k9eB/5RU9Aj5Yze2H869LU5BqdXDXqyw0xQgzE7tb1vLjGvMM0KS2WwX0dn3nhmiDtpdXDDgMH7DD7L4P/92b14MWP+RxG5kw8us/KuB7fqMKy5uYhuTFA/5CibA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNyyEHxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNyyEHxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F62C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726248353;
	bh=4igO0C2jGuJvMybWuSZXw1U+IUQCTxC4M1AjxWOTmAg=;
	h=To:Subject:From:Date:From;
	b=vNyyEHxO1j8RyGLtJY2WV1OzUL7xRmpeK2L4L5FwC2gBUbrzLjQ/RPXqohcQo6Ofi
	 H4LsrahFv98ybIw7uz/GU/1I2hhb5qqDakFC83QlvE2cp0KiRGyGudcJgKoPKiUWH6
	 UtWrGX+dxkKF3V1ndxRhqJUNj5b7Rj1zgH9Dmam7B/QWBbDvpDbRhsQgVghyPVmDrt
	 sWtg3NK8zYBcw6+JDGarYVhM1/yRuRPy4SiU2lkyR/yQq9kByTUk6I8+6y++mR7Eol
	 WsI7jwiVaqpfkpdX193VWWz0/I1d00SorjHKRzbwwcFnwSqMpfqBNLUfzleTZMXk+3
	 YQEAKYKyLWB1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9745DFC616A
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624835360.9843.11967463457963372708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa96ed26eeee9f17f6dd683db1bd41523a0c1d654a38cb7fa88a6a20c3dd6aa6
Date: Fri, 13 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726248353
