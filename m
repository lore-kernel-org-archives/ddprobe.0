Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC5C1F0E34
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786927234; cv=none; b=X92x/dn87/ko/lxoxhU9dASz+gWC0V6sRcIuCtZJNz+ipceF8LqKuM8UypOrknhxao5ejhFt2ZQV+1KeUJ6l2PRLOZbVNleHQ4Q71tb9+7pTwYirKHH+svVB4Wc65+IvNV1EvTxyc2dUIRSuyfzmGJ6aHp87tBEV76o+lK5Au3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786927234; c=relaxed/simple;
	bh=YlUIzQmm/iP03HD0RZRRG6kKVRwbLmhTYt/nKFuykBc=;
	h=To:Subject:From:Message-Id:Date; b=g2EfSrfyIaZfDGNJbiLKjWbce3NyQFkRaUQJRc+p6K99SzEpNqZWv6DRm9MkW2Rzi0/jOQDHpIPwYdkUWuIIt1aOCN9f/GtcB74mkPmquk3ayj69ArBW1W3LagC3BMFgNQEonqRtLGw316YbyPdoDB7K3mHdin7Ebevyd3TQ2ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaKib0UM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaKib0UM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2370C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786927233;
	bh=YlUIzQmm/iP03HD0RZRRG6kKVRwbLmhTYt/nKFuykBc=;
	h=To:Subject:From:Date:From;
	b=OaKib0UM2/EuVa/LfEpjJxWecpJfyXcUf0enO+06oGu7+0QDkihb3+i+R5MdWyqkX
	 QeEmE/oY68nIvpIrA1IvnqRPVCbzQUtxUAAsd7wrR3C2w47LqvwkxRBe2xH/0Trodo
	 NTbAom5+46KjqYvmSgZbj4V2Ng9foAbDnfxJJkgl4X1AjCMvAPXERcaHU5kOzP1Ygw
	 IfheWsxRIjbC1XUAoRgXakzgdGHS5DULUk1PH2YeHfiID0E5fNmYCcyfONhe5+u7cB
	 gJb2FkcJFGYpmyM+6OFHxb/GJw9PyfYYniyBVadMCsSqEIfZtHBFE5F5t81u8LCiWd
	 CHteKpuV/Dgpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC424C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692723369.10061.16756007202566900327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2452a2e2e228af95a3ab0f9b541f016ef9f84362107390234cf758283362a18
Date: Mon, 17 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786927233
