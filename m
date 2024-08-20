Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3290C18E34F
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724140554; cv=none; b=K+lbpHKhxO/BoUx8iCQnVScRDMtcvQkT5E3IkM3yfFUuI1XYdcL3RFxQWPjhqJMiucx5LPYPb6SzLBGIO9Wv77+sAt2/+4JMNDqowi+n6vUNvf6nyeBnwfeAJOR/Yw4Uf9M8LfWhQRzdtO72XZ/JYXl1CIavWbU+s7yVDAPV//Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724140554; c=relaxed/simple;
	bh=JBhfiVjsuZkbu2ZVcBEkTif2/4x1MqvSa4vztHg8upM=;
	h=To:Subject:From:Message-Id:Date; b=Ntz+1gHK6Zlkk8CALnrxLlb8T6Fbrn1nwTdN7KDQ3BohCZkUBmlYXw9WV65OddySvS63K1uiucjOOZs5SFGzVJlWg7Fx+x6DQ7E9qBsT3P8D2rqHFMFIQPTcYPQF8lb4u8GYK9rnM6LjFRrjgF8c4rmGJbBxyP+UZXON8nvqX4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCBwBHPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCBwBHPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DAAC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724140553;
	bh=JBhfiVjsuZkbu2ZVcBEkTif2/4x1MqvSa4vztHg8upM=;
	h=To:Subject:From:Date:From;
	b=FCBwBHPcNGijI1wKuYlj6O083ncADj1ATW1xg4GW2A/NzPHVYPU62oON+6/ULP1ri
	 LcevC4971iGr6/qDPIDUDvWZMsxb5xTygyuaopcpaHkqZe7uZ25nQFISpXNrNuSv4N
	 0dfVh/3HmcpLB1iT35ZdpbBe5c098pfRYmXort4ceMc0ALw1uxfhAYbOJW2WbvNT01
	 9FMa15AOc5HHTLXuYWhRmdZzQnoUkHChaZLyCoJ9sGhLd51J0KdwbGDHjvrIdk9r6y
	 HHOEdY2kHE3jcYMYUI9oh+suRhizK2iUKqsGCs3D0nl/wmfXhSBwGz+Xu7G0gBxuO1
	 EGMtUrJ7nVc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DA2C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414055359.21281.11441933015445686043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9da9f31cf84ac4df2c11c63418175fc85f32c9778fa2a2e20ee0e79445b13cb
Date: Tue, 20 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724140553
