Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A3C8248C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736736354; cv=none; b=XK7vfcuX3+xCwoaGlKbxPiigawm1AGAP9Tqj3Nh4H+t3oolYjgiZeI0EvAp2YGAnHKnVV4VPB++bbRH9yqSVOiyK641EOwduQRaIkWA54RiaLUE0ghbxbkcaIL28JZ+xSm9WHJFAfzHPJFU8Ij7cOh0g+oscNEa4DF5OLl/HTfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736736354; c=relaxed/simple;
	bh=GXHPik/H23v2Senk0EuVoT8zjckn0Ip9e3ZAwly2jzo=;
	h=To:Subject:From:Message-Id:Date; b=dibCL0QQQYmBvR91sq2VbSw4n+KBpmO54EvwE8swhamMqqcWyFdjJreUjyAyRLGtuqPqML/RzDVYwWeEDjWEk9EOyNGkEFRrHdyPOdqPc5AoktMJWpqaqBqk/ZC8ccj1PP7nwYUBMGmMHr6OlEHfZ9WxF+7kYVsmRPCdjB3lBq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mV+9gVJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV+9gVJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94DAC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736736353;
	bh=GXHPik/H23v2Senk0EuVoT8zjckn0Ip9e3ZAwly2jzo=;
	h=To:Subject:From:Date:From;
	b=mV+9gVJioVDDxApVFu4NpJ8r0bgYxyS/77QC8wTTAl8/eMDbsJOBTS42cL390SkXz
	 JqGpPSvh6aoYHAfVIC/YkzHoYAybNOhzCFSK/9Jm3RERQid9lH0ICDaU+i+JhOdXcT
	 YU7G8Uy1cUlFLtimDYC7X/kej0Q2wpnk718O0f6O4kBd2My0lskfMq1+QLzI57StbF
	 Ib1osJ9cuLTOMtQHwEQBiFSxxEK1JzBVmScDJ5IJ0YfGrYABcvKNv6aPuJPz+lTNrl
	 8v93+KWulyBHMQZBUhbq/OpV1G5pI1u2TPW5sXlCASRWpWe7E3dnqYF68vhPAVB86g
	 Y42oFH3sEt5fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9248EE77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673635357.20897.9817051493228871676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cad68b8754d77d9bdaeed64bb738c317ccdbda8c3a0645ed58d56c9e8cd9ab
Date: Mon, 13 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736736353
