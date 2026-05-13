Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341BA402442
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778692834; cv=none; b=ae+U6o9d8VVdjc7FtZMte/ROjuwJeZf3XdrMqh/bmV7RLwiAbBVw1oV3VR6pxB9zUM1kUpkSWSDnpfvGhcI6h2kmI3Pgnxgb1feIebzVO89O+Wwqt5QrsPfok9bliKIVT4AQyjAbeQcTGUBb4oq7vWmT8AAevLj3e4FT+78fiDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778692834; c=relaxed/simple;
	bh=sLGi+FYBhEX8JDk1jpnJdk+yB4kR4QAr9Efx+2TNe6E=;
	h=To:Subject:From:Message-Id:Date; b=ty9J1xyA+0kk8Mx9VeMlAHdtw9e5uBnUyBYNJ7YZHxxaHiygJSRrDA/4OLpk7N+aY9iJsjxClEiWbTl2giLh4mMfx8LYype1LIK3gtF/qUfuH6wObaDYE0bC6sykxXDPZIf9koi5Dl/qAVC6FWxIb896I0aj0DW7++MUSxi2rn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AftYkCwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AftYkCwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA34DC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778692833;
	bh=sLGi+FYBhEX8JDk1jpnJdk+yB4kR4QAr9Efx+2TNe6E=;
	h=To:Subject:From:Date:From;
	b=AftYkCwzklo9PLy5coK2Q3H96UhWq4Dh2wSvcwnqvAO3oIEfMS23RBpPTmp8ZiYT+
	 Uy/ij/ZSdBCBeAGyZr/M/zPiqO0aAWcdtau1Wn9vkYDUhgE+i4VXarQfFIQE4DY+nG
	 VEmP3ILUUsfCj0+IFDiineqtzOczuG9gQOzGd9G159t9dq7torImBiMTzr6rynTiPr
	 1zpKSvQXIO/H7g0eDE/+GK/YbAK6GajwWhsM/1kTeb1rMmVcp9Y58A5JxIMdp4kOQn
	 fOAimR6VkAeINmthILC4/dSa5WIL7jcMPee0iXP0oDy+qXJ0MKhFQY2g1g31aBsWGB
	 GvuBC8e7DYzgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD16CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869283369.29986.5838335046783093830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2fe29293dfb5844d3c3bab63d7373089705fd53d60677d24994a81bd198dff6
Date: Wed, 13 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778692833
