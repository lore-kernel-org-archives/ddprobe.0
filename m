Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2028D2D738A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230094; cv=none; b=pDNEeBBOlhLDRc7egDCW2+OnpN5czTeTwPvTeqmqtU8+CJo5CwSsHvFzJ7/Lj5QHAzObgW9FOLIwh5ljI3IN1Ni1ANalD6DA7ReH8awtFNt0GBsaNMeDj/iGBfcgQQX8KV8dK2leqlwhpTW5amxatETpIozg5llXaLnxuwxFSIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230094; c=relaxed/simple;
	bh=PT8TAOu7RcVq1fiNXybgZ4vwsbKgZb0Vc/+ojnQO6Ew=;
	h=To:Subject:From:Message-Id:Date; b=Dkk7W8dZaO3ZpANVIy6Yn3aXT4EwKZfOU5svUWdZlOrix2ayYs8jPOMbHzzW+w1Okbwwvrs/1BIm+5F/oEAp4ZrVnoUMxLk/jKZ87W2AQPGbpynQIqom+QggmUsDDfDCzdk93XNQLOWOVzYYZqWiqtt1PODGkG661UsT708Z0Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihmdEgD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihmdEgD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0404C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773230093;
	bh=PT8TAOu7RcVq1fiNXybgZ4vwsbKgZb0Vc/+ojnQO6Ew=;
	h=To:Subject:From:Date:From;
	b=ihmdEgD7tQAbN7w7wN0yqCM/5PnI2EyYaK3R9JxqWJWvVXWlLThJgx6v2W4fM6pLy
	 JEytcxAkdubnmY+k1w0IxjKe0XAuLBoHNywGTXziQ2clZDtf7FCFR+89dLFJVrjYeb
	 XD0PnYCCQDHC1p5TP4gVeQSLCeHCgZSceRjoxRb8/7gXt9d34XFRIfz6bfGvimtdAZ
	 vZIe1F2PFH5fE9dMddiv/myXoL9UlQ5CpVd+8/xSRyrXGQfhX3kMTU38GKhDo3ncMz
	 DMYEktNUOaR15eQItOBR/8/jGSzXzdNpUE2QpvBPvJQaabMLhChHf2+qot7SghN1tz
	 JcBbVruDu7RMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90225106286B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323009358.14653.13587841595937039715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1a68956af5600242accc791862c9586db9d6bf9ef5c711bfa2bd1328090874
Date: Wed, 11 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773230093
