Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CCF1459FA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769277234; cv=none; b=kJur8Z4D+n2s22Ak2jbpuGp1d/eS+X6wecqktgo2lho0wrnH6j2+t1Ff99vI+14/DP9SAaM3VpWbSl10ovByvX3NtTwXY0bdHFRnIwZHXJj2nX5E/KxBKSHkBirc2oynL0iJV6IZqOjcenhDPBZrtpAxV+1u2XuamBgENwqYNIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769277234; c=relaxed/simple;
	bh=jWU1fq0YQTq3GNrLnGBRukiM5+twTa8fG1rOCHMn5oE=;
	h=To:Subject:From:Message-Id:Date; b=MZ0mWxmkutPC/eQoD5eRsjNE5n6P5j+ilQ+Mn6jlBOp6bcgP6dnR6Lj7K8iE/BdNM1jEalQHtnNuf4KRpbn/OE0ypfUH4USTTCqs/PrJY9yCPBJBTadFbZkmBTKHOm95ZQ9Uwmzpu8jQLGf0kMi4qHkJ7y2RDGj7Inx3TtnbTno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvyxoEW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvyxoEW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B3BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769277233;
	bh=jWU1fq0YQTq3GNrLnGBRukiM5+twTa8fG1rOCHMn5oE=;
	h=To:Subject:From:Date:From;
	b=OvyxoEW9bnevKl1XQBkY6m23/uU/EeCEvTEYg4frizaZHpMvtSVPs/3HtFvKhQp8c
	 vZ1BzamCuxPja7RRkYK3QpjzO7scBorSz5ESX3qlrJLyt+Ti6Vbd4iOdTi8QzOnOHI
	 tuKo1jsui+IIkOmeFvfLTJF/xtD7/4TL+DnHCOKs/DiRiWZwEwIq8raBzQrIRibByU
	 TRw46EbU5P5nZYf6+HPwZWNImRVqbfwY7cip3JbMxg19cG4mbzRkuANNHNOzihLRCQ
	 eC1Mr/TMp3ugIiD/7gATgXeJnPwXQG1iiB4O2Sa70uALdrm11VH6UhwUG3a7xBKq51
	 YcM1KB9v5K0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F89D715EC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927723357.21303.10608204625799248722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2765f413e2dd1322f19c4136e70dd8b2d6a01e1a6c7fbb328dc188221a49665a
Date: Sat, 24 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769277233
