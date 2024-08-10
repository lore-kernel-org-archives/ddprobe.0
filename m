Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE39101EE
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723260354; cv=none; b=Ym7qlqckZbXM7jEVLBNO8zzd9b6c1jrJ6Ali7kwyaHcQI7zfvGkS/5L5Is2GcdhrxZTEp2JRPsC0V11ZCbD4IZ2PrP2GImxJ3tHJnxn/255Ab77+mqdncdEO8PD5RULOzCUB3Ggh/Yvk2ml2VMIBAIbjGRIu9MTwpKxiYl1Tc4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723260354; c=relaxed/simple;
	bh=zx7matPcMYuAa3KyQJVlLPjupA7wh96c52GKdP2R1dw=;
	h=To:Subject:From:Message-Id:Date; b=htYVur8AGwWyo8+2ubgsiFgNMGtD9r1wA9cdsUtuwBH6bJsZtjYQKXmdqQzSAWbJRPrmfdCtucj/HkfUMQbfCf1gR3BSfeWQQsKjILdjAzPtnAf9/YNqms8lgNp12EAKf+TdhBsursqgWq08btq5zw/rz9AlWeWZ+YxEUoRGPjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg6gNRwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg6gNRwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C1C32782
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723260353;
	bh=zx7matPcMYuAa3KyQJVlLPjupA7wh96c52GKdP2R1dw=;
	h=To:Subject:From:Date:From;
	b=fg6gNRwTv2Qhtcf5fR1p+kK6xiXbGoZtQvtXs0B7CDMj0wh4nZJdVJrSYC1LrMrs3
	 aBugcqoy67ohSddEWgQBjsUogZ3NU1pGXfOTZt21mqFB72iUAFMjjJ55rWTq40B6WJ
	 VGwwygC7yU13ufN2iHqkQjyaSzJc4yOOkVrw3A5vO7PnAu1Pj9ZsJVReQRE1qzkcC/
	 wDGSRuuHf9hMoKv690mT7p082c1KhLg3dUhJc7d1x25gwKqqN8bnm9beQkGYn9OhCW
	 gDq5y2TQh2zT8Hr4eSvKyXd4pOAE5uW1jze8aG3m2wCiVT7ALYIqHY3aCntCN13yq5
	 YKXfnkM8JMDmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941ADC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172326035358.877.8568414010979642603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdb3f85358e2324e2348ced29fdda8e229632a6bcd25e68f57a0e0e688f76e4
Date: Sat, 10 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723260353
