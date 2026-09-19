Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109F12F8EA6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789851634; cv=none; b=Jcuy2wloxQ00G44+hOZoUhkVz1nymrz8IfVYUplLOW7g7BOo+l6PQV+ZjX5Ym3T5GjiSmwBWaUvlVo2cbS9JO7rMmQlw4tdIYRbhJey0zxXI6Fix+g8QiYFYF9hXn6M1TPxSu1cPXG8M7w3sXAdq0M8KBRFn3PDjSwbVVWQIf5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789851634; c=relaxed/simple;
	bh=jy21lLg+LNS3CoOojINM5SOiye3sUyK4E+3N4W3zV3k=;
	h=To:Subject:From:Message-Id:Date; b=HYw41/yMZ9/3vvDlOayowFxY/30ymzkFMolM2utLK5NEjo2OWhPZcnDHlsegAEx9XY/PhFjxCiodM51T5u5kH1zjoLvUvApSIyNX6Hi3wBklFcr2x4CnWZUVP25u+4wz/HGC16XsdFCseJ6PBf10Lsd5Vu6I8CPamwfbrFHJvpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNo+2plc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNo+2plc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D9AC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789851633;
	bh=jy21lLg+LNS3CoOojINM5SOiye3sUyK4E+3N4W3zV3k=;
	h=To:Subject:From:Date:From;
	b=vNo+2plcfOEsXudxS/Zbo1ztwqwvQo45wVRzAY11XxvLhQaMEf02wAVsiym77PNIP
	 AFZ56WEAyrlYNJpmPsTyy465P2tvLWYS9neLUcuIfpgED1wI0Cwy3gUoqDo2NxDaPB
	 dUyxfO8HxqcfxkjXDVmE6hkRhAXy547RssvZpLs92imjSIZcTz7hzBt8RqVjBpij2L
	 oIba0qR8yC2hs50sJdkwMXFM0aR7aqp6LC2Ic9lQUlwSWb7bswtupfJ6lfv0vq2QaD
	 3VCFvWbLYZnosQ3VzfSHK3Z+7zodAczMNNzMPkyegP8HOkYSIdX95VPR6nUIcUgWf/
	 0Ha7aLWEs18xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8AFC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985163368.29098.3767869561423400917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74b02f2a8cf408b2f9601bbf7f9336f9b746340baa1e65aaf1b0da7b84a364b
Date: Sat, 19 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789851633
