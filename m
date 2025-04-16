Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9872472AA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744805995; cv=none; b=NxykwaelEFLo7shEIuSTw098YgIZNA1f4xJ7ajdU+CE73/uX7Mcwh7uwksvPyCbf8GmXYBKMK532IGJFWfBhrk/2AwAHcbNM3UIEKDWbsC6rSiSSQ9EcwtUsAxtVsuUST1K5CN5TYF+V1u8Bhr/8+Q3jn5XPtSUBjTGHvgHkDx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744805995; c=relaxed/simple;
	bh=L4oRZVU0NVKfLPuBHJXZwxrljzq1SBua6T4b95eSRJs=;
	h=To:Subject:From:Message-Id:Date; b=cJL9ObBVyTkvKzJaCJ1r/1ZjNCHqjpfcBDLORcaBsXnyNbUtUDAHSqq3El6V6URrqO+Swtj3Ptd1YLreHJkQosUCm0tL+EwdwhqQ68lAnhDgPHFWpkh9qxlAnicqIfzLZZpkcw59qoq0HPNZBikIp1qBpTZYoI0EYDd4ELFgjuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZX5hL069; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZX5hL069"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FC5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744805993;
	bh=L4oRZVU0NVKfLPuBHJXZwxrljzq1SBua6T4b95eSRJs=;
	h=To:Subject:From:Date:From;
	b=ZX5hL069f2ODZWtw9qONjWZLLXhF+i9n0hLi42FoPx1cPApcIzB03wkC46vVLXvok
	 +DoPapkY7RrL9vyDcJngMICaanr0Ka1yNKO9g9nHvue5pJWUZdoD11s7y+/7al34C1
	 CZFA93BtbgzsJ4IsCRukQ/BGvk0zf1NmHNtSUJKQem5vk4d6gbwV/MC60/ED7lqgHk
	 UygEGQ91D0z+Hx3cjaTVZ16lMJF9cvs3awkfXeblOCJFspZwSjEJOAeDRIN3tXghdP
	 6s10EDIqhi+NWP5La7QlpupFx35yFFSapn+oxy/L3rlmiQw1gIzkQkSXLmWzB/c4ZC
	 lOUm4pmUqpetQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D3AC369C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480599360.1479.16218284896060045523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d224483baf2d39007071dc989a07da1e714667c1e0cb7bb0124f41321d46994
Date: Wed, 16 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744805993
