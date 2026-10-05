Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40051384CC6
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791192034; cv=none; b=dhwUgTT+8em0DCQGSlOVoDh8neO9brg7rmq5qxVE51nyMFd6PfpZdvBx5ujRN6JobY7vgkAV5pHq5jAY6jdHhfZiX9nHs37etzvwTHfKGi0duyv/2qipKlwqLAJ0J+c03mqQ5vicZzzyatRn6evdWGSHzbRpO2Xlb9RK3nNb09k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791192034; c=relaxed/simple;
	bh=ARfGxxaQ7acoCXloTJAWxzrWCcE9QHaAmTRXRtITfSg=;
	h=To:Subject:From:Message-Id:Date; b=EwUYD9b0Igyg781wJZkwvUroP3904utEDHYIuB8ZgZJiQNpcV/V5aHHZ6aYWu/ynQUhB53MfLzc/nl0W5j6+UWPryyAw/0PjpTdW+BA3A0j6PUYvnJPZSJZ5C/JSB4Wlr3qa2gOqZbysR53WtLf4z0R5Yn0UHmIP0dBLWSU7g7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzEcBaDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzEcBaDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9FDC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791192033;
	bh=ARfGxxaQ7acoCXloTJAWxzrWCcE9QHaAmTRXRtITfSg=;
	h=To:Subject:From:Date:From;
	b=bzEcBaDSWhlvXvQUi9Ol7UjH0+n15pebQ2jCFPrKG7J4QCrYLYaXnqO+XACvreY+d
	 cy6WhE9fhZdaTg/HuRHHm6KNPuqQevVVP8okdVrKJW1hhkUF84b5zgyOoes7JmuR9l
	 I98RviXRNVEGPGZAxL3rKnyvF+ZOHAI3ySQDAb7/qFeClzJ5zq6kVYN2SPbxpsi+Ks
	 Ae02YLH8adxuRCvqYyHs8VskBEpyPh+QS8QIHPZ8n+pgJ6NAQTCdxr6JUOjBMy3wi6
	 B7MEeC2NAlzw/Ljc1I1DeO4QfM689t++cAEZkit7QzlV4GhtAdeRiFY17ybpDLKBsJ
	 63AH+fuqFKauQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9092CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119203368.12448.14959892497602444721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f4fec0c510d0fc2c66a656c77dcb695484d7c4318504582c1ad44318b616ae
Date: Mon, 05 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791192033
