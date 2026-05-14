Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275B121257E
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778733634; cv=none; b=CVW96vtNkEpaBQRvYwmgITJQLehp0lTKCtPBxfawm0mhLDX3ZwVdWe4xekabk5vJ7mRV0kJ8I2xmRdCnNK05DkoHkDyCiPmw1ztN3jgVanona8a5ROwHw8TDHxkTN6Q8j7dp6TJSM07B1Gz1Td/uZNvtPA9SRJtlxUtXdgz32ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778733634; c=relaxed/simple;
	bh=m1JEj8s8aBuQSSxFXAEFF63CR6jfyv73smR/OATlTcY=;
	h=To:Subject:From:Message-Id:Date; b=DVGdAechwB0yZvl/Ly91qD2aIg7Jo2DzMwdCxAofmJli8/JnCYyuEbwiIcJrxb/Aag9B7V9tkrPEQLU4iVFYRvxZ8VMSnbbvKYhS+2wBzCsOjF/nMKESbMam8EFGvzEpoEa70xYoW0hJTv9gkNu5mAwKYT1uf+hf1SCvFtw4Y9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONVlPc76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONVlPc76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4FFC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778733633;
	bh=m1JEj8s8aBuQSSxFXAEFF63CR6jfyv73smR/OATlTcY=;
	h=To:Subject:From:Date:From;
	b=ONVlPc766Ac63qaUHUaG8f5CDB2i2Z2RVo+9b4SW+7a9VUySx+5liegm//HOw4TuO
	 yKGK4c59yY85BBJQnLZ6dGSIHV3d0exlU1m3TAy96gJFihC0+8i7JMJ5ZaGhJTQquG
	 COXgZJtzemhYqh502s1w6fspA6V2LOvWBZCx167uPHm0QDieIQEeNxH8vCD7r1eWRS
	 q+LyXi/WLxea66AVsLv7efDj2cY+qJmub2saCVBW7px772Fax9Oc7oTeUgCZduQNlM
	 1rrkfMW3RMonCfaE/B2MhdEgWvbjA03q3hDv2iYhI4ouDxcvUMcJTKtS4Ju3QVBLTx
	 NJTq4YSt9edkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB230CD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873363369.5807.13567164208204784908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55bfb1bc4d751bdc70ea9575e65bf958c59804b7e44ad9c9b2ef886150e8bad
Date: Thu, 14 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778733633
