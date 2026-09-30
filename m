Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BE5451986
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790797834; cv=none; b=oKfFHq3VtDb1q5DIpCTVv299aS23BH9XG8F/lmbSf0GRAF7nOsRFNmr6FZXSRzGrgs1t72tvJwngj9FrZM1xmMMztFqt4TtqSdJAORJqT4+9RTY42GHRDhSTtc+Axyzk5eVucCvRLWEONDZqZbIjMN1NoDb2/GPfN3lXkAoDay4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790797834; c=relaxed/simple;
	bh=Oc2FtOynlCgh3LGGtxSKYguTzDHQrslycK67IoBJdO4=;
	h=To:Subject:From:Message-Id:Date; b=Rnmmj9etEINY42a9YUqvmdLYxZRx9fbiaenyNd6jqcV4ks4Cy/3fQAMq9OBYQA6hzL8SXMHrWB4GxXZ86UCxSPMRoWQ8EOT5KpNDnOd/moQieuZTXkvsNw7Tt8iw+eho+ZCxlt3Cv9JI9Jhc9UdB2z6VHBBpykDLvilGyOYQuXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqHl0agn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqHl0agn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F95C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790797833;
	bh=Oc2FtOynlCgh3LGGtxSKYguTzDHQrslycK67IoBJdO4=;
	h=To:Subject:From:Date:From;
	b=nqHl0agn0HJBalzyMQkZkAFTx2X/xcmy+8NBtG8dbCfnYI9yrm+5x+TILcnefcvIE
	 bvX/whMV+wFa6aqDI5QVVWqJS+NGrnxMEdaGl52j7qubXpIDVCU0+0kYeEbuYmTdW+
	 BV8OKLrSLx4lc0tFXQMevObRTbKZ1RpjDk5XN5guVEa3bO2xI3uGS5Tgx/kIoDjbmw
	 NYg4eC2GJ4OctEdBC/b1h7OF9/7YqeQHyJCIwzUq6cfpMa2AWJgAEDlyew1tTJfDwF
	 nwvuwPCyscCXryoAIAwLV2zB6Bz1EmAByoicwGp1sdwaJXe7weYLczxcaS+YrI+oXG
	 qXuFzT7BiwHLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF915CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079783370.14183.14226503741567284088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78044cd3387c0bf27ec288da23fbde58625b6f299fe3629b76337aefc8e98767
Date: Wed, 30 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790797833
