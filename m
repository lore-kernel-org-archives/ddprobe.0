Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEC681751
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727163954; cv=none; b=ZZXGc3dvIGCnJ4/Vn/9qpJM2laZIxh/JM5KK1Q8MJTfrt4/S4CGjZO1/dJWRZqSD1DmD0+ODG4SaeBoYDzYG6vk2lDPHciZdTeapSTPJ64hJTQg+ubf0s4lN82fty5jcDgjWqCKfrjb67yd1uL/nzRSk3Y8YQF3LctBLTAOXWe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727163954; c=relaxed/simple;
	bh=mRmJRgSPegjGleV0pJ9F9zUzJ35foXacZ4XjI2N4XnQ=;
	h=To:Subject:From:Message-Id:Date; b=IfP1gYfb5uMNDa/Fni7Omw2Orw5JnC1PUok2WhikhaRj5vBEY4LtJOkNRZ9hL2wy0Ylb6XPXlalWR5fQNGrgvkT3v3BEHVf+UinCPnmfH8fUP7n1cJyO83sd/daigAbtYWN60JUsOc57wu70ZZEKuWgQkGfXnDoSzg1mLkafDHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJYw+OqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJYw+OqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AD3C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727163953;
	bh=mRmJRgSPegjGleV0pJ9F9zUzJ35foXacZ4XjI2N4XnQ=;
	h=To:Subject:From:Date:From;
	b=hJYw+OqXged7g3C2ARchSMBoUgG1eBxnpaEEZn2AyDcX78seGZye7WI/wIWsNOoo8
	 /1FPRO2Mpkjsf9Y6KXX8kLpD1fe0VLaz+tQxO43R7IlGHfnKnBysrXd8C1hxyLVuSb
	 QGG7ycjv5lo99GLgw+TQTytMh8TvE0QmrJsoKUAb2kTv5Qie1MOcFAcofFHtq8unF8
	 s8U037GXk14Yy+sajZA72B/wEFVQpwMxcr3SJEhNPmMRVigLKJ5bMoc3JcYaIv4eTE
	 NsFveg6RNIdJcZ42kobbEm1CjdACzeVDfRPN5x+OB+7HAdVNjNIwpA9eofBxtlujTF
	 sZEu4DEMBQgnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959E6CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716395360.19858.7477911871179549104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5395df3d97f12adfaf30d0275a78889570eb82d30aa8c2341a9016f11153705
Date: Tue, 24 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727163953
