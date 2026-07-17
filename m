Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0DA33CE86
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784256514; cv=none; b=LvDxFxar8MmTwH9jCz34/Tqs7alHV4+tyNvsOPo9JouvDnGp2ElJCkSlEokmcXiAvlzhDBPS3g5fYpUG+yn6vjA+gTJskxPXQecEGQql1pTdTQ4f410R7dyVqK9mDRbRvUkIKa0T4ZLB8LHfJxjJ8jzyYUyqxvzgad4/tep1VQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784256514; c=relaxed/simple;
	bh=xYsQDim90fWEa4GaIc3NADqs7PIx8hkd9vhnQNwXIz0=;
	h=To:Subject:From:Message-Id:Date; b=cOCAZe9JNaz5jLyp8idVwDI+oIH0C7vk+BukHrj/oqh1iCdK4vKJx5zjaj/C2dknrZIxrZkfromwtNp6R/oE7/Z6JSo2ZGhzCbKRcwBL6yd9zEaCbDp9sdjxVrTKtsaTPNp4JuunOHtU8RxwVgYOwQ9+DnvX1mHHSKJ7+Ay5CWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruDBlzGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruDBlzGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E15C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784256513;
	bh=xYsQDim90fWEa4GaIc3NADqs7PIx8hkd9vhnQNwXIz0=;
	h=To:Subject:From:Date:From;
	b=ruDBlzGv247ksTDeqtiBpvxlvEbYGn9inJwA4daimml6DHWq/nBw0NL/8zeCC+PBy
	 i/dyRZ5vzxevEm9RRwyXWLOik7PBJ4vZj8cVx8stK+XMnqqNpctFQfZkX0pe2DrI8H
	 HtdbqhqquUZCMX3+Rmt3EfIiFko5UnyujIknAcguHqvB9KJIR4PKCOf61NmS4FJfsl
	 Sh81Z4jyA0aCROPkpdVSZ2Fc27XGwXHzAhT9X/SQiRpKlMcsKUfV0u9Uumbtf2MF5T
	 m8fs9wdYBLG2nuhcoyfoskhKbsK+w5VgyGce9kCNTs5VY0nv2WGkTCORXE1ANalnhC
	 d9f5tVI+tBY7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C86C44516
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425651371.29413.15191012725600244488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965983cd596d40a28000bb2212baaf27023335ffe1f6cc146e7eb23a021fae2f
Date: Fri, 17 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784256513
