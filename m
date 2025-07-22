Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228602E041D
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753179594; cv=none; b=Bup9ypLvb4FKkv1f7kco5/TLX9dvA7/RwjPqgQRNG/43Q9VVn/+mMPbgbiCS/hModuXBXOJcIPC8snZLuaeP7t3uyTDF6GBtx2il2ApERsiVjFYBmWx76KY0FGXPq8xILftri49ueFyo7g++s9LkriW25ROGA5LueKEHjVh+zd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753179594; c=relaxed/simple;
	bh=Te8ntXvvqpN2zc5eC4VKbkeKCJZS36RjPvwVwfk6TPI=;
	h=To:Subject:From:Message-Id:Date; b=gOMzDd4YoEPPRtyCR3tDoapZqv0kxy+xMZQWxY/GYREW8uOR2y4nS/+RqGwA0N+Dao4oSdb/58dI9zlMM2Gg1yNmCm5PzZFvLXExpYvYX4mXOiX/HDujkyZh4ZDF2BQpuzcgbG7hhdX/zrHuPUFgr39QjhoZnoemVZoN1Xj3MkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXnIAfc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXnIAfc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB78C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753179593;
	bh=Te8ntXvvqpN2zc5eC4VKbkeKCJZS36RjPvwVwfk6TPI=;
	h=To:Subject:From:Date:From;
	b=SXnIAfc5uZ+3UyrWk2HhU/fAGmCbbZtXM4TOuzMZsmFD0u94j78VuO9xQxh4dQX/y
	 OqxFdgCZGv4XCjzo/EfWkjBqUByuSNTUyg6vxeBK2rthXQJWydXDDwA9ddVzM5r2H7
	 UuZMaGxxI5j6YterWe0320UwsgG6KuLTqCHj6wPzAoRXEIVgrBU62ElbpBBkhFlY5w
	 hPPaTf9No6qce9g23bwZ1yslZ4BK5Iq4TfYcS4lUPj2od9Rd2rncDBa1TuEjwL2dHF
	 FdI04HOBYr3VFymZXnJyxHZUJT5DanVg6sQeqE/1I85R3+WMrEutnGkcIjTJW9L1gp
	 oxAiCOB+J+6yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73FC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317959357.17725.10532741837510051193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87682934198d3f5c543f5aac1ad44d4e8b61be490736eb6bd7631189b1869caf
Date: Tue, 22 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753179593
