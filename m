Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330D246D2CF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791297634; cv=none; b=De1tCl6ZYzRO9TxHGYE28HUqfrvVq0rmiv6Jr8ui+CMpt7HN6WI/Shc4ruPG333YsEN+yfepFtrrfzu4cmskDp3tA0Ze2iYTyIIvmGQ3A45HIvkFklyvXRUzo1orKzbOEl0Y4fF+YuVBLVH+uRkNox9ukC/7K8K17+NP4d1FYQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791297634; c=relaxed/simple;
	bh=BNGtMH2fI/jbZ2c97qMAHcm+uZKOeqN/upqzEAEiZP4=;
	h=To:Subject:From:Message-Id:Date; b=ftveivfJEZinI7r7Wt2DLyNUuXA5u76sKk7rZr/I0IyZ83VTTdJmY+rqG6WXRyzmrcfu6TOTUFeSvmcVAPBRs8ma0uUzm6JVjG6ooOqM0OhxVD44/Ypzk/b5w2RilYfZefXDZTff/mkWT+TOPFFvPShE0lY3BMS7ve1o8bVuXY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/jc2WBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/jc2WBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA46C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791297633;
	bh=BNGtMH2fI/jbZ2c97qMAHcm+uZKOeqN/upqzEAEiZP4=;
	h=To:Subject:From:Date:From;
	b=A/jc2WBulBa+micWrsKV4FaVvZbxrqVp1xduLoI0a/AyrD91/BpUiTWCbDdBIwccj
	 wRdjvJOkD7KeEG9GpsmnyPl6sDde2/vEPjGFjj7R3t8yk2j4Jba4kVup4tq9xTtJSI
	 b1+2bO34gt/3x2hF4Plsy8donQzFtJZopYDJzlTeJzsu1peezzjtcJq/Z/pwDOnWdq
	 DZ6ujPATtoqOGa02a9DxtDAdaNyGrTvBCxcw7oLRwrI34bSP47MTl+oY6JPLcUfZvt
	 3uJg0oUycqHxNGEAFXa+D446fTBBRFCosJY3uDGD+vTQqK73xAHMRDbsO3Tud404b0
	 KOIW1Bk6B5wdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9B6CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129763369.3052.7768773943263517581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f928f37e7c93e6f7e73b25cbda4fd1ac78700b09e59d4fa1a86b97a4d111e28
Date: Tue, 06 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791297633
