Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDD127145F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764179574; cv=none; b=O+Pz7NFEXOwZay+mkBhYnIrog5tEk2UFgnpNajp37tGjA/Wm1NpDk1TbygbxjAgH3u9gLgawMmzo5sF846/h9ljC/+3Wh0ItaTsShrp8IegVzgBMkh7wxtgcEZ3Z+oGsYi9RrcxI6KU0V/57blrbQP6wUMoKgr2U0SThDxhnf9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764179574; c=relaxed/simple;
	bh=IHzdwpYtwfWYHE96lIpxdPZUGh5BNkpo2+/LDg9rYQo=;
	h=To:Subject:From:Message-Id:Date; b=GO10GC46gj27WMfIgw9Q2cNPrOCUekTNs2kiTrkimsDibMfbbWeA1auW8k8BRK/BoqMRBebGsAj3WX814dL/44HN1E787BNkAbeV+Ib7BoWDfA4tHJZG1q91sMGfOo4wWT0tH0QpQdMvG0v3CBgAB97ZBjpgkel5aHA4ThluA+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXhhss5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXhhss5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC54EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764179573;
	bh=IHzdwpYtwfWYHE96lIpxdPZUGh5BNkpo2+/LDg9rYQo=;
	h=To:Subject:From:Date:From;
	b=OXhhss5p9S/wqFR4QQaMFHu/J0ETLqCk3+1V0rCofWEHZjp2NS/GcYNjXe/jTlErD
	 ft4C0xsP73bfMzFx5YQD1RJjLHkbTNlO6dtioXA9O9y/IJO5xKIWstnRcvSciniEMs
	 /T+EXmZpEUNMxWu5xoUz4v2g6mX6pgpy9Xf/mDt4zmBakkWcfVkbcmVKXWvHsjKSgD
	 o7SmZydTpbTSmAwCfhrxtr00u7VLbE4wkT2smVLlLGIf3iqbQeahK3Heq5UdGdOWdk
	 KeAlSKq3RLR9y14D5BiZvmGjkSPrj7AavLJavexUt13p8d82yM0C6ndk1cOs3mCgP/
	 L/6bx4eyQHB9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98974D1118B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417957360.6837.13739241057210707635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd28ecbdf8051b05ca5f00c04a28a9857b5fbabe120c8ec812400c5b69fd944
Date: Wed, 26 Nov 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764179573
