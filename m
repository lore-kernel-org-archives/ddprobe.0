Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7D5224AE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746513594; cv=none; b=FwBlUtnfkJSke0fBl6+keE21vd4KrnoHXjKr+3PE+5uUvOtxbgapo1fTTOMhdMwLQiF5FRqvX9sSXSPtl8PR8M81irppa/O402f1syJlZoBYHtYeNk5JBL7qfZqf4ZcqmbIaImezyARCjuacT9gR0kCyGb+4u+cfDO7PIxmaEL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746513594; c=relaxed/simple;
	bh=zPfDM+o83N6z59RLGXFwQcP59RMBEIlPRBr3mFOEJNE=;
	h=To:Subject:From:Message-Id:Date; b=SAqmlwevYLl4I2fpskKaSTG5SZhy6cec85fzOkD2afdXd3BZ00jhAwccjpPR9Qnv4b3tCKcprl5kZga0bUi0aGtcmpRqBOPfTNX1yJPj9yc+USXaTiu8S89Mf1EUP5y9+inUIZnPq5ZZL4qoB07hnwKbcn5/hh0y8atR1gXVoT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVjlLfFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVjlLfFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A396AC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746513593;
	bh=zPfDM+o83N6z59RLGXFwQcP59RMBEIlPRBr3mFOEJNE=;
	h=To:Subject:From:Date:From;
	b=hVjlLfFR6VfcmB8bLpv9Omvq67Uiks1NV5cNSySmywccTonKhD8OL1TSSMahGlwnn
	 ATe65ivwVD5hgrdFYXlXv/IXeQVe/Ze1txRvTtsE+8FDxk8IJ9mhRNYVbu1XZC+y2s
	 kGoPqfet8/Dr+0rgWRbmAV3XTQCJDSwUFzmgz8q7X1GdW/By60yebEWStGtHm0JLKq
	 TNNWU4mqecSqImm1fM1F606sbaLKgQANJfPnq6adfLHhPiCl3j/mgZRXsd4HEfkr8j
	 G7abFl+e40vPz/brDzT/4y2WLbwmJ0Hpvvq2YMBf4e07IAATcBP0nZvSc8xxLYmUdo
	 7AvNme8LdXBcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE2C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651359357.20832.8641291227089039545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f642992c0086086ea37f5121c31f44812ce8133fbe2bf8bebd0da1b5cd50523d
Date: Tue, 06 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746513593
