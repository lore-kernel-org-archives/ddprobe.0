Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF46250BEC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774284894; cv=none; b=a7Xx+PC3lPei2Iw/nmmJlC+8ftB+YTgDp9TbTSJdDwfapMy0Vg/Xxk88nuKIu3Yxh5WNdmaSd91a9PKd7tvf9oyv5HNfQBRW4Mf7Z4bkYMUl72i5q4iYkjleWBmnJ5CSdB7OlUPv+2LL7RvL8NkDk8j0v1kM8W00+Y4ljt3xUGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774284894; c=relaxed/simple;
	bh=ysbZ5c/PaGzMlfYnnxY491VTHc6RWuTYUy2JNX/dyjY=;
	h=To:Subject:From:Message-Id:Date; b=bd3sAnSHDQ40XCGwxZJCZrVpr7zCTA4hkRD8DxfKT/Z9cO/f7PSXqFuyA1dQwlko9vekwqOwaKMeX3Bt/Oun1F66cLEVIMZPyZ0X2R+dBjx9SS94ChtIROrrVvYSE+t6VKdhzN+pbVmWMeT7Ah1qpIpgj4ILdyrZ+ldwmaZGc6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jozTvCFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jozTvCFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEE3C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774284893;
	bh=ysbZ5c/PaGzMlfYnnxY491VTHc6RWuTYUy2JNX/dyjY=;
	h=To:Subject:From:Date:From;
	b=jozTvCFeweTDSjsZv5CGDHpmXOeSTdH/3lVJURE6KGbJS3TSTW08WtYbJ1js03ssg
	 52Sfl97B3mRgHAUtU/gOU3sh3Crctp1Qfg2j2JUznQuwJtzuVrqT0IYh+74xJVsvO8
	 LUun6oEKDq8Ky7qr4HpEtZE+BZZANKxQklMV3kld30m/iJ30nX9IBTsjaar5HjEg+i
	 aDDix5BAH6kVwHJTDWOIl4aRNr1oLKlDb7WIMQLFiGwKUWcwsh5Jp48s5LhQduoRaq
	 lZm3V216iOJ9IW2JEBCtlES75BNaeFDrBA3eUiXv6JozBiDBBWiIk6leLDGBonyC1W
	 FAIc2uailxPbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CFFF483CC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428489359.28355.18392646663760761698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1abfcc3f59682b195073a8031e244cbed8e6b2778046a79dfb075f1124b794
Date: Mon, 23 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774284893
