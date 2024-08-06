Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3775680
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722909354; cv=none; b=kiw/jfEjfyjFF0z0UoEbtCIFuDQXBvqiIwDiufJw9k0AOqfNFW3mepCgyTp6uv0bDJBA2I7YOg/YDtYsVhy9jN1J0aK2MVdOLHIJ7zgOZIrUAlVTakivVN5Xhc4G4vfladoHLn0DC3BVZFjpDgVcM1zLRbg6MaDUsX2LOfjdUXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722909354; c=relaxed/simple;
	bh=Dmb0DjmK9wgmvr7f6bImHASFonsZRr6Ft5HppZ1v+RE=;
	h=To:Subject:From:Message-Id:Date; b=dIWwldwVWUCFfX7OCIWLHM/qW5s9a95rd15hDJn1qROz9tEd/LVf8R/hsP0J/tcLa7orKXzpz6GhvqXUf7n4tPm40Dutt9/2O6wFyrMuf2OJn5qEPjccOFSd3rr0vKHoXs+FjLHQ93X6ozLv0s4glA8bFh49KHPb6+d9OGPUDqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tynuO7D3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tynuO7D3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80BCC32782
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722909353;
	bh=Dmb0DjmK9wgmvr7f6bImHASFonsZRr6Ft5HppZ1v+RE=;
	h=To:Subject:From:Date:From;
	b=tynuO7D33tMHvKzJ+a2RUOVZBEm6S1DZyccMxCAOrPlqVBnMUA92v/P9bHhjMfOWf
	 2DwYfXLLRTCh+6L6ZULB17iFTS8PLgxtoygA+mQ+VAt+n6VVCj75WKIreorrJhMfI4
	 Uzvy5qq5qQehvAq9A1zopC/65jdKAq6BwsjoNo1s+RSA3/c0tS6WhC3AH7mN7MmRWY
	 7KVEreim2M0FYZCWFhYFMxkxs+zMALtA9r61Fzdi6dOo7H9XyY6DRquxEiSV7c1hrm
	 +XV95tGl3bFTjvP3aNRHOE/brkqkLNpTG6nnCP5LchnozGMAT/SHlz/qjlYEP4DWhM
	 tmwRvaZJXyb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6407C3DA7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172290935362.17666.15492547839303989512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a9eec1992001702f5655c9f94641b03da7f28756a4dae454d26fadac77b85c
Date: Tue, 06 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722909353
