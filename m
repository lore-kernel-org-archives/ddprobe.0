Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C3E42048
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734508554; cv=none; b=u/y2d5b8Wu1obltiy0ZpX2pkAkmnXnUoPodSOzM8VMcKULEMfEHRWTsGelzvjw8c5YLTMiTpicdLak8OLgkib0PYU5H2LHhpUIcZuFedFAQ+1y9ZBn49hS/J89y88/t4qdRWXjDFg8ZqnyV+8XNyMUDEKGHpRay5st5J2yh4vNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734508554; c=relaxed/simple;
	bh=1dH23WHyPjAWVa4xr/hslpyKoqQfutNosGnaoXZgtWM=;
	h=To:Subject:From:Message-Id:Date; b=PjvqrIdtlAu7uCHcf591g34jcKwm/DdxIOJOGh8O0y7r4Hl8nF6nCQskTJUMhEd2+PeQGeBV0QlcKvSN9zam0vtqXaXtDIt5T2/YFzZSozn3wKRtZskQyP4ITiUJzATpoltDl/sYGLNwst/h+zV69Xtl1SEez1OAPHbLcIYqVXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeV+x6dS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeV+x6dS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2813C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734508553;
	bh=1dH23WHyPjAWVa4xr/hslpyKoqQfutNosGnaoXZgtWM=;
	h=To:Subject:From:Date:From;
	b=XeV+x6dSwF7CEwaJR8+fYzvCVzswEufPZvB8eg5gPWr3EeupC+NOEEHHfblCm9Bi4
	 /xa3w+kFLyTcCvQ5T+LScGHbn401muWKeX6ulCp1FWr+8hx6yXI7Xp7MmZkTc4kZmM
	 F/d8KP3MGOdmNKWOnej5QHZvG7ZMJ5Jfx4E2CCxCI01x4EWgJl2Hm7M11Xpb7G0vFN
	 oxwE8+iTxeZwzBl4a6Hz3prBsSLwzNzpXFxSCUndPOUv9HppXr3CIIK+eG5RJcSciN
	 YVIOdN7jhXMvhsNidXVtZEMUSC2QShVelIu4M6ESkrEwsWBZhOabLZltc2kpfme3CW
	 Km4NNFr0ttEow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921EBE77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173450855358.24718.9379859141332892017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0514a27f1eb44b3ff3c2600261eae3c587dd9cab69aab53c0152732f3e897511
Date: Wed, 18 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734508553
