Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD7D231C85
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728188154; cv=none; b=Rrm5QRMJZ5ANk0t9FvNhlCY4d2VdVJVuISz5IWnphEXUG29aftH9Ps/JnplvasbKahGBLhhKHuZN/rxuv51OwckMCASD6Z1g5+29s3z536nTAZJdMUwvJOqVY7dpvKYlFbwzoQ3XsZI3NaNP9ojypbx7bqfGX0psuWNdd2a/AqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728188154; c=relaxed/simple;
	bh=ngnptUCDYGOQluLU76r1Tyeg6dWf3m8n1cQhNckXROA=;
	h=To:Subject:From:Message-Id:Date; b=lj9JApDWEFufDBKv83aqGxKpofo7ZZ/0VH1P/8Lle1fWCLmclILZHwsR7KysMIn1d1XWGxMv2u9QcoinhNT/qBNd2ok09DF6yClxBLckN3lqkXDXrXWgcKO6mKSGgjxswsBY5Mtyk5JA5+Yxdh74BfASL2KMdyktbnc3MrEgzEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jH2+xVN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jH2+xVN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6637C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728188153;
	bh=ngnptUCDYGOQluLU76r1Tyeg6dWf3m8n1cQhNckXROA=;
	h=To:Subject:From:Date:From;
	b=jH2+xVN08ZweMlbgPBtTuKg674/NHfoDHpxIlsrcADEnfOr4buogNOYyyeKwv+wf2
	 kc7GB3eHPflLr647uTi7Ustc7EIUBv33ZSUAp9hKrLv5M8m00Z6Ksy13WqbU9WQ5XY
	 Uae9HsZr0dtgAr2hy4Yno8+4Gebnj3oPyA3g9971oZHXdT7PXaLcr/V2rH4z2wZwyi
	 pae7yJxAn/9bmaICi8lakEwfKxN0NXLm23F+BKD+cQ5Zc5rKYfXAw2qNmJg5zK5MDv
	 U2D26kyYY+hKoMasRm1CoyW96rVZ8feuPnD5zpJfi2L8eU0OqkTaezPl4tZ/4yaXe4
	 EuIHILcQnFarg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9879ACFB442
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172818815359.10768.8232239555616846709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb3d53414f8b2f6ec134ac8602f328c4cea07de8a4242f3e7d95c26ab75ae66
Date: Sun, 06 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728188153
