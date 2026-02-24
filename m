Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1901633C18C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771920294; cv=none; b=Y0ABg+ywiM5j51IGGYnqOv5kjZBmz9Gd5Egh98fmJoxeMFtilYGk/OSOFpAm+Vw8A+w37WiaIC9JJcDnwo1tzJMUSkZ9gw6TyVWlzsKiYR+fNEdEm+T2H4jEkETqax/9PBYCxLL8bnuozhfaIHq9RCxLwydqtk6f0TZUiLR8XXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771920294; c=relaxed/simple;
	bh=ZwRbi++BLSi2tkJ9/3pSWR40x8+YHZnM3JXC9OL5QlY=;
	h=To:Subject:From:Message-Id:Date; b=hVLze4tbJGKJmcW27KCTlayBMySS6i1jFCZXNtVFSZeiTRfLdfySH09MaCvHeBLnIBbAmBJMWcj7U/U/+eBZBe0lBWVyEt52hl5Sb4VYsXHQabB++GNMYNRvREs/Cq6kYFseMOb7tpgoD98RjeeGMrDJzldCGxlRqY+SkPxxORQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkdynEeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkdynEeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2962C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771920293;
	bh=ZwRbi++BLSi2tkJ9/3pSWR40x8+YHZnM3JXC9OL5QlY=;
	h=To:Subject:From:Date:From;
	b=jkdynEeX2lzHOm/T6xB+ciGL7MNnfboZoHYk1KfncziX6eWu9x//5ZptfNIyKxDjr
	 VxqlR+hcUZKtAmK1TdTp6qZj/9bJ63nCeHQeWP2povbzdcsBE9uVw+iqs0YkaZOSbS
	 XzBUSjlmm2DpFb5DG6cQe/07MnDD4uqiSuPo9ILjUflM6e2X3AwFldOKAVQhahejeB
	 UrCkxVrDWfm+lgGIJKVpWrOIqtNWnbUBq/FVwQYq3JM6aEPuSHsXOIHHY8Nsxbr8Na
	 gH24WnKAehfjiiqc8w6l9bMSXw4mSCI+ZuM+C8KJu3zcnYNgNeulG7iOliWfVBbNmh
	 pKNM9wdTPcBKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B34EFB814
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192029358.25792.2948780905605690058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8db2b298d0844efbbd47eebd94cc6e30bb466a5ac002f783e9b6cc99204197
Date: Tue, 24 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771920293
