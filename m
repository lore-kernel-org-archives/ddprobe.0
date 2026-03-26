Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122521CAA79
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774560294; cv=none; b=BwbWMZ8tjjWa/qdOsrzj88TbohpsMe7Ea6WRu/ouu/trTWWvVAknC65bcnfUiu0TM+/6PM6ttIjCFtMlKBAwieJrLfY2adnMGrKJOVlj1ZZlsAJ1Iqo79a+CJxMQnhRTTRFkwWmayLItRI8WQIK7DezQ7Snq2bMMkSLF2p18Lmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774560294; c=relaxed/simple;
	bh=cvQjkYoOOOwqv7PTIaRKoRopGdHb4AyKqaAfZJ//O84=;
	h=To:Subject:From:Message-Id:Date; b=psn3SyLul/8yTNZi0LFpuL811rmkvYO0CxCOY87j8yioGM7jGpbNJygHGgUwgGhY8LVOnJSO3VkJEzjCTgMklNx/KD9QJXvILPOqQw/Gupf2qiyjMU4TXoi5nJTTB52korOFIZEMArk83B9sND/xYD7Z9g6kLfMF/xHeBmbvdTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKNsMfOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKNsMfOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774560293;
	bh=cvQjkYoOOOwqv7PTIaRKoRopGdHb4AyKqaAfZJ//O84=;
	h=To:Subject:From:Date:From;
	b=uKNsMfOfh/rsKttZearzlZE+abdQDR7ojiEbvpEm6sha9JhndwFFTP57LBEejNmLP
	 lkpayGqSCCTIFItZUd4Ii97zcZyfnUKLjXGVVy0EbKPFugwzMPZtb+H+3zqbBs41Ql
	 PU25F/dqZfbUwMxlrUMyqdCd40+joRgXVhJEv8MPTx+JIb91yg6vkHLnGyIabY5HCj
	 VJYMrRlOn2gcsnHt2Kx1bPEMZBAN+Av5xcTEn7W37h0cZQSy1BpLZgUYa83XamgO2H
	 8DE1kChT5fvE/D4y4GxshCrhd7QsjNiMPb1QuwU7mSeRWX9G3nV9yoCgG9t9h0DzAW
	 ioRwsZt3YNqfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDA10AB82A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456029358.15072.1568990128302902237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4b58f9cffe18ca0074dfb16ed544c499c0a170a2e1a19d6fd525d2b0709a88
Date: Thu, 26 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774560293
