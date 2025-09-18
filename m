Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF052BEC2E
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758199194; cv=none; b=jpCFm/ov3xIPdtg0TBWc10WY5sdNxeR1P+/lLkdPhY6U9DJqicRvKnGLgDKc8UA1AFZxP3daddbBJnHw5Fp6xPL+DAEixwD9VJwOPDPrprFGDgqVMCFjkAWceV8+fqxU9kg2g+KIFrD1V98XOlacKWs6Lde78CqO+E/gvT1uzL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758199194; c=relaxed/simple;
	bh=3zWClzUVxwKAySvYiVANFbJ3zrI8uL7CN7x/yrRWVAM=;
	h=To:Subject:From:Message-Id:Date; b=atPL4B+c1Hh475GWWy/hZmPM3SBxt6df9LpFFXcV+R9DhkBGF98p0luEawc2a0L9jpLEMA1yL6rwfvhrAM5Om0Me5PbuFad/L9SCwqoW6DHt2JF1fg+p5O5lcwlYYqY9pkgohU/4SCkvnz40c69g4ahEV67iOIgTdI2Gf65vAik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCd3rS3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCd3rS3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758199193;
	bh=3zWClzUVxwKAySvYiVANFbJ3zrI8uL7CN7x/yrRWVAM=;
	h=To:Subject:From:Date:From;
	b=uCd3rS3KTDaZDduvUMQOG0drOB9QQpKilS/5jzVpKGNXrZ481Aczt9NlLTAn+W9PS
	 uzHAztg7gElyhsVwbxF1nEqXqUOCI4IQaH7NzfznrEYu+clenaW+ocGxRdN6D0ah88
	 /enNE3ua1Deq+ukFfkYYpx0+avFpScarWxSplMZ/+SyRjCEwXRN4GTclEl56c9j53a
	 MkQixgGw65IIDDLMC4za5c4pBna7v22VLQ61Dh1+2YEx11C2B7QhtPjwkLVCPez7Sn
	 ch/1UzSNGV1raaxnoMZi6dMlKl+v7sh9oELNvQSUhxm4f4klkvIWsrLBBQxp+io08G
	 2lKS7ByfCWMag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23CCAC5A0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819919357.14231.8601180258384438219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e8b35df3b8e3efd9383a15eaf36f2aef0c81e6720e970774d091daebe465ca
Date: Thu, 18 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758199193
