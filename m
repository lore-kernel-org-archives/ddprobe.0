Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F482EB5B4
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750951194; cv=none; b=dDvIni5JXoS74aznje0VIItKAXTZpoKGFulWubSpK8mRCJgF2a2b4XYwuUHQ4mf4Vd6aDNJMwp3Vo6rlO/T4DNvVzC7Q7KhCzklFu9ECkBs6aGm9TRwosghZmWOdfwx4WKm8qx4wNMTnp8e6GKALlCa16syz3z+CTtDZe/3Vmbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750951194; c=relaxed/simple;
	bh=FP0rIGrnJDKn4ODXLovKfCJby/qf0YcXzgWS8LSClxM=;
	h=To:Subject:From:Message-Id:Date; b=XXwH4LrdxCePwXEgHk9Yigcqt22F5O36QkLY8nEe41wacVtxkQQ4jel0FoxwJYtf/IaZ0psa3UGLqLV2gj7An90waYXM1sPeQA62odA1hdZUAv22bJzSv4n6/rwqSZQLHsrrf61OfBaMSdoTJ8wgekUCT1lnM+zmLwtQ85onsIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+NExsid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+NExsid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5D8C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750951193;
	bh=FP0rIGrnJDKn4ODXLovKfCJby/qf0YcXzgWS8LSClxM=;
	h=To:Subject:From:Date:From;
	b=T+NExsid3qFx5lu2bh4HSrhppG7KP2WMyBTzuOVzk9wb9SqvueJQFKZsL84aobknc
	 O7SJ0CbN9Gynx6rUfF9LMIx3c0MjGyF9w0rtUyjSTavgYiaXu27Ig01noykfjdxAus
	 bH00c05byWdy0O4oxNwmrhgNUdoNGY5/gfRuapSpFvtZdHXKtxyfZEE+xXj1x4KSya
	 QO4Dui2LNbs9c8jd0CfADFaB6yQEAJVs64d1p0bZKn3NjQLYBZKCy+0+D6OV4X3oz8
	 zbpuC/79EjY1kK2NsVW0pk5aHiff/tJ6EyctImhVlErKqoqqSreFlowcQktPnNgyCT
	 Qg6Y3/Od6d4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9342CC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095119358.25172.6612313349532420259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca80a71c53ac3870c7710ceb66fd364989017571151d9fb91b11e480bf0c3098
Date: Thu, 26 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750951193
