Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC9020ED
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722314154; cv=none; b=FPps1wOFC9w1w0mL2/wmqBab2Yqvma5Qd5nxAlQomu7iKUK+tctpJbolD7LGm6ULQtNHhsyjL6lm48mE1hUrF4sDEcnCrFbMd0IW35Bgy7+1XwO74GNpIKLmzMDT6M3JKCfxXNboXtNiihLcBnLGybZtnh9JHBRPY1AjN1mSF7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722314154; c=relaxed/simple;
	bh=x8QPWeqhRBRYwjH99PGAWRRTOl6iTGRFZcZ6rWnyWYs=;
	h=To:Subject:From:Message-Id:Date; b=TlfHoHUdeomg/+trZ4N+oapIYINw9N9xhL/GvkL4Mc5LODp5KnJcVKTyeyqutsgm/FrDNwjTfGJ9d07j5NrGg2sZs9DzS91eBvHodWzKDZyScBwvvCXTwGHMhG1J3BAbdhLy4xv4W84KyxBH54oPaPAuKrfhDuK6WDmlwIo5VMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvRCajnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvRCajnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A902DC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722314153;
	bh=x8QPWeqhRBRYwjH99PGAWRRTOl6iTGRFZcZ6rWnyWYs=;
	h=To:Subject:From:Date:From;
	b=kvRCajnlF5W8qnCOwHc4kTH/NRSMNlShaWZYKGqq5hwpuda1Ga10qh69TpwKTU+V/
	 Dm/OjhuxVfk7cb3txo46UVnaaF4vpTZjZ54qUKf1rZwNfROUAbBllHnXSaXo0LVEQc
	 pAmiqeRcvd7PVv1x8JcmjGUTiUBB5HKNpezi7xcG1nOkRm+Cjzk+tMbuG/TOAktkPe
	 NPZ+Mfamjyt3uD3IHG+t//5K638IfCFvPmd2ydkwZk1PxI6qA7WB7gmico96TPtey0
	 e1mMa6Okb7IA9m343SiXf9C33JK7I461ZpXxy7v+qePoAtbEYlKP1wSwvkl/UufflG
	 F46zvGHO1J3vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94866C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172231415359.29637.2330463595704466040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e283765c88b0e4f879cf8dc43b924cb9f48f7619b949b1e38563417d89c62d
Date: Tue, 30 Jul 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722314153
