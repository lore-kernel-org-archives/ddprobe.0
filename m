Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4218C23D28C
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779521554; cv=none; b=tbM08Hy08XV6bAQPSc8zkjDJ++xFnxabTvgZfX6Rds9IlteifNK39ZZMXUttN0voHuvyXBnlFc8fzUL34gVTWnedgY19AELbSabf4JTFYsEOFSeVq43GVzSA0f71GlS5uXWypD3fEhOTUYynnZjgplqLFcaMLVwxcB4Avq0zNHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779521554; c=relaxed/simple;
	bh=KPAFbw//GWyiLOIqJG71qrkk6wSrNlwlY0PNknp0GqY=;
	h=To:Subject:From:Message-Id:Date; b=Xa5QruJSTGVxydJmmHKkK5irfWn9C7fKNxgbyxZWVJPcSH9gNoMb3gOD19pJgM33t1ZAOmiEu+QQb/4e3NA0u6MJBs+9he7jRiTqrwWqcMC4yxFSSIIBOAuDiWAxxvCeCpuQvculiiQ8oFsSu7/EbnHFHGhH3h1XcNgJJK88ONw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGfk6dnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGfk6dnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA261C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779521553;
	bh=KPAFbw//GWyiLOIqJG71qrkk6wSrNlwlY0PNknp0GqY=;
	h=To:Subject:From:Date:From;
	b=CGfk6dnVUhDnDRWdHXWa8ccX6FfkCM/sEYJ4BJNwo+7sfCLql/+37eVyFBf1sLa3W
	 tkLuiDlJPz+vRM2XnpkLuaXwayyqZrkRTGD7epqWt2l1p3QSRuAEWHTOa6GX5H6762
	 IO31fNujvyHP6TYXL+QXD3JzxC/5MloddOgx2mjz6sgPp2uU/5VRdtiQgG2qRMqT9o
	 Z0L/Z2cdDd1icOSFx6vTA+ULcat2dUdCRHWYvuYzqk9sivGVqpWiQzcqc/8Bw10siZ
	 7Qd0Y6rXHyIBhM6SyDRAVtWj7pO6/qvjCFslHvup8ziGMhb1Purd7FIXAdxfpvs/hN
	 trPrU0CKrCtoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87F2CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 07:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952155368.24599.18213670033124148047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3187105baf68c8c847c19ba018e8b85a798fd3674edd975eb1e770916e49ae3
Date: Sat, 23 May 2026 07:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779521553
