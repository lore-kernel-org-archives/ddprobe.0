Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CAB1624D5
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782361054; cv=none; b=O0mybNjzl16+evXk20iFrAIMUlfiOdVdfBCIxZtKQ8xY0llPKU8TblgHM0oVtgkWysBmbZ/n1Jq6dHlR6gEb0UqKHO2FChChzp3jpo7OrmfuRrCzIKG+6TBqWTljgnbb0tsJhBWjwn3kM4+FNhBZzONzAyi6mGUb0anLYZPlSsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782361054; c=relaxed/simple;
	bh=U5bxNn/ovJz2m69gcfo3Apu6f+BSoSD20OfJQLuRPeE=;
	h=To:Subject:From:Message-Id:Date; b=PJNzKZzWYEYWmHHGsHYLdHjm4sqlbGvLKj1M7DJqWrzm5Y4IhV3TGdk+AogARGoxFzbxUe7UDzfv75Uj9Bg79tL1G5agaD5blc60Ydt5xdBQHMDiDxeu/ZQXOUVds1t5kaDR0WucN/LVBd+8JVIj9amMBeGIzhtKTV3iBJseInw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IR09Z59y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR09Z59y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE091C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782361053;
	bh=U5bxNn/ovJz2m69gcfo3Apu6f+BSoSD20OfJQLuRPeE=;
	h=To:Subject:From:Date:From;
	b=IR09Z59yXlyJ1twFiMPkMZi3aboeuwrq5NnIQALF0BwWIJ44enNLIP+Rlciml9EuI
	 TW0pfryARbZbSVh8Lni9NfAKxyog7DQnsp9JdoaArsTjHDZmJKWDrYNKztjI8ERxhl
	 4uSiuWge/7FwkD+pIzukdmZOiBO20DYNA3urQt0rMWF6G1QdfmWxJM06JXJZeIUTL/
	 ccmuoEoVkmnlDB483gd/aAn44R6kto6FshpDqaeM/MeYsMTLilPILAJDYdVH80gKhz
	 HCg1hoi674p7CmCVUXGpHvDLSYzcU1+ngFPyZFymwBImENoaRLKZDGUi5J7wicxtST
	 s6NJl/B4u22CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0231CDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236105371.23294.6561593163607467741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94dd358adbfd6aae546b53f6980f77dea25d37e3d00cf7a0878c2b18ce33b504
Date: Thu, 25 Jun 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782361053
