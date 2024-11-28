Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9F62563
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732766154; cv=none; b=ZXAg+S1DeoXgI8D/wfKJNNMWd/0SFQwSsE6xkqZl7yEzutRlBQ3Sx0+k2QxmlYgkTPJm7NJ8NB+6VlP9Rh1K8rxY3Yl79XycAiaPmmhjgC4+Z/PVAF5Fj0uTCsqoH5Wh9x7jkSLpd5CzUhDKuD68DBCNkr41dVlLFQJ8flURF40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732766154; c=relaxed/simple;
	bh=WaXK7OmfD0KCVq1Xncje+e4psDndTea5ZaAfcfcwwi4=;
	h=To:Subject:From:Message-Id:Date; b=ZX17zHweY7iPVU71DziiXMaDVCj9MFfIl9TArJO7mG4+oxFr2oKqfIVu6djeTHRd6tnTNtDYDf9tawJo/Wbxm098vHhDF7vVaePqBug8NlRS8ih/zHUhGVdTfacshBn6RWCJ7q9U/5r/iNNe/C40+9jRsdXvfVoM1ZpuGP4o8XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlyA2RmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlyA2RmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C130BC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732766153;
	bh=WaXK7OmfD0KCVq1Xncje+e4psDndTea5ZaAfcfcwwi4=;
	h=To:Subject:From:Date:From;
	b=dlyA2RmWmcyuLYa0xmHtXBqsBKEVfDb72wkir85+1LyOASmThN7ivY9XU5sQy6FGD
	 CvwBIuVkULgP/tnzhlYVEmK5SZvJCIVM+Shv3uWHs9w4DpAstfBkMXr6/QxIw4hsNY
	 BOM3r4tw2fnMTdRQJRq3+UsM2h3t9YotJkHuJLVjx5BsPUqzCxPG6mFNK3+vg/PDhv
	 SnvI3pOsKXtREKtbgHCpFQrm577CXVfLgUQQex0d/yfRvbc+bF0Rn5okddC4q2+YAG
	 X6zRgMvoDvguZVsWHE1rIvTm7AXjNt6Izx9wfhzu20wYevOO5IcjV5UIqO+0xFhWvu
	 kXRGfujogheUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD2BD6D25E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173276615361.22284.10326638904131963734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa2dbbecb32f49e14277c24b15ea66325be777bef66766054eb09b39c687512
Date: Thu, 28 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732766153
