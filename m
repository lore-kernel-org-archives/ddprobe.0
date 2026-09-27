Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435CD360EE4
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790526634; cv=none; b=rWezziCWcGmsQlaNnJb16acp8uu7MmtGnVdDlxS3NJZj5rkKngQtJyp0wFj7wXtTaDxjTyO07F5pTaiIWccAfyKATlAY/Gs7axWyIIDMqf21vfHsXdmgvDpWjzFv5aq6vdpIa1X67CKCZdOU5nxcCuVYf/VUkQkLGt2WtpKLr7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790526634; c=relaxed/simple;
	bh=yag+dQHG4pkJuO+rEoSvOUCwZQHa8LlgvCac10oRJog=;
	h=To:Subject:From:Message-Id:Date; b=HYmwpol0CF8iAUr0N4n2WfkWAPNAPWCn0sP1JZgxYwr/GUliNrA74DpqRq585QkdPkvrzQxxGs28KDo6QDv8WpE3V/4bCm1YwQLCreZaYr3hvPeRg+dR4O3o5nTZC7ogV7vmjpH3kL4/oJyt/V/QBvVlXKfYr5Cm35ZFwhLcan0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIK39pJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIK39pJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F5DC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790526633;
	bh=yag+dQHG4pkJuO+rEoSvOUCwZQHa8LlgvCac10oRJog=;
	h=To:Subject:From:Date:From;
	b=JIK39pJaBR7H4IVU7U3sBc/DrxYZUxPZfwDv1OPpOxnYV79vcaPLST8NUZ1afv86w
	 scCD/Qc/ymwOa1KSRzoiFDyxfBvb/piVYIeViaL1Rwm71dWG8hNMsHdbA7ra8JQA/l
	 5wIxeCpiVhQTqEPc6eGElJG8tXoc+hXeNz8nU//UD2U9Loc6+Ys2iC4bnu5qdkpKMe
	 fDcvYyruYjJh+IISnJEswD0g9gCqWgBiphmtxB7GyEgOrcKgGX54z6+gVundY7Wm9q
	 PZvFcJ1XA1tPwvfVEkl+v8cHABjToDxz/hXs4rvPlsBLu2IX8qJ4ZNJ0g7gbzKmGKq
	 yxbsW/fpn3qyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09D1C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052663371.8820.2172542845678830392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a0c07bdd0db8b1f332c0f22f3764580642594d36ef477740661e7883e1c2c9
Date: Sun, 27 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790526633
