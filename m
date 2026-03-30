Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDA93DBD64
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774889694; cv=none; b=X8WI2kiyKEHzJxZ0Nsoxr52IcWE96wunWMUfkODDwVZdXp363UdXJuv1vL2uati3RuSznKPmXaoI8oPGB/bItlHjsWmwHoEu7boSsH7SwKQklOcuBLiQP3cV9+kobqoiTF1zbLPONZiPI0X59bJdW5M78/useBgvFvUrunfI7hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774889694; c=relaxed/simple;
	bh=Sokjd/PoyJcAB/yzCfdKou8q4h2N09v+ATx3G6za30E=;
	h=To:Subject:From:Message-Id:Date; b=hUBNgXbYdaBnSdwO3VWghKdvGIF94T9bm+3sZQyABlG54YS5xI+VEHRYZmXehejCtUz7LKWDNE8ab9xQjRmkddcpmDpAsorOYrPehGlcJ1cni+GwvM+qRxv33Mp9GniqlccunslFiLWZhmvsB9Flbmtq+oXt9LCaUHqzmM7jUs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZTXndbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZTXndbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BFDC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774889693;
	bh=Sokjd/PoyJcAB/yzCfdKou8q4h2N09v+ATx3G6za30E=;
	h=To:Subject:From:Date:From;
	b=PZTXndbhIzEJk1q1OyWWAzqyJC1w2xYx5OQeiRo7P4W+fJZkVHJApnpAqxF0W+ZuQ
	 +/iqnB2S4ecdQj98hVLbQbAVWjewLX9N9pMPnWwtiIgU9/f0tyNkdp47D9jq+jkv00
	 zq7Fl2HGHxcHyOyMRzkncx8/mdMfCAAYibUY7YkthXMmrwn1uV9ef2gDGhMAh6bm0P
	 Vp236dDGWVsj5RRt3N/UWuvPFiwllErHRvknXWwsQOVKR3rgB8t1B9G2PGTbQ6CHms
	 2cjrW0kAUIr9bT+xSoyb3BjmHy21ty3y6dF3x2YlXg9hvjUc5AtFZrya144AvE3FsQ
	 /rPiLsH8+8W7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DF1061B15
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488969358.24484.7097792453701615913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78aef3fa3130378897b9fba731baff7fd8a88e1417c92576df92101da0352281
Date: Mon, 30 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774889693
