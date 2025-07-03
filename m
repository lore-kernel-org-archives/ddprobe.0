Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217DD22CBD8
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751564394; cv=none; b=i37HRv4ZjKQeNzvzwc/skjgqUDRylC1A5TuPPY+00hX9fngsDa8yl6ljRZQNAISn6+jAhBwo6Z+OQTDNJkmBA2frTlTEmAR2KOXvHW2vtnhDJI3G8MMCsrbiUTHMKaOWpxqhfWy6g+AXkVRLl9UF0xdCcVWOYCpiNEMgWzwT5jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751564394; c=relaxed/simple;
	bh=g63cgu75PjHBXO0CUbSNmh6qY27nAKhAOFGQ0Rky9eU=;
	h=To:Subject:From:Message-Id:Date; b=QsaVKbJe4WUSFkq98QraqySdFMzw27W7/8KHP+CkcyYSrqi6+KKerY7D7UzWR3JnetYCxedUwHlqYyOwZ2iOLRyD8W2dRe7boJrOFUl7wDlA/MWdelW7ToCCwN4yyxEeLzFHP5hvgnkT6HcYa9g38ipYgqYT3iGtq8olwQV2Jok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Snh/wccD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Snh/wccD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E80CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751564393;
	bh=g63cgu75PjHBXO0CUbSNmh6qY27nAKhAOFGQ0Rky9eU=;
	h=To:Subject:From:Date:From;
	b=Snh/wccDlog0rsez3vmFJkD/BIU6MypP9G4aJkhW5nxQF8lFEhfwfX4b7WfV/hNdn
	 5WNcSyERJNV5fWA29gmjJBPU7RnhakCIb87PMOEn7a8lPWEXdwOnGEiSye11iRhhKL
	 9LsI7ihCIWrSy+uwSZekt7q8uUh020jkFY/C94FyB0X9h4ZvwhMZSixkJ/lOD06+Mq
	 A5u9CFHUPAJ6rfWxk5AarkvJA2EWXm/gUmafnzjyxmMhTuicfkkwYr/1v59pTUk4nz
	 jbkXH90FZZ+m6KvY9NbKAH3akucCq0H2v8r/THfnRk82PpBMExZimQkf4kUUuqewzg
	 JmONU9yGkIBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0DC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156439357.24118.2752800712719163891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f13f538ea06e09a3d1f869e482bd4cc86568e831fc8f01337e38ab84c6b027
Date: Thu, 03 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751564393
