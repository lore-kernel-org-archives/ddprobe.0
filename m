Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1444229AAEA
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769007834; cv=none; b=VLLTCdKGxtnEUtMZJpW08DK3pdJOoOUvIbFTNktjE8Q6ArGWR+fDVl8Hxcor+LjS0lCo5CCvkGgdHVuxkph+hf1iW7uG9o6J/uM+F3VTy58GkQ5I1WQP5G4t8+cIq9b85alTn7yNQqp44eDwHyLJOt3+mMcw4JBAD40Gx/3CkLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769007834; c=relaxed/simple;
	bh=VYTK4UO0lz/qIL8OSobMh4eK1Ss6RwG9vpBTpAtcyW4=;
	h=To:Subject:From:Message-Id:Date; b=fTamBDZ6Xqwr1PFwH+gKlhxIMq0OVhlZuP9vs5ZkEDrYYxSpQBVZeY6dmLEVeBMjH3TkKzcNZxClx/W/8oQh2XLHEjPBhjS6vxYzV7AMtoQ8CMUj++N/WyV8L3jStxl61Uvn76Tdg5gKvXp2ep6+CdvtzjMs51tXO17R8Uvki6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVlKqMdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVlKqMdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F56C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769007833;
	bh=VYTK4UO0lz/qIL8OSobMh4eK1Ss6RwG9vpBTpAtcyW4=;
	h=To:Subject:From:Date:From;
	b=fVlKqMdCjTku+IkwjOSDJhMdkOHRtd3CHfos294u61DhfO/XW5k1tjHLe3N+eB6Zy
	 wz9voi6CrY/Wgh/d0HSjHW0o/VZT3FMZtUr9wyyTVtIwkRW+U7x/N2tsbhxcMnc7mC
	 P2RPzd/sKaGUy/3vNQFRWfYJDwk4XbBAQCxYK7JJeeWwLrdhjW/pV6gh8O/o26QPAu
	 04JlHohcUlZ3gfiKV7TbV/jlt9ytiETx2BzAyDfReGQrs0qGpuBpeNCu5moVDYnEA8
	 L1uNoqnm8uusfY2nO4rc29lohlnIxLOVNMqeQwl8anSJ3Obs6k4CbvtXalMTU6iJQx
	 YfLaO04SixTdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094DC44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900783358.26595.15756423117606492146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42017464ef57e68a2c5c4d45fbcc27fdeb57dbcc639f1e9a3b2852a196e15655
Date: Wed, 21 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769007833
