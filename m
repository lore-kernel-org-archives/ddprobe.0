Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A282DAFD9
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751986194; cv=none; b=aV/VGdvbR2o0UNykQFVFmPPobun712rZm7pkHW4gMPzDWa5dkeLDjjCaIxBKPPCjxFg5Cge+/h6r00xuN9xqUvVEjyv0Bd8vUGx1J5x2G3waCdgxTB+6F9oyVjkt2hjoubxG1eUXSOw2CZxKvq2FYZDbnzcqIEaheUxGezC2BFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751986194; c=relaxed/simple;
	bh=rKRax5A96qIgAKVn55OZOye0yt/Q6cq77mx0cjVz9Y4=;
	h=To:Subject:From:Message-Id:Date; b=kiLVL+OXGhuqGZ6+npfP8q3CTBE75CQrG97SpvmrkGBL/QUUmgkgL7KYq5nlF4e4+nh0aub6eKVzXcMfqYYh8CPICK3LyckNdfr4O+eimBqtLF3mcKjD/16LWK+e/Z8YH7Im+jDngr1Iv3bkjH0kqrTyG47x4pXKzr2KuHLtILY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSmJnA3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSmJnA3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E38C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751986193;
	bh=rKRax5A96qIgAKVn55OZOye0yt/Q6cq77mx0cjVz9Y4=;
	h=To:Subject:From:Date:From;
	b=oSmJnA3E2lurcS+Y8Cle/SBuUmQrhW9SSRY6tUfPem7MZG6H3f48+6Ac9UBlQDWuS
	 Xpuy17RLrl9UaJrNtgG9f9yFkdh8osSTsfZGiYXpSuUXOJGykzSSJF9z17zcj+Gn9R
	 tbtjAKdUUEtyo+cKungk3MPcSKEE1acosFSG8hcZh0bPjPkqsr5Sr77Wr/LNB4PYMM
	 xFhbH6f+Ogxv5lpdk5WptthmohOm5n05adHcrcHuyIkXeA0YMXIHHZ6lNPiRtHPSH6
	 JtItxQfem+jo+YyamNhnpnOtCrog9zJZfVR8xLLAZZ/UwYdvK2KqFjQUeS0Hi/L2DJ
	 APWz3Uo8qQ9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEBFC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198619357.31523.6826069226973895800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0034d512fc353d186f0cd634614e45dd97597489436ec26beb24f4a9a3ba799
Date: Tue, 08 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751986193
