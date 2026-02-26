Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA63322A28
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772150094; cv=none; b=DgbTvZ6yzG8Z1pEQKp/XOxIOg2A80oIqZyZOAHZ74a9vnxYViZee029acqdpccuT3DBza44zrCMc/ruKpcyKBXNMv5EUqf/tfDa9ExYDIKtyaXx8e2iAt0OE+rpPsc8oqeb0nDuY5mTrLTXDyL4qKkWiFNf1yrlbAD/PywAK698=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772150094; c=relaxed/simple;
	bh=w+WghrxnXHL98rYgFCblBRSQEBQwOLxaMctvmuZjzH4=;
	h=To:Subject:From:Message-Id:Date; b=TryUkSPNKcQlGlFM0MyQKccQjccDwRYi5njTPfqe65Xv92mwLGb7JkQbb9oLyb8H/JacGM8kqYtbs29NcdgjKE0xz3gwKP1Ozwyde/KEtKYRURG//XQroQGfDez+Og1fbo9Ro2anexP55RDeyhDNvMOLcURKzZdGF5qhEkgrFlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oC2yl3yI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oC2yl3yI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B96C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772150093;
	bh=w+WghrxnXHL98rYgFCblBRSQEBQwOLxaMctvmuZjzH4=;
	h=To:Subject:From:Date:From;
	b=oC2yl3yI7ma2GsrMcSx/IR5oJ7J1vGrbkLqcRX9TgRqZekqscsYmP5ReJclEQxqUt
	 V2ohy3qG1rTScApySRKaEQX3GeJkrCmoayQ4GJ1oGXIWrLmWmQZtYPIBQxKngX48sM
	 DOBa30LYoV4X/VlmrEOTvOQB+nkq+8o4MlK6oysmBiI9vtA3OBYHKp3FWiBrw/rDY+
	 MONUZYEeByRKkfUQijacW6lW3J68lc2RKtaQdli6Vw8m0U4flSxblfeUepYQfVYfPJ
	 Fl+YP2+mszFE0cuUhjiyi3gS89xUM+apX3ZeezoUgekb3SMHuGVBKqe1mselx8upXJ
	 pTiitUuNeEP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA6FD9E26
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215009359.2233.3451405081068744556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b5faf79b4ee7709c5787c707968d787c36b7a6f0cf6813bfc5fa3d0c2828b2
Date: Thu, 26 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772150093
