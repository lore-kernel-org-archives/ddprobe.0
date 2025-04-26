Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E321A256E
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745699994; cv=none; b=rJonClgF90Bjj1KQMO+nFSF5r64jLd+IE5hfUWi3AeNloYRX9KngIlxruGWPq8IVKfJ/pIx2wHaFnLgZf4mw7tQTQpcfNv+Ip9LXKjqguvhK9UxBW+idPKm+1tYZUIPGpiRQRTBtq1lJ8uBwepLIK09RyS8LK/asSEIC5uNYrzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745699994; c=relaxed/simple;
	bh=bbpgOrYP8idDwvgYW7cQ8tBU2hPxbv6F6+g+guXPzbs=;
	h=To:Subject:From:Message-Id:Date; b=C8ZDC8OGIYyQWeREIncUrukXF4IL1nYyXqPYEetG+AQPe7wdF+TvnL7Ct+Ke7MCZpn8V3kKf5+R7tNQWweRq+UhBTO0aijqKrkTOAQILCVUUeddi+lwYkcMJ14IuDICcJr2EUa5HNJJgV6DBO0X01u3VYeYEI01EyRbdQFqfG90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alh7lgWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alh7lgWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37ADC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745699993;
	bh=bbpgOrYP8idDwvgYW7cQ8tBU2hPxbv6F6+g+guXPzbs=;
	h=To:Subject:From:Date:From;
	b=alh7lgWrShMALGZzPKvHYY4sPsKz4rkpPKYkJnXHRlRhg5NgjuOUKJnFaabqmde0+
	 V81rflGSbihhGKfrLv11rSMSM+W6Pcq3f94PSYZ72/V5D7cMh1q4A6AfinSaySR0bC
	 NufCSQrFZW2IOZrhFWWMiiIEkCtrMK6Y6RWnst8ZYe1uwYEuqE8V9eB+nJ2HkiVrIC
	 /yqokhQOJByYUfADK26JS6/uO8Hatq4GhJw/P8UH+qeCpcbFnKS2pZtO/xVNPphM0k
	 5cJn5ulgMqelQjqFKiU/jUScV2OMF64zo3xXOPsio7cr6XTXNS2OZ4U+Da1z/HVW7M
	 YluJTMBsAn4CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC6C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569999357.14500.788113529516693334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a2bed2cafc834f48989462d67acd21ac83dff8d19f5087a7dff185a1918bd7
Date: Sat, 26 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745699993
