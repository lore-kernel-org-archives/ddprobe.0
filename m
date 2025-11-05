Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301E91DFF0
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762318194; cv=none; b=AF2OL9SeTeLsHj434tc8fVa75D+LVQJmrYW3qrKRn0+CF0W4AIEFy2oZjwsDs4zJLXwRVZZ9uGclKDZAnqoU+plrFCDwOX6FMViZ8p07o8BAN1aVdhQpB09B8vfF7KDdfhJ+kaM2ZSS+cs3cHAdhZDaOKUQ+qTFs3y0ZGUHOsMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762318194; c=relaxed/simple;
	bh=wq/mkEBiIL3ubyhFVgk7DSwp58eE7hJZjhzwownhdT4=;
	h=To:Subject:From:Message-Id:Date; b=QOOBLLiG0oe+CtFRz/sa7dK/CatgCutcHC4YUfFum/56Qdg//ZyWBwVKzlfIHTNkKKV6DSRevFUU0ZvbqLO4u/LgOvYJn+6+/3P4VDeBtBQHsEKcJnKfbcmsdMtZ9H+LyUT4/nM6LH0ni+ofwzDRii7U9e/4jWDCx/zsXdcur8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvuNel61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvuNel61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDE9C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762318193;
	bh=wq/mkEBiIL3ubyhFVgk7DSwp58eE7hJZjhzwownhdT4=;
	h=To:Subject:From:Date:From;
	b=HvuNel61Yr770SKvtXYRRUqwybbnvsonDwta6SkIdrZf4mtwBroaV3kSYGldhuJ47
	 fI/PAJ+WAroFZXzFU7qkE5/cpdjzuR/S2F1By8BYEsUQZrZ4T6aKtPhrV6SjKwQ5BO
	 /33MvCanEZMSKNjyuiY8J9zZYV+7J+JU/q3WIEfA3B4anAkeHvqA0MSOn5ijlTo+Aw
	 roVyjXwqkg2P7/Qh4pKAu/6Kx81SZ3WQS/eXR9rDlAN+INR5sAt5IRU5yQlZao5xKD
	 eb362uD6F8HI3HHJJQDt73NP7fE3AnvBQ1yMs+Iw143zoARdcE903B3pNMhbN/npoQ
	 NsWYIMZYSVuFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F851CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231819358.28376.14086115918678947338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3beb0e870caaf68b624c5e070676d563c57fc49385c46232b7558175dcb15a
Date: Wed, 05 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762318193
