Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E854DDAB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761310794; cv=none; b=FO5B5rQ1CiTAjWwFuxph5UFZGxvtRALxyN9PW4w6D72DY3prKa33AZ2T0bWv2phFBoFGzj3axe+1sj+gY/ZmXP/H0bQZnbqMzmQcukd0JlCLHIZO1Syp8B4UlYSj8kaGRZ5yQ6/NuP9nv9Dn4m1MOO+HkEd6ycr8Kq0lCwEUfio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761310794; c=relaxed/simple;
	bh=R/69gS6cF8CrowqDlD1uIGdsZM+YAB8fwz516ZeD/e0=;
	h=To:Subject:From:Message-Id:Date; b=A9AimOt7YJKDIGekypwozR5RzUpxS4HVSl87iXqGYd/h3wp7Bi0HhEf8OyINwnX9hq8HMqU0G9H5OUZQINOB2yYYSRXIrn4YiuoKX6x/Q5hLLk9i6UPbnUVA0n6oxO+AAOHh7YjYqIEDiZCleBwV8AB4rsvl+k178KczisXInBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajMgP1KZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajMgP1KZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761310793;
	bh=R/69gS6cF8CrowqDlD1uIGdsZM+YAB8fwz516ZeD/e0=;
	h=To:Subject:From:Date:From;
	b=ajMgP1KZui1DvH3U0G3wZf/oZhYchpz3Qv69uxy/eKNvmbr+PIXEuCmmwNXtge+7J
	 ApMwxV8nv0tcgP+ZVAVmQnJOkqSbpmMvrGnVk2Stvyz71LH0nf8u0nzy/nhs2z4MiA
	 ifeMjcgrw4VwxFQiGmPDiDZclGoIANBGhTGk6q6Y90WcaMVTXylJPfy3OpU3oCEXnn
	 qU8ONxB5zo2w6jlv1jBEXYTN0faotgRk0pgmiIZmW1xZitS+OhmrxfdeJ8W1Eedpbd
	 LJCTHu5SBXIruPR+l/mvoFt+SaI7uY9neL3KCvp/5XwpN0DCv8UMzVNSg8+8BI6EJr
	 1wNyZRD7vOL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1DCCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131079359.20100.2790357868843009576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2030f593c87f1380285a42e4121dd1a4c08dc3afc69e0e55d48c4333c0b4cb22
Date: Fri, 24 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761310793
