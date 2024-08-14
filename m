Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F007346D
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723672554; cv=none; b=eKLngIDuX0joFvMeR3y5DMNLjD2iSzeXlQ20q5rIQUd6Mf9qd4rATtSOSY6w97YNndJmP1o3jkaUKMf9z6sCQ9izs3ruHDMvLxhQbgf8hixh0lDk3SKSRtMwT+NmMoXL5VNCeEUCA6dsffOdogww7brEG4BWEexNFeXL9K24Xgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723672554; c=relaxed/simple;
	bh=GLr8p83KAFUGsEimyUSqHLruXIakreBC/yIBSuYlXsY=;
	h=To:Subject:From:Message-Id:Date; b=Wr0c4JFupPdZ91g/7JrD+Y/6gVjWG72po3ePUmKbjsA0G0/ed3lQrNkDscwCwk3DWnm82rvEew7eBJObDd/toE3cAWL89v96h48F9bIqC6R1auXX5r6c9QKlWG9YBlctwm29IR2RdnK+pxWCfv0IWbdy75PQzk0Moi3nO7wqJME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLukSwa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLukSwa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43E7C116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723672553;
	bh=GLr8p83KAFUGsEimyUSqHLruXIakreBC/yIBSuYlXsY=;
	h=To:Subject:From:Date:From;
	b=aLukSwa63DoEXnCLDIyTcD4oDxPkqX1sAz0S8gX8nux4Sot9Lhxtl4Ti/WNh33jre
	 dkK57iX9CIZur6UIyvEzvHgbwIWuo6eUTxcFe96/lD/eSBGR6CEcxuXF2q89PmJoZ1
	 C1mOGoJeRwFH2UC4QzCU0snRUDvrOFYcWW7j9MvxIaR2Zkxg9h/XTB5ZBMfPV7Ld7f
	 +/YswEIdI2ecYT4HMj66wr1PjnUJVGxFg3Wbyg668s9x4IYMKSBU4phIoRw3SvGBHD
	 oEmmabL8DEOhDEHtvfFRMntoya/JP45PIHzpWMNM9tM7p5TNeYYEPOSYPKNOuVmQCA
	 STScuAZ4HD+Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B453C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172367255359.23365.13791500275801142964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eadfc2b6e348ec2d033b376a691420ffd3e987400cc2cf9821c8ac178a4d34ac
Date: Wed, 14 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723672553
