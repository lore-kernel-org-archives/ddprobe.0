Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5702C3C7DF8
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775150134; cv=none; b=q55DI3shwZWjmp4tJ7w17o+N3c3ncRtXI0LXLS3ltA0KEcmzNKSgKmZNE+df3ys8O0X89ie0mtPGiMKQYXqpx1NcaGl7UDkHjWyVeinTVVtkuLdM4xI/Pk0QMZrU+vpVDfaVMUAB/ifa0J3M5OTe/FlYTLeivTU25vJEAXQNGGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775150134; c=relaxed/simple;
	bh=a8VzeFVPJlZEdPeqcxSavyvWjphV661YX+LtAVoQrT4=;
	h=To:Subject:From:Message-Id:Date; b=cjzhlopdHfWzt0y04G/8nB1VR/ve5TpQho3D3lwnd/6eJeIAr2fPsrl2CB7Hh6fUxWEz2sOxhNb3pUjLUamvBMEe1LkL9trCjhXQSqJb7mJEqGGAvl2CaMXAku5oozn3OAqhD2e9iYQJ35GHOSYWed0xKdbWYWeEse5pVh02vlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+iBv0+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+iBv0+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6839C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775150133;
	bh=a8VzeFVPJlZEdPeqcxSavyvWjphV661YX+LtAVoQrT4=;
	h=To:Subject:From:Date:From;
	b=a+iBv0+AwBUHYUicEY2Rzd9uXG66SJVXrS+hDPIDVEilSQ6sFidpw9uJ1qUMd/r7w
	 YrE8h+OYRLQ4puJGx7MZCqq71uu4FFZ18AE0POCShfd/ipqY6/so5xhlgbfLilAFP/
	 yRvx7vSxtXx/zaTO9P5ejtJ/sXIwV+kzamk2YCIx1F806WB48m8Dg5Zqi0m39svgUj
	 +iX+UpsezcG3pL/8UcX+bkbt5QRdJbVgE22W38yPZWkWVxTCXUM+/vbd11kpjTrDqU
	 zfQFZbiMRf5QKt6oDgfzMUYfmdKie3JEE9NXI1ckaBTwgCQnvGZeRknrAsTGto8yKq
	 D12793b81eAgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF59D6AAF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515013369.12539.13853661147496733814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82420554c3780e733f86966e4041727cf041a377fa96c1b0afed1b96fb0687f9
Date: Thu, 02 Apr 2026 17:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775150133
