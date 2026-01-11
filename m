Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2492321767D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768172034; cv=none; b=WnpK1HZDGd6rUnRReMczDQCXAhko3xQ/tISf0y4zi4DmaVapiFqpftPWzazy1aVmFVkD3qk89EecQKfDEA9m0CyykVgQwuZwGPAFgRMt3kHUhPNStcVC+/UVl9/LaqpcltdW7zGsCnPVLDjG9n8Bf1858zvydhEGzQOY+PD1o2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768172034; c=relaxed/simple;
	bh=hccD78T8ODZh2PuMH/v3Baq34rlG8EbSQFU4DqfsNBI=;
	h=To:Subject:From:Message-Id:Date; b=egkARB/JMexWadhKRlcz037bU06ZKnJLyyEjptlFwyo4Dqzg5PNQfDlpzwRv8i06dkjHAEVp3p1UVA0fQez6hE68W6IOuQdDlOZ0h/4Od317KnaJ7yLFVQGipMb3HVNFKi6GgnWi/6du5up4mCGBwcsa59sdNL44UgqolQKb7v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5RUrZDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5RUrZDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3965C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768172033;
	bh=hccD78T8ODZh2PuMH/v3Baq34rlG8EbSQFU4DqfsNBI=;
	h=To:Subject:From:Date:From;
	b=a5RUrZDvczWJb1A2lsEF8qllkLqsTdzKIdsnQ8dTn97WJt3G58cGD0NuLK4rx4DN9
	 F+bi2Z3sZhCfm0dZe+7X6TT/xsZyFkzZobvSyH/1Br5Ja/qZLOH42+Du+Z901gXpP5
	 boij2G4gvwp14A5ZNIPk7A49xtaM+FxgdP4XwlFRsOwlXy78IxXYXTECgBnb9k0hSw
	 YychQE6Gh2mB3+nMrSLCFecIU0DBVc7Jz6JETY3W54FYX1bNoZjryKTJMlqUNofpEH
	 /puNhaSchVvKA8uOQSC9bhQqUsYt9EZ9H84P0MvDqBf+GvgvOD1iwBuryXCALrO55m
	 1og2V/sms4Ppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6E9D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817203359.9323.18151388038050710680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804b17dfb5d0fb3e5ff49d84d7ac1cff2f706df1ef84c20bf1d4517565dcafaa
Date: Sun, 11 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768172033
