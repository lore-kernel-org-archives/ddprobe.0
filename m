Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46987291E
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742797794; cv=none; b=Z/5S/kHf3Qh6MyRPdCVK9z4PRBvFCguAioiRSkQy1qqTJufXdJ4cHeHv+8OkmsP5gCTuuL8du1Q250sWDROrWACb60QUDXyrDqcj0Ongden7VPie8qcPJn27EYrAwR1EbiP5Bf424eEBpKXYoTZK56FNhI7h7ApVltkqyDUtLao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742797794; c=relaxed/simple;
	bh=4etULe4BI0pDF+J+wEgB/OYDXgJm8K3tcdbe5EEH/sc=;
	h=To:Subject:From:Message-Id:Date; b=hWwsqpUVogq9vSgiFp5MUvNaq9pyeT+Ws/iiUmNXztqd9JuDzYTEJ7N11xZjFGKlkFzJXaTQ64s5ZX/snjgEt3WaGHaUA7Vpobv4KPhd6nmUulV82pHdYUV9tHMS5SJJia4UZjJsbpWYp1BYRTF9NHfmniOC14A7rL9K2PkMVWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njTkPR6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njTkPR6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EDDC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742797793;
	bh=4etULe4BI0pDF+J+wEgB/OYDXgJm8K3tcdbe5EEH/sc=;
	h=To:Subject:From:Date:From;
	b=njTkPR6J61BE0X5BsgpmXD+gV0FtqvWtZMu9qHeZ9GcadrrYq1sIKpfjEiT0JKmYB
	 6vaWGjc3lLxrYtEAt0FkbYswKYGB5aWw7RPFhD66Bo5eaP3tv1rQ2w9CRSW//uRDjv
	 /peE+aVYNUakOoNG0CUTbYDaSDDkgEQ5UfCT0GRatO0R6yW5ciW+mJ9mqXWQ4L7Vhg
	 1JvVLcQhYobD3Ap9P5/2bjoTX0F7Cu1YI3/8yrxv3NhvdCK75HW2CC2cx0djaZJKif
	 e2xkO0XkrYogMEx+ouwszdptGAwxLG5sWR6VO1tQ8SMWcwM2jSCUWg4vKXrGfec8eZ
	 Iw0i3VDMhb9og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968A2C36008
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279779360.31526.11343847178886733262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952b60eec0d4d99b1d6388be8833a3c485dfc00ea744e9bf7d47e8ecd877cb16
Date: Mon, 24 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742797793
