Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379081993B9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737780354; cv=none; b=syHELqM5AFnmBBhW0DJRr5LcZm7Ipl3PQ/xM6Ns000ChonsVnOSYY12jQnkksjlW0/rW57Oq2qD1hKW8vMND0ld76OjKVFsALKKsbdc5VHt0/68ElJfIabCz6TzufsBOwkZx2hB7NQm+p4bqIJ72eZ9qClbS1nsZdIIuhL2xgzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737780354; c=relaxed/simple;
	bh=W0OwOeT676FD/0oNpL0zFgf1Ii/o64v7lmd/w/C21Io=;
	h=To:Subject:From:Message-Id:Date; b=gdcXW+WZU2S92I1PJXKmzt6qY0/TwlfjgYg2EHKdj7a+fAgDViHd9Czl+yXl/Uqf7CQVL/S43Wl4nBm7HqGIecujqnYaADX6758Qsk3tT6aAVRBuEek3p5vprF/oIawTFbeyugsEG+qxQB+nlgF/7l5dhAb/yqE/ekF2aepKTCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCDbQh13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCDbQh13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4798C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737780353;
	bh=W0OwOeT676FD/0oNpL0zFgf1Ii/o64v7lmd/w/C21Io=;
	h=To:Subject:From:Date:From;
	b=pCDbQh13dKudlIXMzIiatY6P+co0RL+7B599Ko8+zYPwG4VDV8MthNj/gpzahH150
	 0WML4iGwhg3l05Q/zOIUaIevEpdUIX0dk54Iv/qAzRJP4XJ+W+ZjSp3LJuET95Ub3J
	 6fLQXJAlBJHgL4ghk6Z0eVuar9gTFvjQOhs0JDJetKYwboWeFF4DPs50O5tWIAS5ns
	 rqO2wteM9iHRbT0CvntNCyWhGi8AJChD2h+MztxDnT73+osueOJEnO71KUuEvJRV59
	 kBDEds+QTHaPv6r35HpFoORgxRmV3L5GooHxynmwBHOyEYk5eGBn1jxLLdHl6ozi3k
	 5xRki3MRIy0cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D4C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778035358.1104.4311588080666355396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987a962b977e2d88872a4b8e38f3eb2f1916aa93122790d72d4b239a62d5f3ae
Date: Sat, 25 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737780353
