Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FC9748D
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741307934; cv=none; b=MGAy1le7bHvl6dgXfhlzt/vmqECxNGihh4Eav79oUXD8UXfG8YmUhCSxdcBHZlkCnDsK7zPt/HMQzNzPH0X4wxgDs78/7bqlU+CdIVCcVqRF6rOwGh+OUMsiJpBluC6ZFFTUUmHDS3GXsvC6n7XL7oTRqjih74MghHL6UgIitvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741307934; c=relaxed/simple;
	bh=8rJZEj5ozGR7gXPaqea29+NyCWwHhj6XSmaXDp3x1Oc=;
	h=To:Subject:From:Message-Id:Date; b=mVhuc+SCNIpnZ1ONOLqW4YX6CjEGrFC+0YQH0xOHaKJkidNCkrcVlm/C+TVXyQqa5yzcruyPiLVMfXdmVEuZ1g1H7vJvg1lpgBkbu9WjI/tJx2SiCZQQ9oBjvJZkVpLoatgyCGwgR5TyjRcmBrliy9nzudnHPKwhiQOw6NAMjJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VD/dF8Lu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VD/dF8Lu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3730C4CEE0
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741307933;
	bh=8rJZEj5ozGR7gXPaqea29+NyCWwHhj6XSmaXDp3x1Oc=;
	h=To:Subject:From:Date:From;
	b=VD/dF8LuvAdSP6rTzzBWTU6bKsjX75IXBBocqn6pOtf9rOGQ+ckQUZ3KUPfE3eL6e
	 tiqH1edSvPheL8Ds5f/2armQp0cScnJd+88+MjtSiAzCMDTMYljsd5OmJNjxYDEgtS
	 xh6eRxB1xMPYCb/TfoK/U7SHE2k28tT+0i4ye4SPXDVNQ9UfggSquCNXWK2Q78Ew8F
	 8eimNlnPZPVJQ0gf0imZp5b44xbtsVqvWK8WtDwNwmEw9D9WCrfOSgaKFppJHAWh76
	 qGKlSK0v8UtYcbEIgIWyQTXWjkQqkZ1MggV1zf5VcKwiBflZ3PvlwpR4z8hKSdGYvK
	 KFyYeHIIAJVWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB9C282D1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174130793360.16566.11442872795087779378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e380c49a1e60a7fefceb4ef147a3bbe5ea2bc439f6387964827725d9b1893148
Date: Fri, 07 Mar 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741307933
