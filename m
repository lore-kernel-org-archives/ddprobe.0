Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB5B1D5146
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755619795; cv=none; b=Yv842wEmLAfoLGwrOYgHHvoeMAYXYr5L8aMCYC0jtHVhOVYCn6kiEVQ0XMjOWxfq1SI2Lt1U6TipeIu1Zm7QoGotrGenVEz4yrD2PSe3h6DE9ek1GGACDzIK27uRB6fHODtrFqmDC/GHOadGe9OKiNG7TeGrEAha4UGlTsnK7O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755619795; c=relaxed/simple;
	bh=loOWwniDfaGxr56ASHFettWBvwmAhulIYEpDw08Iz6Q=;
	h=To:Subject:From:Message-Id:Date; b=VNOxOQ7vuCfMUW5zgmxwSpT+q6PF+fQMwm6vjh7lcNv2HmzuTYzE/MjSiYlJWtbYDuXmk++zOTjo/3MrzicxkLjdcab8KXE2zizDei/FQLbj6SSCBf8pcTBjv7ELEYyE7Yqy0mtsHSYs7kWbAHu+huoP+rzT0PYD/pcdRT00xDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEeOkDQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEeOkDQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19E5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755619793;
	bh=loOWwniDfaGxr56ASHFettWBvwmAhulIYEpDw08Iz6Q=;
	h=To:Subject:From:Date:From;
	b=MEeOkDQd2iuJlcBlsrvzDfutKt3nCMU74VtkRsLzdpgqkXL6NetNy9lsHHNi5LySd
	 /SrhMA+SZNPq0XZvL3BpPae3uQIK94XWDzFpuQXbx257o4rxaBRVbOD5FWCRsHkpVO
	 oPihma+hq6t5oyQxhiPkuRruaGkLZmix+u7gD0RBHXhqgaPhy9eLcRZGQU7wIcEDr2
	 KLKQXvwMlV0QZmSzDMFEC5DVMPZc9rdPqHB1xZicr910qkZhlS9cnlKgAfIP6zNiyL
	 FyJHW3aM9xWyBn8satJKF0XsS6gfbvNzQ38LkeZjay3J+92JyW4RMBq6OEEN/N1iKR
	 ZYiEYsGr+WGMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C6CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561979358.16251.5039578606612285501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406822df288d59156971971f2a598c22f5c7643f683a3fb2e65bc5721dc06bfc
Date: Tue, 19 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755619793
