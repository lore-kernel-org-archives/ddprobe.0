Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E7712BF24
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736103354; cv=none; b=NDYiqKvk0gJbkJpzSrBz+259ngoMUQQx8bDA1CuVT2y1I0o6lnRRoJM+AadtppMAWVDvz7spogDdbNDqcGyxz0pL3F77qWkNmFMO33kdSeOP99hTsMuVNUXMSnPZ/S6SDKkRQ83e6cjojcnCBbLCyKOagbSdV140Brpp7oh7MLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736103354; c=relaxed/simple;
	bh=rzebn7vyG1g2PG8ABDr+i6o01PZ9OJ0TUv8sOhMqcxs=;
	h=To:Subject:From:Message-Id:Date; b=K2PCLKru2IUTPUgXKJDz92Ey9afbNCVEELaNthpLBFcc1URkfb2ljf12Adv5nU/yjgEEs1syelzq3fDGWzrjUxu+NJxbSe4snenXt/0f7PP/92GNzVeO9VM2y+Ifu1xzcWB+69xi8vuPY9vngzoRmMY502C4Dg+cQOIrHsLMDZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxp1Xfjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxp1Xfjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B293CC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736103353;
	bh=rzebn7vyG1g2PG8ABDr+i6o01PZ9OJ0TUv8sOhMqcxs=;
	h=To:Subject:From:Date:From;
	b=cxp1XfjwoN77yPjIdDjT7vXCtbhkiOSGYa1BVXuTfs8QBNmdiy5WDyhNvTGjoYbmZ
	 QOoRPraHC27S0QzSsvdH8NGh79Rp5CrHgZaqALfK5ReEZuc68lzBW6H00o3YADiEih
	 1La4Lypf63gSWE/+dqz+xEE0NL9zlDBiYiyg+QXgO+hp6XgXpSLfqjdEtDZZZppLWe
	 n9xBWKsKFcwbr0hULXdkyFlmXW9AOslgGevn9t9Pw6MYTnOrm6jYbCmdOSiEZhkRS+
	 CIkLfw7mm2j5AW6Rt4BZ29NhaTQ+aXdKgwaw2pn5P2BnNgZx7P3Clj3Ek2jqXFi6vB
	 nQ6wbNMN1/SRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C53BE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610335360.11992.13851716139856534325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539f8e4c09b29c7f4cf516b0f7fa0a9b46e9e30db9c699bcefacf19521f3cb23
Date: Sun, 05 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736103353
