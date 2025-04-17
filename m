Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2983D253F0F
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744904994; cv=none; b=r3P1AdrLQspd5nOpIuGXWmVliha4SlE+yRBSHP8b8WFGqEz4uh/SPlc8dtZ61r58o9FJwdUHEsTctXbLfi33GEnEcvrrmhMrh1MzFdPvQ/NNcjMR683tVUL9uZPZLI9782asomuP1eGA+blLJc0rM/2J+iBlefc9+ncpow7Ea/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744904994; c=relaxed/simple;
	bh=eeQvlOomv4blZHQbgR63qa9UHJFUYKF3Xpv+Eg0ONyc=;
	h=To:Subject:From:Message-Id:Date; b=SEklImXTsT+laVNI6gwlf/HeZOOGCYyQil0yU8gJOkmcJBJBuYPd/WZnhc8MOHXxkkeosWjf4k3dnk/5arxemrHk8/XivdP6+bmvQsCshWzER0bDxSrzkKaV2GVZlD7IlngSNX9n+E5zdQVtE3ZKg5QBmQnM4VU4Tmq40VBP7GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3D7RU4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3D7RU4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03EBC4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744904993;
	bh=eeQvlOomv4blZHQbgR63qa9UHJFUYKF3Xpv+Eg0ONyc=;
	h=To:Subject:From:Date:From;
	b=K3D7RU4WXPot2ZZZ82Eb7htyti0tg39KhfLwqZE/KmeQL2CiGzd7o2knL7WNQ+YAz
	 Qxx+Y1u6oYx2sd+TOzn5U94v2vEzSgLyxSkkVrpbFZrzu1hNe4IxSDExzIMUjsrBii
	 LhdJVZoY0M4/r5gky9bREkAeO1knTz8SFrdt8clmAEXeOgy3n9Fsttr3d+L/eGNyDq
	 mmNs8x3AQcOqdSnbp7kkBmZR76XqYxVxXugscjLi9lZORBKAVvNHPon9W6rIkUS94a
	 w2wSick7cW1hKnX8IPU2BOEI8nfRiR2HYHMfTqZLtgMvTg+rSWXxv6aSYyfOwQ56Xd
	 g1F0Rkpjqmy0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F0C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490499358.17869.11352814266595429364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b17173ffd12ce9e024e30452e2c994562ddb93bd43cf06a506d23e3b7dba91
Date: Thu, 17 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744904993
