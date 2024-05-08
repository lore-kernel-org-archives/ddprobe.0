Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B1E548F1
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 09:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715161343; cv=none; b=fZTMPyVCG2OH3KXA9U+4NEdQtNNWRtaqZqRyANRTYc9eXQV96WYki4imi5uvCEuphj7S9x7a+RJ6jv+YujVFVyCwY73tR9fT+UuqIKU94Dgfh3dtXKrscngrq7I2BPa23+GVoebkfgRo6lRCHQ2nNfQn98Jts85hDm7/fcGmeQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715161343; c=relaxed/simple;
	bh=WOFdNjXLr75gV3pbpqh5AAH25dDdFnKDLPf2hQEAoYA=;
	h=To:Subject:From:Message-Id:Date; b=aNFe+GTdGr6oK43ymxZYMS7Okn/aamfizRRLl5S2Vdq3UkhnVITrGGjxOWp/QpL9JQ1Oy0DNyuX4m/fLe5ljr9ESrRvbaAfCLL7DZXBpSzQYtz487fHkoAUrhZHRRvDeDDblNNQ9S6lWueorXBAhh9ylQdYfl9oBcMhqoRdNQ8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRSNTFpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRSNTFpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6EEC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715161342;
	bh=WOFdNjXLr75gV3pbpqh5AAH25dDdFnKDLPf2hQEAoYA=;
	h=To:Subject:From:Date:From;
	b=sRSNTFpNFEbD6jNHKRtU13BhOIpHnObwm6wCUsI0CX3rbJ6fGFpikVRAh7rJMNY13
	 vfEmDc0M4xQCbiin2XCzUiAF6+z/EmVQvNeTyUNc5FLVWZ2XGme1/TjHxFwq+zBGnx
	 ur1s1Vwe4HZLkwmmCuM9N8SpND4TvuPq8kHm2IrT8fFBoUYTgoSuxtN07iuEEyqjKL
	 wZVJZz7/QKkks6jD2b6eY/brSLrlKDZROeb7UaJOA4MrGF2jhv036sMWqA6DXuWk3I
	 L2t2MQwfnXnAvyHGvGBEH2PGW2K8J4T6fO43iBa4gjk2O0kM5NKj0+OKLnvTu/p22E
	 hfibyYuBO1CBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB35C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171516134277.16396.16841325787051740232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a34489a8a0f86449ea29be1ba8716d14e320656cc15aaa5310fee737174d4a
Date: Wed, 08 May 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715161342
