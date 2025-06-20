Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73722A59
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750384194; cv=none; b=PCn7dCSRgdg3erFGsD4bH1phGHix2JqmjuXsbx8WU7H+/tJA3K8sGSnjdU8ETTqyeAyKO7dONID71xdMXkDMVSsR6UPCLtcbqHacF48QU7B7xOj1AybmuRfNAXiOACk2GNkqfcByLRcw0W1Zow3BEYckjgtFrfMJdrFOUf3ahN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750384194; c=relaxed/simple;
	bh=d7/U62CixA2PaLVGV7gINpaSW7iUsTC8kfZDuw8Ntjk=;
	h=To:Subject:From:Message-Id:Date; b=G86XSO5jVKDpx6pvi+pquOXF4seOhoXzhB3WrD2QsocIpUlbiIVZPaf5f5Z8DRclcKet+rE6RPtl57JiO/5IBfjvZmukaqClxzlH0XtR/+A2lzQGZ0QLQDNvaRjHvgG0091KwUjcSjDrqYBZATOgjHsRWebm3cLsfdk8ySUx2IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okHLSp6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okHLSp6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A511DC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750384193;
	bh=d7/U62CixA2PaLVGV7gINpaSW7iUsTC8kfZDuw8Ntjk=;
	h=To:Subject:From:Date:From;
	b=okHLSp6LQwIK9d+YAITGM3C7iPd7zsQXjUxo0VN2BEgctxWL3sSQVvxQy3ii94uVc
	 /7Fa976S+GWR0jIyJp20cBWMFY8bvzn6K1ydh9rqyGShsBLpeENOpCQR5/iBh/0RvY
	 zGiCLXdQY5nQeJ2TXzrwUWTiX3i2mtgr+8HLPMU8me0Y49Yk9Mn9FksjJDSPUbZzoE
	 aDgwZaMfHyhaenPobJEx3gcI+Kemo0kewff+RKu4aR8NaIsEEm4uou5vpHuCsJD1Np
	 cQ6mxqLOgZopJ2FWWcNkd4OcIpqSD4xaoVd4H5BkzUlKyN1J2gmLWqk2emJqwwSv84
	 Ak2rcFUsVZ/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B94C7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038419357.9973.4222723567901571050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fcfdc385dabec59281c2e063ebf3f8aee329f13bc87797b273ae2a69cfeb9f4
Date: Fri, 20 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750384193
