Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B52208A7
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742520595; cv=none; b=eToZvqBZO6HnWxtg1ddtH+YrDNE7XQYUEaIi36wsuE26mUKsrblah1QkJdAecHPSZDvLz50PPxHhRc4ho8CZiLfKDIcikldDlW7Wgi+vHHfJCVrrASNbCNlaSuajsB7rHyiN567eCDt1okZp1DYO+PhMABit44MjQz8qJN+s95Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742520595; c=relaxed/simple;
	bh=+Ab2VcdLekuo2vP0l946sR6sntWuNKPCrw1XGqFXffg=;
	h=To:Subject:From:Message-Id:Date; b=P/SkEY2Dw3ziwnbNWN8KsVVlE0+xxeHouFIUemPw2aEiFZ7vl7KrgGESwUXTlaoW7ngLHqTbeWUdI9LajNrnbYRQgJBgJHvfmDkbyf+bYeXmkoJSBlI6GCeZMIG3+22asCABvkKubc5qsP+3iuO93ktbS87N3HX7fC8N++f/F/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjNrN8qO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjNrN8qO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CC9C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742520593;
	bh=+Ab2VcdLekuo2vP0l946sR6sntWuNKPCrw1XGqFXffg=;
	h=To:Subject:From:Date:From;
	b=tjNrN8qOFTvN7B2Imw1vz2UYjCRu0gfpvj2PNyk33Wc8djZM2+c8ahv24Xfia+D/a
	 xlzAv8upKOZ6E+yaYJpjfDSgnVFkPcG5Lhe3d/owYVfh14FA2alcu6DBa+T3Z8fmz9
	 cuvudfu/mI0bByhApMo1klzxtHE5pexgS3GMP1tfPNag13js416tRMqqscycwni6gF
	 LxJLignZi6UvPp2tTF3gbBrKMBLUZdzoFSb9kPn3PtnI0lYL2NI96n42A3/E+7HXxu
	 PPmqrORdGhUGKmnGGrLrFsf/6ZyQLg+5QAwMBK0QddcbImN8R/8FWl6JyyndfYHIVk
	 6aKtqjgc0PTxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F531C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252059359.8635.7642694319085939137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dc3910b1bb150590d9680344eb27e17105c47a66324d631296a648933d0a9e
Date: Fri, 21 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742520593
