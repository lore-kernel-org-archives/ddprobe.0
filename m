Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E176F2F2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728163554; cv=none; b=J/bqF5LszvC6MqiUw6aOAm1QH9JBfBd63rKhpFzFwsA8gDzylpHAjrFuQkCZVQVeO5L3Ws3uCSrFqc7xagEG/hIJQ0k7fw/J5389oKk7/sASn/2ElGdXvQjIjr5X3f+0Z5xncsqrf191lTuYOBBN1z/m8FxTbKNjVTvPyCt9p4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728163554; c=relaxed/simple;
	bh=SyZDAl7Eh6iPdnMyMRRs2cb7w1+nian4iaF0b9D3WU4=;
	h=To:Subject:From:Message-Id:Date; b=D09sk6zk6I1wmv0nLgubdV/eBlAx/7pqmFuDcf3o7yumA94AtyoVqXs+c0DjYoLASav2H6aDxnKwYIkPzd5gKJQriECsQm4BKWMNIPMNhpPpya+0/LUheTa45mCMqpJTFABVlzPBtJvp7hyx7jLoRdqUSTUqa6srTvlYUnNvWb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bG9VOBTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bG9VOBTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3992C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728163553;
	bh=SyZDAl7Eh6iPdnMyMRRs2cb7w1+nian4iaF0b9D3WU4=;
	h=To:Subject:From:Date:From;
	b=bG9VOBTaGspReh2oTC81/xmzNA7c8EN9nOXDHk12VyaX/i7SE7bMDm0rf2izWwtTT
	 ZBHmsdUEZK4yPbPYyurOzO+NifqdYZjZMld1dON2KM4sEQypXJSvzy9AQBELJnyBhB
	 anxVo56u3odeo+O5MiiKZ2cRnbIY+GAwNCrJp1LNko0jxmPrVeZcoRw/g7y1+dwNLm
	 J6xeYzEdxPWrX3LKIUsKJWu1tZ4kaoEB71aierOwWhuGfdROPQzfitK/TwCBkZP4JL
	 nNiXNFJuXUpCuokcFvsiDRMPhQXQclUCteen1jf7aCYwkQOPviT+LhVc6bl1QlonPi
	 munvt2QXH331g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F818CFB43F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816355361.28560.17460236803799213800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bb95039bb8ff39328ba15a684319eb2cf69203832b41eb6c3aa786410bf192
Date: Sat, 05 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728163553
