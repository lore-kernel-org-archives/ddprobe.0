Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209A35FDA7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786580434; cv=none; b=uZu/jyfy2qZfeCwpK4Na5AjfbaYt66pfnh9O7Xez3AqyaOnMoJ3tWRm2PdSooeUfEbQPJxIa5OGzB/NSpk0Tu2DodxkBDMn/sFisSxnhT7d8ppNHiWwFDIK4mcKQ38sLwPfIwvMvje7yexpelVbMa0ywuNFivT/KNIGSEckKyRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786580434; c=relaxed/simple;
	bh=XHJHb3nYf+Dz/Iuz8H/fL7cbtVTMjg4k1WjG921Sm2Y=;
	h=To:Subject:From:Message-Id:Date; b=s0PmYUVXGsqOdAuH5v/sxXP8zEQKfCf+Ct2Er7R7vx/48aPKFU7h0w8EMANz8n3j0Wi7XCYyk1Tonrns4t+GCZOrxW0CfUyIyFijdQBPolyU8eBrE5qiWPCpwwqmnQN4A6Pooiih/OoFxlLhwyXYo68bUHKFR7AnX0svVHEDP2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haji+RVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haji+RVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3F3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786580433;
	bh=XHJHb3nYf+Dz/Iuz8H/fL7cbtVTMjg4k1WjG921Sm2Y=;
	h=To:Subject:From:Date:From;
	b=haji+RVpocT3ni/cq98k/3+vfLIIPNpdlNzuo2UEuCQLG/exGV3LkhcKJU+XbQQ4g
	 BxPqHVw2re4JYMHwyGhUqFi96obki1XGmSSafzFH3YYMsngX3UW1LthizLVmo1T/3t
	 KSjOEhqYymPLXyg7omUJPZnod4BpHvzukyw4rWZ2j16z2uFyLMZbT42T/y15HK05bM
	 riqGd5AOsfOycARdoUMzLIuhCeP6zdrVlwQohZn+LQBAyUKj5sTHgrVGnd4qydTBPA
	 JWjow9b59BWZOULUleuN2rQbEhm6yPug/z2wTL8y1UBvMP/OF9w2S+WiHiITHL/4SH
	 +jZsV7ePwbBbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DFDC5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658043368.29686.11527130631361890427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965037242a68ba468c5e4e739359dcce466a001bd0ddf713015e87356e0877b9
Date: Thu, 13 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786580433
