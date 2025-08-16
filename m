Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3870C1A317D
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755367194; cv=none; b=mvCcCRzK3qn1WYcNAzBJHSkhG7HSS7SzcpKV/9OYF5J+Nv69G6AyclZuapPjeTuDARmaLjTiQs34I1FS9ckX69/k+XIuAWEUK68Ol3Johd2Uw33/A5Dbh+Vr5BrKBnyJGyT9ek8LJyJifvYReRg0qatIjOkysQkPFMH3ux25oL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755367194; c=relaxed/simple;
	bh=iRpz12IBk/48xB3SrxjbWdaO212/bKhOWcaMrdsLqB0=;
	h=To:Subject:From:Message-Id:Date; b=OKrXBHWSg1F3mOZoSHqs8adLAnTqsbfU8OYwnpN+wmAimvvtjTLKDyXSQP2wZg7VrWPSsT9f8SuVlFo1e5dXwiWRnFKefSwQKmydfhzYxUq2kS2HQfwrZl1uPSVzIZwJoukLk+N7fs83btCPoLqagJyVACxoHGcePzawGA3Z6BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLzOCUpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLzOCUpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66BCC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755367193;
	bh=iRpz12IBk/48xB3SrxjbWdaO212/bKhOWcaMrdsLqB0=;
	h=To:Subject:From:Date:From;
	b=DLzOCUpnOOhhCk6jHhFWH/UgoKpYaLqeM5AOpflvbz8juD0jypmgsi0/Kn5js0kXt
	 Zknwmo90CikK1Ea8xIT8eE/kX9kcJ9VpOY56DXj6mNJocxgkME6wDTYBk3/WWcLS1C
	 IMWkInWpEluAMx+Nm9s8tMwoz0WfB+PAVDzUGX/nLOXYR54X87oqZC4tislEyBcXRc
	 /aB5WzQz+aB9b96HUFs8H6Nr9fUDE/XTZBMsUDa/FnoFnmIPxrFEPcQrNwzUAxTWJk
	 E2zcKMwFR2TA3hUZ1+srTggapdDLz5R1/BxMMUKpQyXnxkpc/0c2J7RbzAThowjPg3
	 o/3oqvvVnrehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F85CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536719357.31086.15979479337978454523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b10d5ccd26a2582efa309a3bcadbb289c8657f74fcf8ca332bf1873a36c6bac
Date: Sat, 16 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755367193
