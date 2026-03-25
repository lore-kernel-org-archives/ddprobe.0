Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41A919C540
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774412093; cv=none; b=JMBxIkIqVj1vK4OgSKJn9erVmm/u5hhb0/v2Kf5nES8X2NOFeGKiwc4hAqH39o1vTQNZMn1aAp3BSKBMBYcMQaany5uDungFG82RmJoBGJgs1IVs1lAZqitNDSX5hrUcfifDKfiy6CN4Nt2bA+5tdExAWe3cLV7xZisZ5hMOn7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774412093; c=relaxed/simple;
	bh=/pcTCPiInE5OfzTtSwpZX8kDvVgqEKJmwiBZkWpQitU=;
	h=To:Subject:From:Message-Id:Date; b=kAIQs6/fElrAGrrFpaJLw1Ovai8IRpsIWtMZaB1t5lDaofNZsuPGisPidjIDL8DBKtOSbgYOHwNCRasPu95FoYHabui/ztY5P5rTPDc6Uf1KyuLbi7mquZQn1l58GkIMaqJLz3aIZ2bPAs/vHNhS3/phCLIInbdY1HwrianUFU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCHBBuEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCHBBuEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B75C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774412093;
	bh=/pcTCPiInE5OfzTtSwpZX8kDvVgqEKJmwiBZkWpQitU=;
	h=To:Subject:From:Date:From;
	b=FCHBBuEKWe0OV7XrXGGvKf8YOXikD+bQNhnpXHJoTLwRjvrj81yTa+6aBIuAlUDS4
	 rkm+pmuRS2Hw9GXRWefUKq5H0i0EWiwwsFXuNJo8RUm99mg7qplkVfRgJBauiyV18H
	 SzW1jY7oUd686HY6eTRhRINzPWCvmdNWq/YsHIV4+x6yE+oDPU5oAQ3gg8+oSdBOIn
	 qK2uQTPrYF/+zkd1/hws9nyWRV3WGL2eFj+UrUHY0lCMnVCvZaNxIW2O5334TstcJp
	 R2WFBzr7kdv2WPP4lRJkrLdw/0J8cRFQEOc2YX4mWN2dJVsCzU/WI8XXHAoDlythzQ
	 ADn7dw41fJPIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F4FFEA806
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441209359.14916.13929608068781488717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9361a621f76a6104ec3df8ea115fa09637a3c54cc5b0b23f6eaca739050b6c
Date: Wed, 25 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774412093
