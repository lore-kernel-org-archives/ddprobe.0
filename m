Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2248E389E09
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772102094; cv=none; b=axS3qs7w2wQ8F0/pmJ509wGB6DVZ/51dJtlXrGtoMkX0/u+I8sxjQc3Qg9FX76m63GdGI5EcvmoC4JjkQIDvol5/3xIg+691HC3jA4jlZpzysEzE4YBjQdi/9msCIw675vKmeDkAqYejja4h5Zl2MaE/fbXZ7nMpvB0MsttTYV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772102094; c=relaxed/simple;
	bh=H2BkXDC78mxC+QmlLMt2bYjfk1jnirShkikg3qN/ctk=;
	h=To:Subject:From:Message-Id:Date; b=Ez1GjBrSVDN/ToxuN/m5W4/G+lhOpYBRjDKVT215c1LemITu24d03GC5sOwRj1tXt+vMZ1qNhu5P6GudpcCH0rslXg0qXd3b2SpIqUA5skGWYYhTpVVi2XNIkd4wS7lWfUq5fD3lzg2QEkYlfDKK02ngKGn11B06/QY/u5/6iek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWCU+MoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWCU+MoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC9EC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772102093;
	bh=H2BkXDC78mxC+QmlLMt2bYjfk1jnirShkikg3qN/ctk=;
	h=To:Subject:From:Date:From;
	b=iWCU+MoF//fnUYYCZ9E5YFRZ4PW+SvevBeUbxeEMDONbO8ngVspILq7wm0nXxXXoz
	 Mg7086vittyo5xrY8VvkskwAUVWJHNtRKZErlRBt64UNRx14rs9lI3yqdKvIXfFrB3
	 Vw2MhVUjzSExDjVvcpuqHXQ66FWO+cTPsSPX+ipEDAmOvJfVA4MlofK34NVFoUzaVm
	 kGPlUZgmr24up+uKdlYMC+Gp2SdibOBMIGQgxMWH4/mQeqJmQpBqi/o0L0JDTpA5kf
	 wAhB/7K0AZP8UwWM4CHQ3WgvrOfLXQxiuAymArVAzwu/krTdMYntEkX+Ex9P/XNPmc
	 mXUxnLQGo2dIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BCDFC5926
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210209359.29514.3201096358730917508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710610dab2342991e54698c16666eea746cb237d6685f57286dec97fa6be62b4
Date: Thu, 26 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772102093
