Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1C4222560
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767290634; cv=none; b=mfYP7U/8F2sk9sAGhV4k8zIFd9KCvQzD9DD3yEf6fLxNgTX0/GuWZ5uunfRwEX2HbJcXE/1fBiiKaUEB7PjymS3hs6yHWD47kH03WLCVEdshzi3sxo67IekUruyvsdosEgxTLLDBq+SNNfSjWl1qwRZCoa2r+XPZ68rTIcYHnhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767290634; c=relaxed/simple;
	bh=gP2px9O2wo+k3pY5vdMlbbD0aUupf5F1oLt4fxLK/Bg=;
	h=To:Subject:From:Message-Id:Date; b=gokVv3SzLamUV19sjmtK/wJgdXHjO9nP/tnyBZr3fanrGqo9wkYEmvKFVIz2nEzVpXM/RsGHQs9zjzMJak1umJZrdUVtdWxtavTaQr0kvy9aHSW1t+wOONESD9tP6rWP5hD7U8CtWvE/VG07/dAVcssrDyhWnaSCQOnxh7A2twE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aka5AVoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aka5AVoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2566C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767290633;
	bh=gP2px9O2wo+k3pY5vdMlbbD0aUupf5F1oLt4fxLK/Bg=;
	h=To:Subject:From:Date:From;
	b=Aka5AVoS8zRlanqKXir5DoG0Q0quYYcJ8REjYhjNjAw47lqlcWnps8Gd0LniYhO4Z
	 WilY0w9TKeYcAHJ3oMQ2q2sHuZ8S5L1M4AmInSKRdMJS2uJffM84q1z68CK5KjwdAz
	 AduwXj9HtZI8ajdhEMqtalhCzBVhmsyk/a5cFnGXHLFkgYBE+fWtw16Z24GpM7P9ZD
	 pd4jb2RzWelP75HjWuiV/LjtWZ3UZMwKj9i4sOjnX7KThM/Fuxv1r0h62cElIGDLl0
	 k0kbXGtNb1qU7s4Qsb4I5APwEXENeMCAdeKj8YqlosSK+dkCeZZTQz530bcct+6Y93
	 GHU3Svl5+IpKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B84EED631
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729063358.1026.14487394238355378555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b14ee3505207193167d7ae617815d179f0fa4d006c0c44db3245284ec19d864
Date: Thu, 01 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767290633
