Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44219CA6F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775312134; cv=none; b=uNsVuOS0aSVF1itpQDhPRw5LJt3J0GY8Z9snCf03GIVSG9lAudYQP1afxi04xphQT9i0RBjo9Xk8Rec+1sgRydvbYw1lm6yRd/CAx0T5laPnZFoDJuN0n8BNEkxZu/pwookUg5WLuaU5e1THa5VYrDUDRMlo+iQ+mgQPrT3ylas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775312134; c=relaxed/simple;
	bh=4vh4oKtmQtrQM9DofxC3XEle6TvWcSQKPShQ5v9ABsw=;
	h=To:Subject:From:Message-Id:Date; b=PiD4myu7Q/K4OJAfodVEMeUOFoCQtjao3pW+ydCBdAiNsxHD5BB+X75xn2rsi8m+z0dpwcJ4qKyHyW399gI1w9QB3Aa2nbomMB25gpQpf61EZIXebdjPAET3Y54GhdcGI87SV0yHWOkmnBuuX/s+HbLAcNvxbB2dpaMw2w6uY1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+/P5PcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+/P5PcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19C5C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775312133;
	bh=4vh4oKtmQtrQM9DofxC3XEle6TvWcSQKPShQ5v9ABsw=;
	h=To:Subject:From:Date:From;
	b=a+/P5PcGa988WTsQtfyZMrNUhHLuWS06eyuatepsLQu0UvpHkKI1dLx8Qh7X0w4Bj
	 w3Tc1cUSuWCYmMQwknrpQuAxotXqROhxEwBRRRDkwhfKJmHAnzOwn+1tQff4cUS+1h
	 tFVwQYwuAOHTDrMcpcvKMC6Tdc7KDCmhzYSe4YuNpYJhMf5YhWCgZaaK07a3GGWRCZ
	 XLgDt1kamw78Pk4xiahvUqNWHZaLseiE9qKRCZ8ZgVhIKWH7wapISStOXxqienWllc
	 g/Jk5zEmcVGP+DnlaLXak3NaSOdOU/fvyMl+SIsQSVRbaICRjYSCTUUr9uCv+X3ze9
	 AVawGCgH+o4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABE5E88D9D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 14:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531213368.21118.13154557347048508101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f488da7bc4a3e7decd5657e13a71a7845e764600326b97bf657c14bc9c5cf5d
Date: Sat, 04 Apr 2026 14:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775312133
