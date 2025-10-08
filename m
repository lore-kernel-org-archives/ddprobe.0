Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4B127814C
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759954194; cv=none; b=H4YBOv3twUlRj3HUohfrffuY8EL1AyuVbBdh6+lbXoRxK7sO9wSy0hIGvkal07ppWENFlV4BP0lzJWX0DItJBB3SrY0G59rSDoAO1hGADVBizQgMWL6i05v+ilIYu7Va4xP7IZil8iMKKW4sH6D9RS+0eBlCOyxSyKn8WevenoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759954194; c=relaxed/simple;
	bh=j5IYawWC5nWpiEWHJLniufDsRGqelcTkPQQg1sDZ0ms=;
	h=To:Subject:From:Message-Id:Date; b=mwIKEohI1UoturGJfzAwAyYjcDPJZMi3uSabKATiUVwEztDH8ch0HVA4KibNfCfpLQ1ENJ03p1jTLeopt579Yg3RUUndAOL9pN1mNRoQvqHOyb0pet+AZi3R41C+/+VVIzRkoS+beTq6yoAeM2+Dl/vr1vj+7b5cHzxxzY63heg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aglIv/Gm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aglIv/Gm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AD0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759954193;
	bh=j5IYawWC5nWpiEWHJLniufDsRGqelcTkPQQg1sDZ0ms=;
	h=To:Subject:From:Date:From;
	b=aglIv/Gms76NtA4KuE91eqMM+sC2pxfdrtFyFRZ5Cp6vKbBjsaAXHK19BB2wZSB0G
	 WUqQYtbgNWQPPx/5IC68YtiOxU2NHqbsHoVT+NQfOfmpEGSjAGDD+HZDCJYEYzdd1p
	 yjQEA8MLA+oG5D94Xu3Em7xr9WHQuMzhVHIFECac7UVtVV+bnfiIJKxQXxpkDTBgH/
	 z3WLADH9SN91KHgMDNgDREsYjaDDzys+XKLVuVT/W6CJlMUiybhGStD/IndjgrcEfZ
	 TagpgLFJTdQWv+2KEasQ9yi2P5p2dBOtmY/FGFhWVfRmDQKRReib+L56JOqn9Dsb6R
	 JX9KAgshdbMcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94404CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995419359.30692.17552323005972023573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f8f1fcbbb68dd2fd6c3080fe8b249d88114c9da59df36762abe19b5e6527d7
Date: Wed, 08 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759954193
