Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4E8366832
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772753094; cv=none; b=JyeLig4gug5U7zX1+k7pLLKlFT7DR+6GV2nu9WBB/VuMNUrC/39YGWV7ZUB8FVJQ98gVteUbO/+uItHi44GdLft6oM4133o8++VSu90irZ81rk3QQCzdFNDs/6RBLwJCS9YAr5OoQbQXFwyfXOJa4gynC/m/A5AprLYfXLfVRWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772753094; c=relaxed/simple;
	bh=xotPTbU4/YWEEUBGlipn+xr6WqgZ25BHkXCjoOgm+NU=;
	h=To:Subject:From:Message-Id:Date; b=eMF55pP9c7kgvKaPPWYOc/OpLXmbGK+zYp34Ri9F40zge6ciq/xldsRFd9b7vAa7hZw9cuOboOLqA6vAcfoWCiLNQjSSqRSOJUQEv4WzGtGn5fcMvR8PHvehlI/vM1TomWmZVRECsJVnDhRXsW2F2dS9CaHJLeKAip/POjvzQ5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/Zqskf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/Zqskf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B97C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772753093;
	bh=xotPTbU4/YWEEUBGlipn+xr6WqgZ25BHkXCjoOgm+NU=;
	h=To:Subject:From:Date:From;
	b=N/Zqskf/i2HQG9ybVEnKv/r6d9xad4Cfv847/gwGNzSUUsIlFF+AhTxw5vt1eLVDq
	 9LgD0D+4l4SpT7rqFqUV6wDzcl3vgqhmxuCpf1yB/bf+Jgst9d7l/Si5SYP4Qm00On
	 92+0p6psrDEoYsukpRsPsA7St9mnpvMJaN8fEWYlkrLc9AJZ0Q585220pOFtZ4nupD
	 u6RAcXT0qLpORXyuHe+F4Fsi2uG/9afrPxIHAGY8ZIk6zzJDp9a2cYVnMhW7gIrIr6
	 kvk05Y2ghQhDaz3Dm80PKjFkfQ8yokmD5hsItO9UJ5Hwt0yKEYwDNlcx7+ph30SIGG
	 3LO8rCYzgawRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A41F513EB
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275309360.23797.11282007303752430965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e262633018d0db5efafd6f1d78d0e60db7f1adf6c801cef0e7a078ba192c12
Date: Thu, 05 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772753093
