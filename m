Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C29396587
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773341694; cv=none; b=PxIxjZe0U6pQNcIacVirIpmAjBrY6Rr9gg0h69JWPtx8dEg11nL8q17Lpux2Od0vdkVcWNt7TSWD4XfbYhY95Aa5m5jJADjcO+IsKQFkmKuNboyGH9FTbZ/4aFUX1BPBxsdjVqlidcQYTLMHPM0osbinvrWV7FhhJTnCs7luHyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773341694; c=relaxed/simple;
	bh=yxkuNgiq01sY8mqszX7aJvYinlHkCPVyDTUlwDgDiCI=;
	h=To:Subject:From:Message-Id:Date; b=CqP3qu2uCjSxKoZX6CqUYsihPBK04xmFW+NGxSTU+dBfbaqspiYIv6kPozau7bBvK10k1YnnwQPC+wJ8YJH0w0nvg13SNnHVHfze9MhYi0o3L3aMI2YjVFRH2Qpv6Vb54XGEhC3S+DhT4JhMBNZWUvephu60zhMJaTg2ij+zqcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1omEQwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1omEQwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F80C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773341693;
	bh=yxkuNgiq01sY8mqszX7aJvYinlHkCPVyDTUlwDgDiCI=;
	h=To:Subject:From:Date:From;
	b=L1omEQwTYsGMnILQrj1wnlEw/E9zSflo1EytTY9IRB2Vij/xbdpauTdTszb6HLqs7
	 7SCqALefQySOYk3vwTcE0E0XY0ePM8JLgjw7xtKQxnXT2PXF6fBZnfCwwjbjBEo9tA
	 ARyO2O0hUKTuoGI4WB6jmcssOoK8fr4oeY88XccnJb+F90TqEhTrptV3lLB+K1FCk4
	 T6l7aoUzHbtkMDne2JvemK9kyflXUdsFBlDjSWqFn5iLEokHcy71IJv5FzwqXwhRAS
	 OkXcxfw7iF7d0Y28wtcu7jl67RvAhUlPNacyxAKFaWo2e96ccR5fGjVVXhxeOlGzbk
	 Em6zao4aEzVPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9460D106ACDC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334169359.11201.3194581785705817267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14defb9c442e06de7195f7969c75146cddcd32d6743adbba3bd864648afee749
Date: Thu, 12 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773341693
