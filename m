Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769EB23BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714276943; cv=none; b=NhmwW+SdRjNIH5YjcxS75PKJ3eHO9Averl5zIAblGmDsuykuPu8oEK1Vcu31rfLgQIB9uSVbs8ikd8tbFIG9HYLZ+U8jyNpakhffcGXMf4eirSiJ60FxVd8yecLsds29xfOKbhZP9hLV0uElFbpNpk3Vur/cmSNv0zWYrtBx+XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714276943; c=relaxed/simple;
	bh=t3tb6vTbOcrol1Z7BPe4fPlQ00sw3pRnzjrtCSR8lmo=;
	h=To:Subject:From:Message-Id:Date; b=Fr1PnRidIHU/CHmNjfmw2n543GOc5XQ5HdguoE1KnpgHQFR3we3OMdimL5Z/mb24dxnBBwmKd+MSyex/EuUdkxUU3GH/UBee+xX7SL11FJWNNj36y9N1I8iizJbnc28gMCmiX+TCl1tNT+o0Rqm7l5UOMLZa4z2GnXiWvJUJrts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrqNMBLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrqNMBLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7B3C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714276942;
	bh=t3tb6vTbOcrol1Z7BPe4fPlQ00sw3pRnzjrtCSR8lmo=;
	h=To:Subject:From:Date:From;
	b=JrqNMBLgEzNxRBun7ZX3jiMU1ZV0b8UFFLHH/ANx8HoaV0Vf06Tpt/WM6fsiOZQIl
	 Afmj0nIWUXngUU6kVAkoJu5SHhLPSoJHTlVKicR1ba8q1s9eUHW6oxBTpQJWzJdKls
	 VAieeNt4sxUWFNV6mZ9q3eCaIO1Q43gN6fHy8bc2MJvwghUaIgk3YRiU3bFvNuehFT
	 infH9+f2pgNQi5U9AMAOeMRADOlVrjnH2HNnzzRNdAlLr5HpxdUIXnrEdUVwEi8LUz
	 SqWSkoRXy7EybgO5QcwoMPkl243fNe12zm5HlctbwGmAS68PD8ltBjw4TtFoBIWt/5
	 QW+dMD6lXHmeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36A7C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171427694276.26642.6763283832157128679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb0946cfae70c1fd5890743ed039464b7ddd3099f21322978d391659f917c85
Date: Sun, 28 Apr 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714276942
