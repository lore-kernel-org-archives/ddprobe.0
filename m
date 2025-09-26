Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2142E3FE7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758921595; cv=none; b=hJKzruZvCK7x6g9VK7s7kdenT/TQa/54Yqe/1JlN/JFxeTGhv/HC6zQ4I8CkSYJuZCcvRmUjDlVoHmLWMHJekUZQrw7mv1pO+ksuAA0YuVX8a0X1dh/bjSLg9lvum8AKs/Tby6vI/5gAPqDTi4sFzXxoAq3kkLIgZZMv5Cjmjco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758921595; c=relaxed/simple;
	bh=uDaDGLneg5eR1Loo6n5arYCNffTsAdcRYG1MSyNvUBs=;
	h=To:Subject:From:Message-Id:Date; b=Wt5qlzzI3IrP9z9loA3FWqoxxFqfwua2GuN/wq1aMyXA3Af/vMtsK85j/6LQThBFcZzsoaj3eC0TOB2SB5C7EfSy/wD3/TfOKqWFWzJHgvWImG2X/d0k2cLC2tyOUKJiHW99vygMRHC6EGqdpvC0/EZ6Dfxg/YW39ASZjxq50qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFV2CViO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFV2CViO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B9C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758921593;
	bh=uDaDGLneg5eR1Loo6n5arYCNffTsAdcRYG1MSyNvUBs=;
	h=To:Subject:From:Date:From;
	b=FFV2CViOBO5bZ1v6nJgsGaybSSf2SlnHIdiNo83lumPYT57hFzmnxwtsnrz+KWDPF
	 ueMgBYYVES1hFFYEkU3BjA3AWa4zdqu7tKxXuvBMPCgxxomvMN9INnG7d+wmRV1XpR
	 haw3MyHYJgiYmnSBdrakVFMjSzAIR8tKO3/2wvj8r9W5ue0qQSg5Lsu9CPC0k/Xega
	 mLmBUNu04FEy2O162EuTZJ55bgNH6BqX+g0xKpb6HaHCCrKbX+xB7Buvy8URFzBJa2
	 eGBDY0/s51G0F/jfAJVz1x2OIolXSueWf9osKxUKxUV8FKSKOrSAXUubV9OPaliiQ0
	 W5liSbmEXZTMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E72CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892159358.1578.14423961946424926421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144477614fba37d14cd6dc2d35449d5fe3318fe056f5d8501be57731c31b51c6
Date: Fri, 26 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758921593
