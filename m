Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4997746EF92
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790616634; cv=none; b=uJV3rnWATzXeQz1/EyCHxrMNmWFbEVfCu25zBEzBh5lt2FmkRde8zm57G+0EaXU3i+DVLTFyoZptT+pw7hBhJGkKs+8OeTIe6y7Imkn+APSdZSKzf2EkjHet9W/kQ8d9njNc0KQEZvYnPuxZPBwRcbLGRrwKr/tK6sSUKc2cChU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790616634; c=relaxed/simple;
	bh=hSs4ILUttrIYQYXo+Pqdw7R7UyadKOv5g7lrq0fQnFY=;
	h=To:Subject:From:Message-Id:Date; b=hEps9uznYcMd/RALcBIAFF0jNFZRYyyiGgX3qSRGo/oCdOvWhkaIuoebM8k9dBv0QJU/XeReCJXsbV42ZDvMY5XgMDuPbM2Hn08LgFiaQxftZeAdsd5fPr2CLXkYMEsUjHMc2jYX/JQae2Lj4f+mdRUF7d1EdJ0TDhgacXMteCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvvFlZBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvvFlZBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD41CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790616633;
	bh=hSs4ILUttrIYQYXo+Pqdw7R7UyadKOv5g7lrq0fQnFY=;
	h=To:Subject:From:Date:From;
	b=dvvFlZBT0f7GUHxLOWD2wZDfjE1pZyG/yTcQgR9QJ0mRrI/ozDAd0BwFw3zgaCQI1
	 zpsZY5g5P4v9E8GMcfkl/e7cEcCmubNdbXuOrKAf2wpaTKjsOjpPpWcaiJ7Ncvv+Ov
	 Ej/MB6M4ewj9S8lR7zEkJgLqLZOHeH1xBK/KtK6+LEshiyLONJW0qY6xh4cn2Tfk+v
	 5t0t3olYjkQz3UIRSTpYOQBKG3HOOfgUQIyzH5ySHOnTEbYnHxgk3sWolJKaXClr6C
	 vk4r0SdqHqKQXrPxbEWq+2RXIJiG9ar7WZVQTDGNC8oYdGw52RJgNFBlQZnq+p8kkV
	 xAPAIhMcypyKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB407CA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061663369.3547.7560385150161861323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358d4234c3025d1d4a0d11825f184fdd07e59c925092f15cc98783b2df968c7c
Date: Mon, 28 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790616633
