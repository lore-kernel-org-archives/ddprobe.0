Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AED328B59
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761227994; cv=none; b=dCuh4bg3Ge0aw24UwhVU4j84tFGRcJn/6FDDEOBeItPqS5il1AmMk7oZFyDRF7sYMH3ks1fF0sJz/6K6UP0xYqA5kw97DrXE1isfOjCvCu+uI1uwUI0jzS2xCclLev5Wbef+TVrpTD9eTWsqeV57soQx/kDeIgkKeOpqA59pRdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761227994; c=relaxed/simple;
	bh=MGUMmb9G+oTRz8TQTe2XhaOvXFMB45PrK7TctC8yxrQ=;
	h=To:Subject:From:Message-Id:Date; b=dd9ZUiCVRiYXhxpMMRU+gttAp2x5RibMHl2Lmnrbb+JuHo/BBQ20vFC6SoC+z1/5thsbUfZgAPD4p4Rwq9xgKcaII/uozKoEU4k88Pc5OpzS9lrHbUTYxma3BP3kHUWn4l+n94PPNu+7g5Tl2lPaGgbXWTQE6C8FETlTuTEpYec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHDDXfr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHDDXfr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761227993;
	bh=MGUMmb9G+oTRz8TQTe2XhaOvXFMB45PrK7TctC8yxrQ=;
	h=To:Subject:From:Date:From;
	b=EHDDXfr7IZ09T4+V/btymdZ0kwUQrbWlyfhxRWPlzMXfAt7C3MzwnpQuwc0DzR0Zt
	 J5lbpZCxqnaWwIJ4w2urBNJ7j+eCLXdoDUEkuLmoVYqE2EpJWob4Q6FjZ+QvuAL5qh
	 C2gbc8Vkec2R4mZWdVncIJ+6g81SCvR2IAyEo1rBKjx94wjcDq7d3fBAHaE53BOOZt
	 YuCe4xUVKKGbWApuUcaZ2M3Eq4uoAaDKnikiMzI5aEAUZaqTeVqgptsraB0G1lnFfV
	 JuIqypJxik0PZ0r+xAELGtfMvJjkKmNG+1tZ9oJo+QBpyYhU+oY/tzPjVwvCzO9P07
	 REqmmDKqftM5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CFACCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122799358.15934.6039035121991223261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29c24b264c64b97ee05835586d4c3cfe9a123d81a80b2c34e2f2dec4467462d
Date: Thu, 23 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761227993
