Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CD81FF1B4
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765893834; cv=none; b=C1MIcsNnE4Za+quaM6VqHIDTH94oRbna9UocNDNZq0hbsVw8nYyI6/Njl/l1JW0nwieQ3XDFeWHXBZIYf0khZ6+0R9iQgSMM5+uG+x684ahg5FF6gKN20sZr6FBHUvz207PFesoyK0PuaIJyPcIBrbWmXuAJAYw5QpypcO68MYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765893834; c=relaxed/simple;
	bh=n2NNw9H+cL0qC6hyWRtHn1MHw7wxRkgCZj4iK9DtINU=;
	h=To:Subject:From:Message-Id:Date; b=Ybp9LRfokVd9uFfnryBjIcF7qJOPa2d83bYBxmVonUOWapI7lrY5d/6ddKCiSmhkSZFFy2ddtMd9iE9qQkxeHcbc+Vm1CV/7Ijm/ZM7KArNA4mCvDKndarb8o3GTO686HaNZH/6WZrg8qrP6M7P+rNdCi72iO+jQi2wfBJE4PgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5IwjBAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5IwjBAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68A2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765893833;
	bh=n2NNw9H+cL0qC6hyWRtHn1MHw7wxRkgCZj4iK9DtINU=;
	h=To:Subject:From:Date:From;
	b=b5IwjBAxMGvvaim6py/+HhUFQ9WUk3Pxca73I3gK8NrdRemZEttbpTqJ8znxdD/Qa
	 FRleJFd3Rt5rlgHzCVfSLNWrdi94sXGycseOm9gVUZaOpXVgQg47ohOgRDz4kuR/Ro
	 LtOZYL+0UNBjt14j8wySe9r6h3khpDIQiQdsAqIruCOZltDnpW/+TyTLXh1diFnc5L
	 6RtKhXsnWilfas6Y0MBL0wBlrP+KKMGFl5BtsTK0gMWXQheHBNQqrTxJ63nnpNP7P4
	 hphbx/fVfQvLiLBRvlgLydsG4xTfbBfSgb0eSQtawG6XmSRDjtB9UkjxLaTrzENHOU
	 79sqgIwrku/GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95500D5E36C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589383360.5868.2984378392032343772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b6947965d0b8a7ec23def9004de2293177e4e5c2c3ea78a10b73453e0bcced
Date: Tue, 16 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765893833
