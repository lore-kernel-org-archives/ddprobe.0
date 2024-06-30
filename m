Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E627E572
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719750863; cv=none; b=dWZXYx34IcrppVAcVKm+Ru8per+mPqf/+YtlRzhuKPT70GHB2sqeGSJrsEymWQcFYazs3y5FWFvOzmwMQUUiSNFvduk5yX7sHYpxfOwQo/XK4fIfvCB6/y3uFwYi4Tg91UkkiD0hgS+zVaVOwL7ID2ypo3Asuj3GMsv/82tuo6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719750863; c=relaxed/simple;
	bh=CpQHBG/Bj81PB3XCHqlerf3qnTWguG9lujWfHRy5aTQ=;
	h=To:Subject:From:Message-Id:Date; b=MXOtMcF8mggOwrHegiMcnfLawaZfXWBj8ga0Hi1Nhuy7CEnRgUNQ3NmGodaPmjrxBcSm/U/ZacMzewbEU4z+2+HG1/j5v11JYAkusksV2c/hg3xHOGBufwTXS5hLuCtUFwIU18OoS5yigVx/ljSnuNipSgZS/dOlo9eogWvbb54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0Js/hYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0Js/hYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCE7C32786
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719750862;
	bh=CpQHBG/Bj81PB3XCHqlerf3qnTWguG9lujWfHRy5aTQ=;
	h=To:Subject:From:Date:From;
	b=n0Js/hYeXvp05qecKOMdht7YF1TV7RSuZUQ7ZRHd4Yc4yTNl4Snva9/QL0KlZYTgU
	 gcJ/F3LoiTdyYaZDtUyfbarv3Voun64yUYqA3fM3uPN00l9jIwKOkJIhY71wul1ZbO
	 bJUyECY0+uIAbCkmtW9Gqo8HKnR+nQnwUtnevGv9VKERX5RgYmJpgt6WENYvrRbvS8
	 3bCrCdTp+Ht1DYPMaD+GhCq0EYFhyKf6Tdrv7jtl9JzoN7vV/k0qdSq5wcNaO71VjK
	 IxfEcCJOQODQV0qhJhcB3tBftdVRgx/tdhtbcAQciZyTi4q5hAlcPyRqWqLwjuoTLJ
	 dauYpv6lbY0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C393FC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 12:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171975086275.5729.14166704248960124689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca92adf3a9f3a8a7e1264e6d424b25458dcfb668a90462eb99af07caaf20975c
Date: Sun, 30 Jun 2024 12:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719750862
