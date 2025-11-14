Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B763A1D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763084994; cv=none; b=eiOlXgnP9J0chP6vApzY4pzSeJmyWiiABs4j/Dlx4QNIXCJ0nT20GGBLXHyFLDOlJHqFOiA3hWpsBX7kY/QqKVHmbt5HGzShPIxPFrSH1oSt0OkH76ZvCPGe5cAKp+xPNiNQ5e5Z8jXeL36ieA7FKCXCMYmCTap2sHV9KA/f1o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763084994; c=relaxed/simple;
	bh=ePGpIj9jTI0gWNYYQ7klGqX+EEOT3aWfbq7z0ORI6rs=;
	h=To:Subject:From:Message-Id:Date; b=CxZTiFSgFrc4H1SpZM9hA0EhMPWiiicyU0mbUshfmgV8tDAhBrCRjRtKh4pjnTJQHhz1mCqR9CQPzv7FzNblQH0E2LZds8FFmBbR5RvpJRK8CaR/rUg2sGrhhOcVPpKkMS70I5GL45A6kFjmo3uW5HlUEuoKgroqzHK3aCVBWqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0oiwJV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0oiwJV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BE8C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763084993;
	bh=ePGpIj9jTI0gWNYYQ7klGqX+EEOT3aWfbq7z0ORI6rs=;
	h=To:Subject:From:Date:From;
	b=s0oiwJV1QY34Rda5ei+CSVOUpytW0p1riFmXcXFTrtRlRZOqyVwTa7IrS/cY2cDZG
	 jmE15vroxhdjlD23JAZtQ3BvqwfHDNSJX0IuIFSUq0I7d3k5rnd+Tv8w9XZQVHMStG
	 3fWsHiC+dp+AY+kTSkkX+deQAm5rB8UMioC2faCvuyw6PzrlAyIcLEUq8tE9UDDEa0
	 C77gW0CI6LSE2GAy0KXbSfJ10Lzy8v5xVGz7iIKODN1bZzHKfyD+mm/sEKALQ/t7ZS
	 4Ms9GJSIpwT63IoSSWRWSTOnWBeNO8vXhCuIsRQZdQI8dFLLZuBoXfECNiEpYycvWI
	 S/T5vsOE1+F4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E2CDB46C
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308499359.17976.492403379445152343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f268418ee3fa2877b43d8e7eae5b2205f1f01e6a07f91bdfc6b910cf605a1f3a
Date: Fri, 14 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763084993
