Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF63226D18
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791039634; cv=none; b=bYrRxAHnyy/seJFDGFrlQlnE/X24DiMqouCqy9Uff0+jYGZy/U/F5Qiafmi9vNFC83MC9PtX6EOUN6F+nIOmPo55B9SnnCbzcm7EW4dSPrwPH7oecVI4bzKAEFUhc4Ye+Ce1+PSsqWCNDhKvlnqPPc9yB8l9vJIcgjjsYfRrccE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791039634; c=relaxed/simple;
	bh=WfN4twCS9IXpQW4PCo0QzFxV+ijC1dvbT2rR7xvRAbs=;
	h=To:Subject:From:Message-Id:Date; b=LomY0uFw0QuebPBZsgJ3kWse4XQh1IbRTHhabKdfG18ddlo3Z0nI+7g7Kddq9rr/owrILFxJdzx7TQHjbg8TT145z3PbJrmQmXeQ+LkZDrSbgJ/Qzbh3UK8gNyDyOqc0UE04kYvB7lP8h6qQrROGyAeDZIQBKr+S1ngGIKel9YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5J1qPYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5J1qPYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2E9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791039633;
	bh=WfN4twCS9IXpQW4PCo0QzFxV+ijC1dvbT2rR7xvRAbs=;
	h=To:Subject:From:Date:From;
	b=i5J1qPYJD7oZxNf7Yz8wE4BnZIHdnRelYjvPpgA4oKm9/4WHLPC69vqt3Lh6bAkd/
	 W/Il3CShul6t5tp8vbgYzGdZNkyq072EErMVxq+wj8wiWQ3QtsAZJaSgh7nEBf/sg6
	 luLXxv4W5yRob+W+hqHmqbdJPNihUhWyaUcYd9TnI6QOjE/cHUqRwZs6b/N/crgY7/
	 jUysmT76spAlj6S5xoK3+00I5fUJwBwHfsP/rAjFMZftV4S6eR0V8UVaD51GKoPy16
	 tgEFDSgyZGOC+uyCrKmfg1QuaTx/Msp2q2wgz5pJUjun1Kq+ulwNRK0yblVO69WkiD
	 OTNMpL3RrBMmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DA4CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103963368.21330.6944394440978217665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a7ce97583d63e1d6f9c725ea09c4dabc758b9b30b69d230c8c00b3326b788c
Date: Sat, 03 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791039633
