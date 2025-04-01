Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3678A1F1517
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743521994; cv=none; b=pSUIppHztVDaO3PiljsTb9laCxnRvwKUyvvux7Urx9axPVQZCbN6LWThm570SoMHf92V8o1bOALI8uqKzoGtkNvPB1Dum4CQSKeS8wwGuvycgxn2IeAxZkAcq4rbFKHOHwMF869VxyiG9wSV+SW40W2bOnmJHFKctS3mBaqVLho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743521994; c=relaxed/simple;
	bh=4bfhq95mSDEc59AFkUdRZPyV4XS+TohCk0cPgmnT7yk=;
	h=To:Subject:From:Message-Id:Date; b=J0XUJFCiDDB2PPnnjejzP24oKKBm1akh2w/CfJNPhgkY8U1ZOpWVofc49+e8dak+UfqhJc3y3rRe4zEuXzgrTPc5teNkfB18VN8NS9LdsEpck6C7jeLxrLSRT+yYQQijghL0Qyc9vBDVhOrWM4wygCFw7uw1W5W+N5AQXMj39ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCPJrJZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCPJrJZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2355C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743521993;
	bh=4bfhq95mSDEc59AFkUdRZPyV4XS+TohCk0cPgmnT7yk=;
	h=To:Subject:From:Date:From;
	b=uCPJrJZxeFXlquORbvCnWkrfrnaHjgmo8GfUzOAG/1VJrrLDDB6+THZ0/i734A0MA
	 isW8SGagu5BEs+xTk8R5B/A8FNVdxcxj2NSNe/SAB1Ul85ll5yOyLCKLzpD1QZFLEM
	 OJwh6QyaCC7MMDInljhDEGCYeFLCzIN0M2Mps9TZ0erGV6ixYvqTjeuZHMya3O6PJb
	 hyGCo9afrCISW8gEd4NtLVefGVdKTuIpXefAcvebX6oKWLeXLcUTjiR+K2G9mJoAzE
	 NV29ULzVvm46uRSnvRJq5XkVdcX7VHGdU0N6NQroDPthOvUqM5V8hghE7hCZtO+FLe
	 4nbAoY0M2YFgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F118C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352199357.6779.6091900907796310750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c77e6ca8a652d1c2ab5534b7401330e0d619b8257e16454b76bfe1978762cf6
Date: Tue, 01 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743521993
