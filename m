Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE7A9463
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754439594; cv=none; b=hzXvn+215qVxyTkpIFONiTeDOEJVZfF3AHNp18/hiCebbTOGE/WJ+dIAhGv/8o1SUPxCIMS6dzm+LkES90CcGqquhXYLYuAxMHpAOMJmWBTJOWjdyddadUsCkL5sif2JZPcvpX5pr45MsXGJMAhBsNdW9BfeBTlM3hMrIvpHcpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754439594; c=relaxed/simple;
	bh=pJuGMj2/XyDoA7BXobvwGBqqeWCe3pVDLVCzMmueiio=;
	h=To:Subject:From:Message-Id:Date; b=q7BoHeuZsOKzzj+lO5El81oFghYHcgefb5vfiUIcVCtXI0WB8VCXJc7mRYYSbfzFIO7XjCZn8w/xuFxnn+Dj5TXV4L3aGUjzwaujoUkiFDFuhbOdAUqWaplKCwr0U4Y8W6Ck/L0zpXKr8KvV/HMI1FgZRzUa5Aca3qfsd7/Ee8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T71r7ppK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T71r7ppK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8622C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754439593;
	bh=pJuGMj2/XyDoA7BXobvwGBqqeWCe3pVDLVCzMmueiio=;
	h=To:Subject:From:Date:From;
	b=T71r7ppK70U8W2iM5we+f1vKq4uQeV3gd+PvMwfDrdwr50rU4/s511J7LCrt2ED1V
	 USBfWvlThsp4LDcKpWJWwVP3H48q3Ze3hET+vctSdB9TDXbf5x0VQYq8M+k5Ha/RSn
	 L+sihPqE4krB6Sj5HvyZdH4RfBE5zdR994FEp8Jk6WvIX5gMDiLq3mqVyTRXAvG33P
	 5o6KEBnzoGBCjpRdKhmK+pJDdo1br/aU9OlUaAkdzYugZlOAbiUhz8L5t2LFTU/uwo
	 9Pei2Nhy9AbKsMek3aLMWy8jIb33YJu4sB72l674d1aEn+6H/MCZpBZhHTC0N5wLDQ
	 n/g7ttOMwbH+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C72C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443959358.1088.6415605578545755174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b1c796d5d80e3e4cb8bcb77a287e826b2775c30971fdaba3b6f5713df6f00c
Date: Wed, 06 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754439593
