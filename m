Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D792C394465
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770194033; cv=none; b=glZ5biAEfCKi7R2iPorMnjGfYvl3AFxDShK4PJ47xfBZzrrl8DfpkTwj7Jm8ZVHfAxbhfrUzI9BB4YnQIijqnXCzbWvV1vuHnTFJWlE+3Gf9gnghtLbUYmRKDY8vMkA1XI+RVntb9ibSjVdUtpCjWxBtd68+Ixj4ZyNEmLYijpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770194033; c=relaxed/simple;
	bh=R9dqlKd4gfExteCNkoB1lglzVl8NgdEKy36FQfyHoQ0=;
	h=To:Subject:From:Message-Id:Date; b=cLCDs6sHkx44v3MdKdvcUb0TAEnSfKVBvjiEJ8lDmSEhROQAo60zJy6V0/XLjc7yvhXs48DGLKo6esMNWItKk+ppnI7iIJQaLj0sH0g5luqgahclEE5YnydTCONcOgWJ8QMiw0A/uzAzkQe92S38oCkbvyrYnPSqSWOAwa32364=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVv0cOWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVv0cOWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1567C19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770194033;
	bh=R9dqlKd4gfExteCNkoB1lglzVl8NgdEKy36FQfyHoQ0=;
	h=To:Subject:From:Date:From;
	b=jVv0cOWUe/Z7527HYP4c5lmOzcMQrSpv/l2UTKOwbkbvio+PeEpuapKthKrwJtq53
	 Cn6d5ynIsLHBvpIHdDNADQe4aRPrxulGML0vJR1KhRH4d/Y0ZrbL6QDzUZF+7bo8BN
	 AtUSJAUd5jZOSvTyN3TRg672S4mYrm01bkmLX738fNSDQvFMu8P8B8mJb5Fy2e2VIh
	 ODlaAyr/IzYwx1A59aSMTGyY4IHdRZzN7Ogn+vFlbIbLTmyWcudpEkEDuORmy1Z4E4
	 WnzwPpJJZLUEGGD8ERe176f/IwMCkgU8UKEhsqtvzMajkV2VqD/F/MvPWudZ2Oo8ZD
	 XeSOcRNLwMrgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F8E83EE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019403359.21117.6951503475790724647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b99a7d17f9611c3338330b767acd472b6cf8845df73c0db9801ce0df90ca6cb
Date: Wed, 04 Feb 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770194033
