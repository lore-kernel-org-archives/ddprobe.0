Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3110C317171
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779977554; cv=none; b=s+DgUtaReObg65CP9kVjGVPuaLoD8nm4gkkEKrstF5AMVTdxgpEVx6tskxHNscMJkRU2YG4Ysu7iAiYuqLKnalFGYZwGxd+3rHYIxho6jcP0nEm8iXPN6IL8DlHZyaupwf+Wad+d0iHSbuGh79JVKk0r+VDCmnB6BOViqAszVdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779977554; c=relaxed/simple;
	bh=DgrdT952hkeLYC7yn1ib9Mnbmz0prEHXWKU2ICtNjSs=;
	h=To:Subject:From:Message-Id:Date; b=dofT5qhgR7zg+euFFm7vvN7qlw9pmHLjhQv7WnFax4yQLnKmVAko40bGBs9lsyH9Ha1blrqQiqiWv8Oqx50/AJOEaHY958wi78Omn/Tk9fh2iHnQUcO22dVigkInNutcNvL6YAr3ZMvOPV/xDxGhzch3DMlQpXuD3jrz/lqi+Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6eZunxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6eZunxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C006DC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779977553;
	bh=DgrdT952hkeLYC7yn1ib9Mnbmz0prEHXWKU2ICtNjSs=;
	h=To:Subject:From:Date:From;
	b=Q6eZunxhvjTUOms1S8FfmhVBLXpK/WkoWF6ZUbO0bLRrWNTJ0cKEG4IPkWNcY1hOA
	 YCp/S/LDCIElKAXuIVANLSFaie1ZtLz08l6AF329PUT0avJBWNNLQ/tYs861tCyuKr
	 8pQEtPvVlhc37QbbNink8E8eRhLziebE2ousN+virc4vc14agWRRy2J2jiwV58GjhO
	 x7J5aJWydb/konOe0c1s8jHEbfprURkllBG0WKtCedroCdcUtW9y/8RuvF28+f7RKP
	 bcBeFBHPQPdKES/dLU5f32bySqhWt6FTrrWqAB2rzLw2+7QMbc1Ni+rROdZIf8XvxV
	 rZiAg0hw+cHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C55CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997755367.19102.15664141754743656992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74c05d17bfd9d2fc54b80364c783670c2300ef958434584c325b131961a6930
Date: Thu, 28 May 2026 14:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779977553
