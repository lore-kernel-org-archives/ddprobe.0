Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4036D21A444
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763935914; cv=none; b=S4ANN0iO8hZzqYNNklTlq2x84lb+MDR1nULIQwdIStD6dMiObMWC+627fRMrQgmOgH+9QZdPBBbc26lBK58IQthAdeg/nyDDp0rEy5N90X01xtkB8n8N5oh+k3u4SHt5j6eaZoCyjjioiqw78yWVrNiVV6w4KF4xUohMZ/C0Pq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763935914; c=relaxed/simple;
	bh=GwITqgF8c3PsHY6PKlQkjGiZHaA6ws9q49V47F/vM2Q=;
	h=To:Subject:From:Message-Id:Date; b=pNvk8HPkNyUDk0ZZhvhLKIMqjJ8so7lWuOMyqwM6N+Fs3JR9csjw8X6vT9raGvONlR66JilPcanoZDWJGo+e+4ma3TVLQ7qB2qBBHxk1zXr5wV+yKJGOQqLCG0WvYkzbGtwT8WfmqQOhKF0XbpSGA1DMAr3Ppvulq0KrVbglt/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iab3Z2oE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iab3Z2oE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00DDC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763935913;
	bh=GwITqgF8c3PsHY6PKlQkjGiZHaA6ws9q49V47F/vM2Q=;
	h=To:Subject:From:Date:From;
	b=Iab3Z2oEkkAUrEHO26/V8KkRWKd3tLs51pRHXvTYaYYMyAqT+VEXCjiccOFBTc66r
	 +jZw1gA0xnk6KIy9aFU8rv7ehKd6tAsTysrMHSMDWCk9J7eVTYXY/91+Ks9Bjq2tsa
	 JL+02TkPpyZe50Rw7cEU3Whwz1PawH2veFRR6OeuqjQrpXkbf2vSbtOWMPBpZLq8PX
	 9p46NnP86iScy3+IzRzzkqb7ot8N/wV8MIVO9fI+zKwQhfUOOBQmjzVH13qnctxVx3
	 Nc70gq2Z/n57RgQaHSK5mQIdPcYcBIKVLv7ybzvnp7iuXYKrkZJF+JgwRwA4/Za43k
	 26QpPHxjSkp7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC73CFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 22:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393591359.30562.8815943389141509927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5d20cb6e97ff345f4cc84a5a79dc840103a327a28d440cb847ee08cc77e942
Date: Sun, 23 Nov 2025 22:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763935913
