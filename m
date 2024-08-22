Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFD8170A2B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724317554; cv=none; b=k97yglttq4/rkablV8OuDIVnIlLqf9a0Ud7TH72QrwwHfgepAUINNV9/5aSKv98wLhXJRVkp+w8e44/OoQLf35f735hvdUQqdcoUfw0GUwL157Yy4PsYuGPtusBKcapnmDIc/cNVpOFGktp3Qz9xpZ9rs3+0X7wWKnDEO2P6u0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724317554; c=relaxed/simple;
	bh=nbVu0RSi2JyVJXENuX1d6lYNTzb05/n9cchkxXxIwcA=;
	h=To:Subject:From:Message-Id:Date; b=RiFpPrLPkSykMcYi/W5eTj06WUjYwS0EIj+kKm8Nb+jM/39CmnmqIfYGOVKPfKzAoUfwowUByLTAoSZ8VYsL4fqRyb8spumv8PBug30eL4bZhdp3591OIfeihuLO828gHYC8be+et9HSZjqUUF/IlBKgzPVdsyMs5JzfPJqTmVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G89fZVk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G89fZVk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C7CC4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724317553;
	bh=nbVu0RSi2JyVJXENuX1d6lYNTzb05/n9cchkxXxIwcA=;
	h=To:Subject:From:Date:From;
	b=G89fZVk0W2H3k13t+UkxcVic2Ont+poidclKVc1PPeJ5hQalTUAVyX0e8wPCM1l42
	 9nMls+14apVRhgwDo3QZ6jviOJp1XVlTD7cRyRnN3jnQ27ZlQyKUv6d6MmgRKDM5h8
	 eD10ohUEu2XG4X8BXRB5Yr1z/pVoelsFCXCCNZDfdm3krQblLn3esNxPg3dzvGji51
	 wRH+C9tcyFV/g7SmAoh/xiNUJmyBGa5898QqiX7n8Dl11dTuLYtjMGA6Nn5S46BERT
	 LZSfpPVgnc6EQX2MFOml7CJTek14V59Z1FMuPBMgkhufcv5ivsiQbE5Gk3PW8Wmo3d
	 4RTwxmrMzS7wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B403C5320E
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172431755362.23787.7886817235575396268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4b343e71b74f5980f5d056aeeb0161b14c42e62e4d0430ec40fc885cd8cc3d
Date: Thu, 22 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724317553
