Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAE714F9EB
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718803763; cv=none; b=Fc8kRbIzRnSVyTJXJ45aqR07YfLB8nn27VFM2xSSixNWnor2Yinh7meCACGK4GeFh9l0OBqd38zyQA67jSHRaBc/ZteqYFqmiMBz8t+PvXfV6JjfY3I+3GM1jw0mr/hDMSVaT1PatlyC/3YnSAjERtQdf2tosF6HsW4s0BU6FU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718803763; c=relaxed/simple;
	bh=sZcfwkmSt/+Xk//QluUUdNM7mxHEiq20wpp2DgOMrZM=;
	h=To:Subject:From:Message-Id:Date; b=gA7FESBTYwS+EaDhu3YzD1L7wAR5rGFqomc5QT9iE6zjMuBz4mJTybbjvtUW7/T8qMTjO1qCEZJOnbMdRSNqjhXcEgXYssQ4NdknDaW1QkO/N8pN3yy4JYG1287enyuneRpVUV3Gi0Mrzc8AtfiCRA2RR2EE88IZP5q3VoP1zPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVDwFuYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVDwFuYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAD8C4AF51
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718803762;
	bh=sZcfwkmSt/+Xk//QluUUdNM7mxHEiq20wpp2DgOMrZM=;
	h=To:Subject:From:Date:From;
	b=hVDwFuYdE8TFa4mCpTfmAc/p0As511++4HQ7TnqW/OM3vx/n8bJ++oEr+pQlvtmA0
	 w7oUUcEhxykAe3TeDQQ5NZKwcg2RJA0qp5VrsvL4JSG2JqYKauEyF9lI61JVC4vN4z
	 rXc4ogdd6BdXBt+oZ5v/TAmGFTZJBqOj6nSmNiPCxga/rB0ge+tlYPb7i2c6VBlC+m
	 fFFUa4pYUL8G2oa36aFX5qub4NcPG2jKjNAhxnIy55TBNnhDchm0HTV8hPz3kZrqdT
	 wVTBNvTfr2wCrb6SdnUEiJhbGODTYLNa1jKcLyufMWDnCRnbvLG+OwG30dI2Ff216I
	 RvhP7ECFLUPew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E3CC2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880376280.9693.5603934268347995036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1dffb046f7b10592d2634302fa4c5fec612a88adfdaa4f82e931295a99582f3
Date: Wed, 19 Jun 2024 13:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718803762
