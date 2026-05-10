Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D39317B418
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778425234; cv=none; b=rgin4ARZnDmGhCu69bQTlhWerSkC5/cFDhp9i4L4cprtUq1hXTR7UDGfszW7NdcjwEZuAyQX0lcp6GxrgZ2bAzzhebNWMiUbCJsMPsp9OYvPe6QrS2JXTBW3GPfbXMPUC/KVTfn164PpQkb1lZ1GPWjc1lvxHxWavtzGPH7KRPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778425234; c=relaxed/simple;
	bh=GS5PfGBt8ldqLA60xyZj2uxlIolZQOrn0/85eHDcOm0=;
	h=To:Subject:From:Message-Id:Date; b=rFcGESN3k6rRoioqvPU8h/MPxjXgAQWMhpdEDcJWh66E83FmPAaO09OxRrTLlxylwfgQQ4BcDR9Bki2+kt7zTMadI/3cbMrQDUHE50rH/F0v7i82m4TGkttc7tum9OQnY33Wt3B1R98WQMrR/fEQ+InnIkxA1TVlcCQrovb5t2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr8NIHjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr8NIHjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B9FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778425233;
	bh=GS5PfGBt8ldqLA60xyZj2uxlIolZQOrn0/85eHDcOm0=;
	h=To:Subject:From:Date:From;
	b=nr8NIHjCohhBMT5gbx7I5b9rVqY4er2BJYPxLx2q2Ug/l8nTsZv867ZAhKROKYjky
	 PMgexxzh6sfjXgjKqCHpmguIOAuilBqhYIcEh3XmWuhw30iRl7eflOUviGU19ao36A
	 jK6zBYcIWQp7muTkkj8VlXKNoi4NndusjXpwOSH4eCm4NF+N34qmmHoIifJx9HZySn
	 ycbgVhZKSus0F3M77PpdN403mhXmvYvh3vDqzLEFQs93eJFR72+f5bBscmq/b1pyqW
	 PLfJXgXnbIy0A59+/3rD72Tfdkd5nrUsmniC84uLdjCfKodM02rlFLiTI3JXLId+XI
	 47DXRsMz5nKuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F88CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842523369.11079.4708201311075351991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a1841b645c16913f1168372b883012c4854a5dbd4e44ba14621e7d578a9f4f
Date: Sun, 10 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778425233
