Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CA71F12FD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731075954; cv=none; b=Z9+StSWWOsr76wvsPQriu62Q98YO9zLXidlbVoWfHZ56k1rKiVPLrFd9uJM/U+lM20wEL7DNOZhJk03e1xU0bH+kMkng6a6CbKhkybhLHhcYJWa1VrM8e0CC1JMDLtP+fwPdZyMYXBHat9TW6+0PDrqUi3L4WNW5L7MEo6zDeKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731075954; c=relaxed/simple;
	bh=xncywNjx9yh+YPxU5rHyCbECe1VMm94AZhXTTvtOLWs=;
	h=To:Subject:From:Message-Id:Date; b=T6rYACHCr1S5knNhAdR2d+JaWIraXDF6q383DitLW3NsxosQMcodl5q89uum1SuK5S0xc/VIMDN/DayZv5C2hSvZ6B/FYdhnwXvSbif3IcsHzqs7e3RJjAepPQkv/m6/KOVeRxtW4/EnZWgmvVifS62a+qzKX1gVHJ+CT6d2JDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1ZE7xQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1ZE7xQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E48C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731075953;
	bh=xncywNjx9yh+YPxU5rHyCbECe1VMm94AZhXTTvtOLWs=;
	h=To:Subject:From:Date:From;
	b=f1ZE7xQLTCACKsp9Ihe2rLhDR1s8Ku1Dsoh5fFc99UjjziUF3hVLASD5Oe2LbgeiC
	 jPkLr0ohngrbKMSYsNizSWwLFuebMTF5pozEv+YKT3R31pTqokUw8nRxbAtGYnV5sA
	 mXYXQ4FmZKy0C2uK+ntE7rRkMHDdf/gkTNAPghHGJojWRzlooWa0qNn9s122HUPD0q
	 69QnnBpb+42MaFC2GrY2T6zFPBs8iwj85e5h86hFoiL2KAeVwmLC8cmZGN+Cs+082B
	 v8fhcYVAhcepmGMViO4R4Zs7DeOdqdrs/YgSVEBhebdoAu4NlBq0FKIIAosWRzG8Tf
	 9S28aYf3iy1jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BDD5C0C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173107595358.22684.17993979255108275261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f1c62569c4208e5e7c30644d3709928976a6dd5ba0e030be3fa98c8658d1ca
Date: Fri, 08 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731075953
