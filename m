Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2C63191A5
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757095194; cv=none; b=KD+uaYYvV8kktLRkGogTfT6aT+u4Mamqw9ajIKDhWvBPkPId2m2sY52bnkbmf+3SarT6xrX0QnLQsI8SGpZyHQBTdGaQ5kztSo2CHsAo0vKLQLsw01YsaXIJ/qa9d57ySHq26or2ojx6P+hZWQx2T6jc1f5lgPQ09xq9vJ/C6nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757095194; c=relaxed/simple;
	bh=3IpDjTcAVlGjrcRKJ/R2UMdQOl9m+w6BKgUDg3+pwb0=;
	h=To:Subject:From:Message-Id:Date; b=j+L7B3IlUtXuNxpTiD7sIoskSGzHYMY04pjc1a1+/UvYiq4Qx4FPOGutaTzMrAB+cs8Xx7xe4kqCzm1y5RjFFb3siJ24RLzbm0zw8NjmAmMdJ5VTgI8V5Ft+Rthf3ZiRbBlsNaiEiIsmpDocRlcPWyuZ3yt3HqSp41gN3xLlwwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfrGJsGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfrGJsGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31FFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757095193;
	bh=3IpDjTcAVlGjrcRKJ/R2UMdQOl9m+w6BKgUDg3+pwb0=;
	h=To:Subject:From:Date:From;
	b=VfrGJsGoPwdG6zF8afynu/VdfBz/HwESsBL164yV2dh83cQC0uMINMmJ+iwr5acal
	 UT+AHGaHRajlcbqiGzZ3f+l9DGXzaM5/3UuSKkH3wno+lymUwSxPjstkq1Pu+HA/J3
	 /3HTHXxAL+8r8jyGOcLthnDHc49NYthffY7IEyFuSRHCUONz8FgW/0qz2YLtKQHqGm
	 nrAqzS3wa7HvX8YSZS9Ig31kmSENtfadDF9fof9DQnCM4XXkwOw0E9YbXf7fwY5wBA
	 +2Ug+Y9SVWApX5KYAvvwx5D2QL1/xbzS3zJqu2sUFfPxfvN7nezD7RYTVWyFJUBTbu
	 7mnZuoBl4yLjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D4CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709519358.23053.17441691366604769600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc1e6edd1813248081d51b3372cbeb07a46ac1bd90e13298f45ae055c4fb882
Date: Fri, 05 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757095193
