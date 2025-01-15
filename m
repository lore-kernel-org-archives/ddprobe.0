Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45FB1CCEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736963753; cv=none; b=i3SKzWAEmI+l77BUmugEIzL+Szjtn/sx9GneaLRenGwqmfHQCNBYuHBuaBjVZ3GTa8un934vaaE28tCWiuNIHfjLMgk8y3q3ofJ5PZxHwaCT8tUTNRpKCU+Nqy1mZVjqWHzvYK2t6g+qOh2ceSnKKBPCfg9HX8gQsrC/ayJQ42o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736963753; c=relaxed/simple;
	bh=Eg+q3Hwl8Q35Fp2A6yfT0KHET/Rrn3uM6El5XFUhwUU=;
	h=To:Subject:From:Message-Id:Date; b=u4Yhen9xib5b2IJuKJu9UcKso/COUKYtdWFCsdnh5RI2bv/OoGwUXWoAFzBmGzUwnsrjeO9cp8e7XMrma0DFdzKql66brZD3qXI4kHm4jMGEC7Od4i2HV0MDSZQtK8ePYTaXNYvdH1V9Qi0JP/970DK0ZDELtWJcoJR5654ybIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKCbOBm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKCbOBm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BFCC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736963753;
	bh=Eg+q3Hwl8Q35Fp2A6yfT0KHET/Rrn3uM6El5XFUhwUU=;
	h=To:Subject:From:Date:From;
	b=tKCbOBm7g7eSI9pq9YjlgnjRd+ZVxzSjYX7eBPQhpCtIomOUWXzRPcxLfpGdOr9xn
	 fbUbWjtiWXzwNoziINSzLIAwclGvHXiyu9672cYNWpNp7oto5H0Pti41ohoLokMIAZ
	 CrbBJX/fuzYygmy05uXXiJ4aJbkMv1lOoveyHpDKrDsxe4Q4vtG2nAwMV+Jep+qxeK
	 uWp/I8geMaDunD3kNo81zGZs1ypP6rDnPCPkQ37UFlqu+5IrOTD9QIWXVGs+AGtZr8
	 I0HPBza4FRgT0EOBfsc9Pc20rFCuePM0Q2PQkBOHWJZynKnRnf4XAbxHgY27IoJeDk
	 o0a5MV/ZmKvlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966EFC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696375360.14992.15752021642064208579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6d04eed33f3ef37814b2d404bcb7b9a5f9051ced6a0d6c579a7c5ea2fecc4a
Date: Wed, 15 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736963753
