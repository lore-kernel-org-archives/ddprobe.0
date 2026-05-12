Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C4D3A381F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778616634; cv=none; b=INAqEQS+pNafFfQZt5iZVMdfPjNHqCzD+FpLkOn5TWMk3j1ZOVqHbDipzq+WoDGOLsLqRj+CMG5GUBVBxi/rrkYTwAT0R+uyuBDEpXAridhIwWuQdR29AUuDJnY+/LyE9VNlyNY8l9x6Xw3Nm83J5kXXy4u/V/IEydnTQEVmP/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778616634; c=relaxed/simple;
	bh=yT0mExBlKKUStap3MXl4XnmbDxKrA5gmYeXdAHcGekU=;
	h=To:Subject:From:Message-Id:Date; b=N5SyA00D9VyM5YmV1HZSjhZEIdXeSRFyluwn9ePnPr0VlxM0+LVq1eYV/aKlHXNmEVEDrY1d8HJzVdQHDiL9Sm4JSAUCYG68j4xe0nf/BUqJf80aU8z16ahVB1YJM5nxSKx4C0z0gPA18M8sRYsBMxSYm+MHUHwRhGClOpx2Lks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+bjOINi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+bjOINi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6969C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778616633;
	bh=yT0mExBlKKUStap3MXl4XnmbDxKrA5gmYeXdAHcGekU=;
	h=To:Subject:From:Date:From;
	b=f+bjOINiOGUzKLVoXloojwBEoYsddIjqJz1UI8K2uFrHl/INL9FOhVwuqePojEQhL
	 //bxNYBa84n/7puERqXCr1oRr3C9SBhwqWq0yEeKFHn7iy6CWv5hYukANTdNtRsZgM
	 UgzebBk1YqX2RsPeLRjXiWVuT/ZfJIioxpRfPeQUy2cMlT2iXjLADHxMp3SaHvbWgW
	 PRwnzKcJPWe/Fhs6TwmkeMyheVyJaMoVmzQkKkLYyn9ySZpMgJMJeHcAFHH647j7FI
	 CJapfDoRTKrOfg4uXTNmgnSSmvexCc2+cZ+9SDNsPYeN++oECzlj+RfReBLvcS91d9
	 IBZfIfSTbjKsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E49CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861663369.16135.18070002496125337619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26eaf6e6be46f4306a323aaf2e50b0cb320d6dea2f93809ef4d05e8c98d7631b
Date: Tue, 12 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778616633
