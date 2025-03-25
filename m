Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBD025BABA
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742918394; cv=none; b=KD+FOqb0ADLj/JMRjEVthynktuG+eSX2qzBLaH7z720o/Ixu1Y3uXH8GM9FUPiyfFnoN/zw8J0zKB2loeUCtaQnv69hp7isoQ31c0ErIxDAazjU7zffOJb7fJ/OtsoDsDqOkV5XB54Lk4I4tiAsbx4j9s3oBwjdd+LMhBohuFII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742918394; c=relaxed/simple;
	bh=TE6cCRkM/um10X0dZx583m+D1VwjZeFia9NkDGu/bsg=;
	h=To:Subject:From:Message-Id:Date; b=TsFhIAx6x46F01GfRDfA3tHQ4pJ/wmGe2wA3PTDt4qWfz83MyD3TYBhtRwGFZzhiAGsrPfAm73h+++ZvbBMEKtBMG5p7gTpmNqke/8dxGlIKCDctsxL6Rwqq3hbHJvcON+1g7H6d05+SMQIdAlrWfHGuwZi0cCf7Yovg1qVxYtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlFQhhA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlFQhhA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2561C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742918393;
	bh=TE6cCRkM/um10X0dZx583m+D1VwjZeFia9NkDGu/bsg=;
	h=To:Subject:From:Date:From;
	b=nlFQhhA/TNEsbs5rXPtbsD0s8nHAqlSmmRLMT5Z0z0TXhv3eBjIluZwAQbp0D+aRG
	 DQoDdPPdrY+j03T41Rit9ekjK2o4uIHJo8l7wwRImyIsxiA2sG3HmaDu9H8/VWmonl
	 XKDE5sRzATZ438kKimh4YvE2p6Abjdy7uHsITzhi/ncru/JOLWxm034Bx9x5ZSNM5Z
	 /eMQdKsTVwGupuT9EIHv5C3Yrcbv9Fk7Qau/3OD5JpEwBrmkCri1WdUD3Y4aPqU8ki
	 ehUtOf40/dT58G7iZ59yRrCIn5/6he8G83b7oq5h0S706JWheumFUgdwl5Q/iOvdx7
	 jEkrNol3OixmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937CAC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291839359.26634.18438142345548177060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d822762d23f540767dd10de4bf38037f47e3a8eeac29be33f1582cfb4ddcc1c
Date: Tue, 25 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742918393
