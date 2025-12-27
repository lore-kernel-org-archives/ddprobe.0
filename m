Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480A563B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766872435; cv=none; b=GmYnRggV94spegbFyR6n9sbcFb0z0f4Kr9pV+PHVSrH5KNwkrgAJIrfGwf4PyJ7zpt53x5sceP3xaZy+PvYBIo19B/fiMatAORrJCxTdKfnMZDIwcaFebPxfD4nTJ5kVKfFspnJU2JuYnvzJpxZNa1aFUj+PCpeWQnCrpZo9B6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766872435; c=relaxed/simple;
	bh=pkxJUUaFwphq9lP8AjlZ3COKfsqXjCtI1rxWgs2Tl24=;
	h=To:Subject:From:Message-Id:Date; b=W/x9NvUbP8KnLJw5YmrYZt7IFMU7Hxwdxdsk7k0tMHeJ9zt1zx4q++baq+N/4KgN/1NMNRJlMJhMkNE65WuqiF2ZsSVCaHv/cc3s9VrZEfhHZOIidkRwF8W7YgVdsCqJvenWi1KIBq3b+kuDOYl2YzpMar+rFhBLgSmDguGNKMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhhhLTZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhhhLTZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B198DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766872434;
	bh=pkxJUUaFwphq9lP8AjlZ3COKfsqXjCtI1rxWgs2Tl24=;
	h=To:Subject:From:Date:From;
	b=FhhhLTZWDpyCypDzXK/ITvawIn36vncbUBDlAR5EgK34oAnE4jNfbNehbLeHlroMM
	 uvfO4G3vlD01q6xZiv3/FLXI8gdiuvZx6dAcgSvac2d+0Nkhm6yp0rrzRjWRgCBVlQ
	 HZ66lHGwoiU7x8aq5+PatTYyca4GWdKxvCgdvWeo2N2vcIsE0WX1/dMDQYSBSsZNFv
	 WRCj9gow3DR5ZHFwOgTSjqzrB7ErM/kYBtC4IO/sPJKa4wgus29jdIvjN9jgSiumVt
	 fI31DTBnvMbueprNNLPNLIyWkGnPd624W6dECvG3qtrjuDx4Q0EYKVYmREruzmdE6g
	 h9XqtX485cSBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F817E9271F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687243360.32389.10552309579491474626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd3725aa79aa3508128a7867c9b870288f43a028c355a0f1f46127985529ed0
Date: Sat, 27 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766872433
