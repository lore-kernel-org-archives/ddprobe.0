Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BB13242A3
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767948834; cv=none; b=ZDH2FUklohZ9T1uiX8kG3MaPrNVfy/aNDNgds+DvUVk/k5Al71yYTyyLZy/aZzS/lakHBx67Le4NUimimf12Lf/CNI5bkXd2muR45trOptzhSu/9byqefFG5lF/j42p8Wy7kx3AEJvX04UmyVsANTDf2EMhPM+89c0qAeHmzweo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767948834; c=relaxed/simple;
	bh=025ECSNVEW3LL5HvtdtUvLbbOL5FiJZNY49R+l8cIi0=;
	h=To:Subject:From:Message-Id:Date; b=jgIS02/OrfzbuN7SUrM4YC1IYb4aZk5bKMlk8Kz3A91v6wqNyKi6zKQB6gam7lg/Mh44HJ6CUZzj5fHh2ebMwxrGRhMHzZA7KMcblWl+VeG29ykx6eBTBdVCArLgfT+DypF7nWUkrL5FB7qmzkeIT0rg9Z//BZ8FSBE3Zx8FA1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZG6haEwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZG6haEwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF1EC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767948833;
	bh=025ECSNVEW3LL5HvtdtUvLbbOL5FiJZNY49R+l8cIi0=;
	h=To:Subject:From:Date:From;
	b=ZG6haEwIOYi8L+TcetyM7RjBAr0Q0xUebEgIQ1qWlNcCby0I0fNkaSMO+7178I263
	 mwVobzN+MiSHBgjQAwLl9b1KqW/N3wLyiX2+YdnQk4hK4bed2sWo1J3cp5kxd12wbQ
	 wWWS/7w8qkWHMN53CrUaje5lYZ4XlanqRKczV2jdIjuK77PlFWVhM4dSFkGXa5egZt
	 Pm8C+2mSEjTMiah6GkZ3rNxr7aToshuKKW0623XtubWsidePFTFJuNDUPK/DwbPrnd
	 QnrZJrCpIEJvvfTb6PrC/g633cBMzynv8aiUhnFSYaSMH9yVKEjSvODS6Y6S3BJmdR
	 b2YvZX66lqzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB41D232F8
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794883357.25844.12430882533426244874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d80e8fa6ab690ddd570d88e25b04b588594e82078466bbd607332547c0ddb30e
Date: Fri, 09 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767948833
