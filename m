Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE842C1590
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769200434; cv=none; b=lOrQNFngpoGNpGW94LjhSHGdjxn9egvJUg51b8gOea071YHLflKSt8aSSbnoLnOiYR7KeyAyWvAfA4lSt9Q+cgB0LCHYNtV+YmDQHQi5ituUjTVLqeDRTjk4/4Qx9smirUbV+R4vc8NXncNfKcE2SRdcY4ZVCHgjUoY90bl+FmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769200434; c=relaxed/simple;
	bh=fd5qFHuoJ1W8Swyh+FjgBQfrjEICBl26KuhvFSPWvrw=;
	h=To:Subject:From:Message-Id:Date; b=kcnyEwQx3M4GQKrV0pyTuMEALr1zEOeCLcEkQrmKbpIpqkf4zX71WyZ9m7n4hKwR3YlZb2oLXzltdSK/PKCv0Q9F+vGNe1s4epIUsVylZ0vIO9ISI03IfS2saGBqcJ1C3gZVgfmGDLWL8MzQwICHQks7ZxzkTVwVmZXjTx1h94Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKujbtIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKujbtIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0126C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769200433;
	bh=fd5qFHuoJ1W8Swyh+FjgBQfrjEICBl26KuhvFSPWvrw=;
	h=To:Subject:From:Date:From;
	b=WKujbtIHS7Z9WKIgVFTRaPqeSf6QFKR/+lko92VTcVjkH3oDR7Twlk3UXKzL3zPvY
	 yIRi1wSjuqJVKq27nKyMG00juUGNTJn1BrXedR4xo0nx3br5LI4yj4viLiIMbqOhz/
	 jWI84/W3ED3Zvl964y+d78D2SQbmJ5x/ios9INhQjt9K8tQSlUF9SGyBBdDQcJeDgE
	 6Jy62mTc3G8kISSG3579z0P3MNbAIGgEV2DqBSDUY01zCHB8WRx/wXTq1/fFH7OO73
	 OrEygWXPzlRfUJhtFbGZYTOcjWXZbcmPxWSuMjzB8l4qiiJ3OUm3yWixMwf9TDx1iu
	 m4AYnk776RWcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B5D778AE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920043358.24915.331989075033822300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f973eeddff78d50a8ea7335adade4b44cc9c178641b4bc9e632130e1f9dd03b4
Date: Fri, 23 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769200433
