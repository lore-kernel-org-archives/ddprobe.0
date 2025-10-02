Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD7923A989
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759372194; cv=none; b=Uv1e4TYYIpj61K4Xcq6b2tvZM9+pagnLlA5syVnOycQtQJG5rRTjvq+Lom/eTl+DcGGq+hg/PMYJiNQ3VmFtcw6JId3cUYFnQh3buZ//AlEmtfktDQSU9ViwfFM0/fcyui/H9aWJXBn7dGo2wwLo4XZDHcqlkFEXiZXjXu6oNBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759372194; c=relaxed/simple;
	bh=cwvkuX3R+lKthfk2DN5+91mI0tcJ+AApxtKz7QtktcQ=;
	h=To:Subject:From:Message-Id:Date; b=KzPuiarYUkX8puGKil1E90X7z7n3NqRGDGPc6dI/mxOUG0UOM+e3BVJ3/7npBI+BQByTV0XuQARXuR3NtqFpo1F33WjRpuFFKR+glxW6cH+E+3QnUhVnXmZx95ufIiT0CDL6ZytsQYecJimOLgEz5/WIrVioDMr8QHeJ6+TqnSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWnIzMU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWnIzMU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33EBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759372193;
	bh=cwvkuX3R+lKthfk2DN5+91mI0tcJ+AApxtKz7QtktcQ=;
	h=To:Subject:From:Date:From;
	b=UWnIzMU5X4jW64MZ2ROk0u8OJjQtiFJAzZSI8vIu2v9OF0s6av0riYT7kZJAOYh1e
	 RJq8I0vsj3JJ9Sf2kC7z/B5WV3WpyVROZ4Ei7B572rrTzmRX1Y5z0vdG0rL6wPimkU
	 B80EgKRTJLp0hr80FcbLXzdHwWRmS5fb6nODkyCziFHF4saanafRKahBIxTe+oHCae
	 PwwhzAq0HNVyZuMoWpBC4t0ZWYOODOBanP4NV+1Nu66wxba/KmybEiTroxmI35mM6a
	 MI1gIpleEb+LpWt4UfU2HJ7L191KphOjkiVZyFKs/SwzFZky2PW4YYfcu7Hhi2xRzo
	 5RiW0SDn0wnVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EEDCAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937219358.29421.16200057257801795745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191a2954cadfe1143ad254a1cbbe87448400f22425f9f0648c9b697fe6e35c75
Date: Thu, 02 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759372193
