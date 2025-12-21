Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A60212548
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766296434; cv=none; b=kNEevgclULq2aqFq/KCYVpEaK7hKo7yRty1aQ26eAXmiVtNB8kLROKzYFVY2T0BCA9fqU56zw6H+7acODJW1AG786rITBvwYjZ18scBR46E812zcvMVN2qRVA3W6pcQdTiwsy8P5H2Rx/ogPogH0YwH4Il4MW0+622FWv3j2SSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766296434; c=relaxed/simple;
	bh=2xn08Xtew7+BLR6G77VvbkupHP5t8F+SWMakSGFH7sQ=;
	h=To:Subject:From:Message-Id:Date; b=rMYB1MLJFXTo7ifx+TDaQSC/Z95j+HJ6tjTi2W6vAvzL3zQi2qhK5DJpQ18CW4tphJxktr/n6ydXH0vPhrub7DwQx9a9u2GSf4jf7FLBmqEKF1tYqmM/rjki6HzGuc3Ywedp7hrth4gNmYZk1Sf5i/PoCN+0Dugxc9TCvrAlZE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9MOEMS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9MOEMS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90A5C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766296433;
	bh=2xn08Xtew7+BLR6G77VvbkupHP5t8F+SWMakSGFH7sQ=;
	h=To:Subject:From:Date:From;
	b=e9MOEMS/SHXG3kosOeV3HTgwGnwLY8RC+sM2MLbTmD6U2OhZd1eGHA+rvgXOST0nO
	 RjIfnRJUHww2u4A9fZCQ2qsRNvNaH0dUhVrXEgayW4kbQBRLb23EM0ZEgUZ2byslcI
	 ZB/tNY898HnsiGv2D5NE/8dP2fhZtswvEsSyVf5YKbitw+9d7Y0YzAqZKNnXsR46m0
	 NN1SbZDqs/yqoY/2P6yRegg2q3IWMKP5drI0QhuD/gsYYSPz1sdnva67EmShONWF2a
	 qj/CH3kZ6he6Gefp1d+yZH3D6N/UFudcuMe8WLtM7YJ0UV9t/AhTBQqbxOurvDfwq8
	 UC72y6+0IvMDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E1FD68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629643358.31720.8031705209486282090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c932e673324010d5d8fd3c7a06c0882c80c6b4e285eca1d60e38b508e69ef3f8
Date: Sun, 21 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766296433
