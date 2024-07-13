Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5625C29401
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720909823; cv=none; b=hsC5IlhojFivuBgJ629brEzvgEp9pDEKcoBf9K6iDn/jAEk8vIJ1WvT9nA8aC/srqAq+yvUtaWKavS42IFMtTvNesM8wpB26FyYN4AxIgrGHEFZnvkmi9xxT7mqgLyYuRTBe+ELBGUnjCxMm088uTWdCuD7r6TaaYJMFuaHTZiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720909823; c=relaxed/simple;
	bh=zDWQDXExk1yurn5kyHguxtpesBinSM4mVfqDstyZnFc=;
	h=To:Subject:From:Message-Id:Date; b=Z6oO6R0yRxj4bQ3BVlpIMz6nKBI8kzINMCpR5Uq1CVNzDUUrELk+6l0VYASMHhTKg83O+coHqhLVKN67TYdv4QeehxQZoc4kBwq4i66excYSYw51elrGXvXAKANMiMjxp2nc0Kizm0jWI3RLe9jdHftQH0z8eQKXJ1uXjV5lesM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQB0xoM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQB0xoM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D793EC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720909822;
	bh=zDWQDXExk1yurn5kyHguxtpesBinSM4mVfqDstyZnFc=;
	h=To:Subject:From:Date:From;
	b=KQB0xoM3mLMmH1ZfNI7k0b0cH/PwLtcKZmrH98wjAzi7+YuVjdx+vlsPi9pASW4AW
	 GRvsEQcGTEv1QMdxocdf4qJVe2mVmSDoCLT+HfpoDlm4IZ2mvRqIy9FTl9ll3XvXbG
	 2Q+gQk5MBuTes87Tg1rXxnRRrAIS7CETYyaF/v7buwzYSObAmvY6YWmXtKTAQwK1qo
	 VYx6Hd+UQaKsHXkj5oQOOHmrcqpCCQAZT7rWxyAhDF0kX36gh0/KVh0A8DKdYB5fTj
	 +dTyhRdXIXe9S4fhAjE0Hmbw5M3iIuX2J8ZDh/zM+dj47R738NkAr58LC8Y3qcX1uH
	 DZ54nckAAXLTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C080DC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090982276.1032.16421950645535246115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fa0016e73c6c5583c18c4b40ea71c90c60ea0278d742fd9310e6a8772e687f
Date: Sat, 13 Jul 2024 22:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720909822
