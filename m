Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341BA21CA0C
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755349194; cv=none; b=j23KCNtmgbQX7EPLzTBdZOBpQNavtx+Tc8G0l3M/btuzIsrgAwuJcde1Z0azSsg6Vr6RmQ7p1qlU7b8kzK3ajTLKpZ86MRaFT1MSsWW7yYnoGiERDOdhtSN73vWXmTwEXEGLLGv3saRfnF9feUj770a+DhtML4/ESw2onrvXVbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755349194; c=relaxed/simple;
	bh=GN3AP7aqoWbHoDJS+qNiDdShbMk/KzwBRChXriRMJkA=;
	h=To:Subject:From:Message-Id:Date; b=FnUxOd4vRRCMMEe7TqL2BFdXzIpIoOLrUk0IrYn2S4V+ST+/RtbNZuAqmAJrAgcMYtcsY80Q3bJMUpV01SoVajNiF0vzchgC3wR1rpF2rms8tbKntQs9cYHxNyG2KrZa6HGaUbwpdk07L1fypRZGgFVo1fRyD/hyV8mamSXaZz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJV3t808; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJV3t808"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A048CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755349193;
	bh=GN3AP7aqoWbHoDJS+qNiDdShbMk/KzwBRChXriRMJkA=;
	h=To:Subject:From:Date:From;
	b=CJV3t808+bIJ0924rBXjyAZPXIEaXw5C8rkxKfLa3v8P9Pe1kN1N+3i52meT6keQJ
	 UVOrdOXN/ZW+SJwewqiMofA2YPz8+VRir3Oislr5VuYCsYjXFFnWcsvdcN7vo1/8ym
	 b/0DOlif+agRatRNBOW86dY8SP+Sqq3Bh46SS6+vrexGD/SwFpW1grmk8KYLREeZAM
	 +GFgI5kIjrV/gG1Loe/agYqhirL1aXuIcie/CGkcRhFIPkv/FIYkcXHFuB26sJ/RwB
	 A9uo6q3AagBhPmkHB7yiX0TllLybboQjApGeLmMr3yf9NPyWD1HYzd3SLWmWqxt8eR
	 i0DO/GTTOoX+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC9DCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534919357.15988.2710773842517228636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60433815d3d47bd245ed4a26c800a13a880ce4ae2f1d7df42dcedeb0ee7fd55
Date: Sat, 16 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755349193
