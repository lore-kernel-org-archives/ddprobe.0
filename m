Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278BE53AC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741937334; cv=none; b=IpQ9c7Cfi4o5osXh6WZV9B+VTlhhMVhlpiOaENUwzqVPFwuAwiHksleh80PHoae2AJgBZTuD+HSagwjjjtDeEB4dZ0XLl5nPSWNBz+jq0HQkBo8hfzfxWDqMCnILtkTkark4VlgCHwPm9wSDshaYw8MtfnaZ1bKPwosUeqacsiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741937334; c=relaxed/simple;
	bh=dqezNR1CzXFFu8MCBnoaDrCMRZ2ygaUv8GoWXtU91H4=;
	h=To:Subject:From:Message-Id:Date; b=VNQAtVLwe3lHl6QExiStPlAbat8FcSEUqj/leqU/JDDBtPpxm/skJ4vUlZCtpUT1mWIJd+Su7JAknnzadBlh6fZbIHRhXSJgdhcbOAvbfW9TX72PpgmRXL+E6N4NWwngziZb6e7i7rZmGcs26mziJ3sKgLByhF4nft20bqB5nFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZ7foL4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZ7foL4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F05C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741937333;
	bh=dqezNR1CzXFFu8MCBnoaDrCMRZ2ygaUv8GoWXtU91H4=;
	h=To:Subject:From:Date:From;
	b=nZ7foL4P9KrebgPW++i7O2I2fS15WynfVRr7AE5vETM0AsJ/3XgicZWaFhF9hMKiT
	 rAyLuWXIEDwZmfiCe9A86A/C1V26XhJKME9uBfWK76CQ7VCaeh47XDnO+sEm+3x3v+
	 GiJ6cHtsShoGUPY3YWcmWTWy8uT5v9Casn4s6lJSNPDtqahP9zTgurVbElwjULLBun
	 GV6ldi1BUokHxClpdOefzG9uJ3oBY5Cf6uY4KLCTTB4gU7kioR38qwM3uDBK8Z5lh3
	 RoUV8iKv1Ije5rqRm1uUQiQTutnQtDqSQggV91Ry5NXhJkwhpRVy5CzNY0VnU4IceU
	 sGL+yAgbPXjfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DFDC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193733358.3760.13849118753199407209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8d5d931c089f9937e38f26df97c5ec35c87fb2e04ef5887b6d36d37186d68a
Date: Fri, 14 Mar 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741937333
