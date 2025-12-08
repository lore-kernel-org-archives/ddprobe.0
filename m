Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3040E3B8D51
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765155774; cv=none; b=h8FpSd+8SyZxFf3M2txKGwGQBt2Qtm6abnmq2gy3XO3QNUdS3jsRO3/ESF9RoG/WwKI7KWTYqtnD7qWasPN/tKV/gJYE6FtYgXpPK1GCG1+WMmQoZNW5PYW8Ld5q6QM7YomuZglGi1jHS0SdJdgw+8WfP3OqY2CI9xCSd30G+Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765155774; c=relaxed/simple;
	bh=PP/DHt5SWMcdoxlVJqFEOfi6LkkJ94wgV1013BLp7qg=;
	h=To:Subject:From:Message-Id:Date; b=UkNPoYw74JATVxX17B8sfrmeziMJQSQGp8GNHR/C07JurCTw1hgVnJW88OKmwvKG1WjLBAHLQGD0VExgkHSg6fRMQrEpfcwF32QrMSv6171obKa1mhK8gtGO5TIA3nckAvDt8zGJGElfE2uFdpG2GGzoppT0jlatvDJh5o/8n/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2E+48fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2E+48fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0BFC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765155773;
	bh=PP/DHt5SWMcdoxlVJqFEOfi6LkkJ94wgV1013BLp7qg=;
	h=To:Subject:From:Date:From;
	b=q2E+48fjlxgYlGJsmmQhCiJ++Kf0PFH+yHdlgIpSpd4VXiJluR4Rey0C3BLkEKcIG
	 gpcTuyRxSWt9UwdTHLEygN/U/nFcp6nqfM45AQxw52R+ZBnGlPBEicinqAu/UasOo4
	 pevvEYqDvktoyGZi1lPPn9gM4bnJWAff8ksw8Z5fVI5NGkRuePzFlR/P1jllkLBBoG
	 pZXhwtH/YjLmHG07/l/D+u6bsJv2kPhHQN75wEKz8VVjitx30mhmVC+4c0zbK3/VTq
	 Td5j6YMAzf4gvfZxJOjL+BnNY9o1USFDKTy6TlCRKvAuHhE0MHgeTk15RoVvOttf+c
	 v6BNHSxAauWCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95221D1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515577358.15640.13661036043411105123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2680656bbf57dc93134aa9bb8e41c4a52f39eaaf50e6124f30dad8fef9be25da
Date: Mon, 08 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765155773
