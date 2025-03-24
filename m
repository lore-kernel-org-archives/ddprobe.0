Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676436AA7
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742793594; cv=none; b=XYjzOsXeyhiUTd6MU9OQw/UhXK8Y1skERgoAHGf4Qxz1FP0NGRPhk36gMJLyGtOaNm2AaTfAq3Wi8bZGh9GVEQTTwYHs1s8UKht5/vK+Cps8PD6pus7DQuJ/DqbrMLanbAfAaMrkHMwHtbeD9vYwxq+20KW6Eaf8xXizFiax4gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742793594; c=relaxed/simple;
	bh=LKQAot+yJe5mTGPd2bVlrN+Gk0OmzS6+cjwwwgj7bIo=;
	h=To:Subject:From:Message-Id:Date; b=f4OVECW/FIl1tBUGJAKFy+ra6WG8RiUwm+l3rziP8op3M/FHNoEFN04v/rPUD3DQjGE/70KAkpoz10ecosmNrsJEKvM3fy4TYZWvEo8mPP5WV+rcQxS9rRxBF1zksp+sHSqk7POKy+ahW04BGNSNyopKks0roDRBzpKmknUW+xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Po52yQAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Po52yQAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28C0C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742793593;
	bh=LKQAot+yJe5mTGPd2bVlrN+Gk0OmzS6+cjwwwgj7bIo=;
	h=To:Subject:From:Date:From;
	b=Po52yQATX9EovfjEV75UWGip0oIqsGahGuVVrp9hvRHJaJBTorvyLiVbB2jHnV5hv
	 MYbg8PyrHRD/fzHkWGVa0OYXUxO0K/U+o7hccaz5ooYaUlUfLB4K9jvaos10A8CBi1
	 0Vi8T+ouBWZY6kUAB5V0SH9Nylk2R1TGUbIS5nWO82N7Gx/EfSwRamqlXsBYiVeqiL
	 9Zgtmm9veWk1mKolHFcgnz8cxkLmLwB9o0diRSfG9IZm1qb1Qx+m4UHqrjBmsju7iY
	 KVpb7+nsbbQSim7Xu+qqMIchRzne96bLUCy04Y6oxGtAqDDlEv3goBKioQaNxvzC2u
	 3t5bBoZ40ychQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9113C36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279359365.20835.9148350784485611624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb96ab5079c1114b4a704b4631f661a7ebccb2e44abd536312812ce4fd72afb
Date: Mon, 24 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742793593
