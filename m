Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF313B840F
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778791234; cv=none; b=ktEJDOFlg/qd4zG1ZshBgtbzmYgGvYVmYVsgRA+64Qz6ZnMBMjPtHG/HP8ugYPXnd19XoCwXMlQyE/0d63xqqupk6RcHgllQDKEHcz5Hpzfcmnx2zhvoUJPvlhovSba9666nV40Wf1D/GjZSdEY4Rjs4BzciGpO3s8zLbsIBqDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778791234; c=relaxed/simple;
	bh=0/mT0Gz4OlIAHq5a0qytTN94qS0AaQG2cfED6qrSeHI=;
	h=To:Subject:From:Message-Id:Date; b=aWkZ9UhtwN1zaZ7wkn/7zdPKPo/JkkfqxcLoa6Pgez96Aem4hXY4oQ3jHakS9+gcGqf7BiHsZHG94KYmeVI/cDmqlmVk5GpJ0Q3Hgoq0784deWvLbwD75vZtjmIOGembYGk0baG5nQsfqWV9G6KhN3E7W/tQqqTeE8bN9kMiOn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNbHYOMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNbHYOMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3154C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778791233;
	bh=0/mT0Gz4OlIAHq5a0qytTN94qS0AaQG2cfED6qrSeHI=;
	h=To:Subject:From:Date:From;
	b=gNbHYOMl6aho0wH9DFIX+Clf4IRMhH2+8WVTMyzPdJiqU/3p7ZBTlK5h9JP22mBHM
	 hGpsxt165AjLe79nkwJ6UvzqxP9c5Ok3wAhrVtk1ewC6kEJ8YDcWszLR+Cj0OShZ7i
	 IuXGoBgAhg1TedNo83DiNfSbkznAK+FTtufXepEKFHaOnjwgPQzNNAAHthf1rdw0Cf
	 +pPiFmBnHR3eUUUVt+0N7rphOQHm2RVe9/Cr3CWY3I/AaM/Nz0Jy88gynLfTFgYmGb
	 Pq3itxBOtXUIWgoFrQyaLBUOnJ9Ogv3c2p4sPQv3mUjMNKIdJTlgeRrmNYoFMsYqoV
	 ap5zs5o5VWR1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF0ECD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879123368.2515.4129308725280621321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102234d4d11f4143e70deb1d601e1417de0504fa96d18828e8b824f329db0a51
Date: Thu, 14 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778791233
