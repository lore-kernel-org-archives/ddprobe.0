Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB28350285
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769523833; cv=none; b=eRKhn8EyHrlmILqGZxyqHE6EcByKz9jmMs/F3LyOsL1/sgyoxqG/ly6AC1Xk+iGXPCnaKyEc7Qrm2u1n/gnfcMY8K/YYAaUAjPgIxNqVG03yjK8+t+H8htvbSw/kHHm2fNCrW69/kJUrTg3Zuo6fGvmlPb+zh2uakE3eAucZC+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769523833; c=relaxed/simple;
	bh=yoYthMquBskKMLkWQ3dytxl+9mf6iJzaCcyJgZZ1fXg=;
	h=To:Subject:From:Message-Id:Date; b=EC7Cxwt4GNthzXra+e0Jv6qPZrXmnIqCD2pRtkS9/RgpO7BesfahWIemXYe7e+m5vppVX966E0UwAzRzH923UcT3z+XrW3QQ9Pq6UVp6hj1y1ZC9AiTOuOyKtfAjVLbZ6I+Ye5p+UHnYkorKUJxb3wb18I4gQCYiBnvs4QUp7XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI5ddFiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI5ddFiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 975F7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769523833;
	bh=yoYthMquBskKMLkWQ3dytxl+9mf6iJzaCcyJgZZ1fXg=;
	h=To:Subject:From:Date:From;
	b=NI5ddFiDccQlzpF+JFq7x3DVsycPqMEwBbVotmi1Y7WTEO9Vqi0MPCr3WQILW6Yjw
	 y/GfKHVTROFwOmxb/HU9ngQLeE8hW1ZL35bUeCbjLFjZFCdk0/tCX9rX1yWWBlg1X4
	 RE2+WceIlnxwVYEmpJZ8+TBHHIR84Yb6KqSLN6CXAhYtP/Oqor1SM33SWIf8i1WMHN
	 JzvljhOaGNlLBAODEYrZYLqVlEcj43xSkZaT0zHpnyW0zBwGUEI7OY1Omji3xDqQ1f
	 TnPSmDw6I2XXk0VuSWXiiPtf6eG/UzbT/vX+ywPX6z1JFE20dERu983p1/towvqmea
	 P1xGsZGGF6Gow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89CD2F02C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952383357.6561.16285928985567852897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9ba89e4c6f42a4bd3bd78fa7ca1616129b824b6acb0a609376e6cb6e974b24
Date: Tue, 27 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769523833
