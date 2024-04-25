Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714D3535A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714030883; cv=none; b=lKXbLeuWrD+2sCojlR4N6z+06GEp5YN4AVYkTdawkDNbmpLV3nKcPk2kykmYXTAIJZca9X/+b5xR8P+XPP3in8cPrgV/4lC8evOJLag407gC87Q/Akuy5CBFJJ0c/btYdZi/krBxhmhg0ptRAw9yYulOwJGFt/2aQPtPQOXsaMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714030883; c=relaxed/simple;
	bh=1qq6+XD7JNX2BfUPHl682nKVLLgGkuhXInTBty2YRZg=;
	h=To:Subject:From:Message-Id:Date; b=kX5S3mfsI0qCMR4R2/lFGSlelhXhEliARbO+HoQ17TjFQTDCw/54OBC1/j4DNcdrO0jeNYVbLDXupLmq6+svqa6yAI8ip/Z0hGO0Z4wx5+BJf33fuwTdhqgMCTvRWaiHQ0K2H57QKnEbwND/nShXLTO0+WlVU9xrbiJVeshkoqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7TtkKeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7TtkKeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A33C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714030882;
	bh=1qq6+XD7JNX2BfUPHl682nKVLLgGkuhXInTBty2YRZg=;
	h=To:Subject:From:Date:From;
	b=K7TtkKeP31gWnjeOYaYdE7Zga+w6VWrrlJGpfd/EePl4jtqNqyMCUH1pAD9jYeb0a
	 m1PTvMS5W8J399Bb0ijnxBX604yppy7wDETRNyGHt7uOjcIYym+FtQQNB88MVb8/JR
	 ii1aUVjjE39gehsEqFO5it6FlgmqqlTVjZzrtj37N7By/lcD1vP5lIlnOYN63ze2IY
	 /gqOj0wArmNzqgbLOKDUC/62bHGdNTSGmNQqIhLp6iblPc++gVcj87k+gIeejBczKg
	 aYNPs5Hv98+U9LAVsoOIE5JTbq1+zcWlWDJtmGR6At99/FA+ceoS25dywHedHFu22w
	 a88Ds9/1yb+dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6461C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 07:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171403088286.12927.1431885157002682844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2c87cc9edc18735aabb1df8b8a9a42c64286710f991527e031a0756f163922
Date: Thu, 25 Apr 2024 07:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714030882
