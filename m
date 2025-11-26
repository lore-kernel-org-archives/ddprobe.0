Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F4126ED5F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764159774; cv=none; b=mJeZwnnIpQlYO/3zXk0P1Wg1KJj8wmVjDmb+vu12WD5STnfh5T92MTbUROG9NmSAJj5E7ehDYwiY5dQz4KdM+yhdRMXIkv/6BQcxGIxbs2NrL/krV5hzLobttxRl6YbWawggffNKZK1jOX6HZnAmZhOjE8Zxpizs9s5DmpcIPMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764159774; c=relaxed/simple;
	bh=7wq6R+f7U6Sz3tqEG+auGqQ9BAlyUGRCUdiUnr6dm0g=;
	h=To:Subject:From:Message-Id:Date; b=LNCiHnH5p1HrjErsbkGXgLd073Tf0loYc9yiFjRiUAdRODhZ31dXG8HiWF9pMEbiaI5+pKA+wOxAwW4YBeYirhlBDSV4jdyMaofDEWwvUmXN0i7J1uEsZoS/azOtTsD45JdVMmvxIFVEBfDA9KGD8slLnWLE/6h0bzLBsdZOnvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Obq8Hv5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Obq8Hv5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F1DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764159773;
	bh=7wq6R+f7U6Sz3tqEG+auGqQ9BAlyUGRCUdiUnr6dm0g=;
	h=To:Subject:From:Date:From;
	b=Obq8Hv5kPEk/A3RsvQQYr/KtifGbW4RinjB8sBZlY1mmDc4X6fDcYzjUAs3gnKHZn
	 yWmPZ9CP8LVpHrNE641Xc6Ul7G11aSr93WDD+DBb4Z79YIQpcvlZKGq8Wxl1jPbPbV
	 mByVXUt9kYAf//7Gxoe6kQ0Spk5wruv35hTHsMCreIVlGx9wXRLvDSDdZGYwSi1bDw
	 JQys42A7wrZ/3y8LAshNM1aEN7NysGBAf1RM0A/+VLCLhOXsZ9KqgMDDcv2CKLEkAG
	 aZEm0focqU8Nfr5c/LrMy1wYYzN0P7jM47NRi/+/Zs52AakPpzqPVC1XCrE3ZJ/kAD
	 RAyUtyLzfeupg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92247D10F2E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415977359.31823.11084954238009404047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f1f8419b0195c4f3588691a3ede1765f6a5a694d7661247d56ae91ea0cf1e5
Date: Wed, 26 Nov 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764159773
