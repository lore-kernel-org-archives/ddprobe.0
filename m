Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BAD249EB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749086395; cv=none; b=ItFRRIYmlLjR8pMo3NoKdWMM70QNoI4KmH18z5SZGRD9zw+eKsyBqsuTLCwa3bv3rNpRf+Pqm5Lf06c/+OSfZKA28kvbD9NVLuONjOQEWzWuq+LaBZPI+IZ0C3Jrt0V/Z6XSwPsTYnNg0Dk1d4b77JD1Y0wgejuoTKsXfxhiD90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749086395; c=relaxed/simple;
	bh=k/uuyNNYftmRdTGPjCMtFK6f7ZH6g29Jc+smneDZDgQ=;
	h=To:Subject:From:Message-Id:Date; b=KBdvAi4BR91GPGX4pIfjR54gJw56h5xlP14mCsUhYmo4UUAUlQPBqH89l/UZkQrXGTBopS5RpcTKbFwlwDcxQoS4YmqJ7qUjxBw9c1zoXt/f7x4J8KdUSXx2ePbOE8FTrSJHJfsSUILAzCkeHamcW7LRp0nSPDUv5usTLqM2Gxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxG0EH6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxG0EH6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ED5C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749086393;
	bh=k/uuyNNYftmRdTGPjCMtFK6f7ZH6g29Jc+smneDZDgQ=;
	h=To:Subject:From:Date:From;
	b=PxG0EH6HkVXYLxcUGdOzg2K+oRymxFbRcwy79o5cWZn1xtBjiJ8Fw0DLZpTq+5VS3
	 RvPZP3Ee2Opx3fVUIZFW2pC1HoKJ8Ec+8i9izx5MO+DB3od7ZnBcEKfmLqJFQ0Z3OO
	 qt7oAzuEkMKhHJktr93H0GFdJF+wQC6IPC8B6kaepoIM9/8U9Ws8mptBHaH4Dg68AQ
	 V78OWphr7jc9U18RKQRHSJj8XWZ6pB5L3LvdltEt6Y2e+emfk6m3ue0aLf8byHMEdi
	 0Sx+tp/RC+4RWDg/vdf2R5OKEwTofyZeYrCALUyEKlCYGJuRASkJZk/4cNCbjNRugl
	 QmFaGzSN5pMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E8C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908639357.10400.10765337265369369552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e710405ad9976c4acfe2c2743008c7a1c86846f6ade308d5b41e2de0d5f6e465
Date: Thu, 05 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749086393
