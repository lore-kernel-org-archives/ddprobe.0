Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAA41465A0
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732260354; cv=none; b=d42mf1QGUeF2CHaHQYacYw3h0gX4seHdunZSux72dTVt6b/QUsqHPT8C7qlr4WROKxJ2fa45rJbyNtfK7wW4HkgUI7+fIEKjpqBRYwyLg40akbqkRHaFmjxEUitjbektuN+6lHi39Y6i+UHnouut/XuJ8ioMbKbxtQid9wmPidg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732260354; c=relaxed/simple;
	bh=wl/PvNyn5oXksCHRQTk3tvYvZWWnktYY+ErUsTrUPOM=;
	h=To:Subject:From:Message-Id:Date; b=fN8TXXi3ES31L23WzmTksQwV0EmTI08Xhi456g8Mi6WUhuh0bF00AsVe9xPoo/ct8v0Y/mNlBPScskGoXhsXB1Tc3KqKETubPJyeYpxJO/kAz/0EJn8b4mPoYsij0ItZD5Eq2m30FTsSX+UguvkgX7ncDKqZ1bjAoeA4o/SWofU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCXTYYne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCXTYYne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA52C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732260353;
	bh=wl/PvNyn5oXksCHRQTk3tvYvZWWnktYY+ErUsTrUPOM=;
	h=To:Subject:From:Date:From;
	b=aCXTYYnemkTjD2mbOWqPB+UOFnyEYlEcKMRFW7n2KA6ExcJdyL02JZb8kd3yvzcmX
	 57tz+HlWOxV/U3LNjSBDPYAHDxDh2vJcbBTvE8tbi73nmtXWrbYZQKzyJVcuE6sGbe
	 CScQqYDQLfY0lcJ8BHjCMNsT64fgvamJQNlwv+yATcUEh5meEaoslt01SDqLrVTHSA
	 2eOWHK2dcVKz4GL37V4bwZ0VRE+ii6jLg6nbRu3SfCJmFJ2QVRPqw+qmVCB6Gqx6r4
	 lkNWnGpm8P9h1jaAEopWWvu9hM7yiYj94dMK/sjSNqlZg9qKczyu00PcnKLHwwvjFH
	 LkwXpt9lje0tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98553E65D29
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173226035361.25332.18241766557881961000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f39f80c910b03e21dd3ef52597648b49711ae5b7b767aece03c064e951142b
Date: Fri, 22 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732260353
