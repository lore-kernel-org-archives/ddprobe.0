Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282772744F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765554774; cv=none; b=Oj9QFWhGZtUATCAspu9dEY4Abj9mBgKf7dpeRDBGLxyt1IAJs/JeFx5BgT8NF8+G32gn4t/IJrkzV3XJj6/Vmf9XWO0k5CgtSgm3xmY/qqAXXoQGHW0RLlk5UWC+ZC1ZQ3Uc7GSeZa/MS0mUexZn0KmfXn3AeJ2BeMhxJbA4z6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765554774; c=relaxed/simple;
	bh=DeZh4YdlSs7Muux807MWSid2OCs9HxYbRyGoI4C3Wdc=;
	h=To:Subject:From:Message-Id:Date; b=EpHMJIdRH/auwQ42oVxPHN1hGtWfrhgqxP5gR9dI7lj+K058ImDa3VsqeBIYL2zMnwdO8gqR51KkeLqWcy7uh+6GTw1YIuF1OrpuXMClcNevGgv91j1c4sKUQgNCxxVTXXg6dPI3djpr+9BXGTuyZCMA1Sqzhg1/b9OlG3eIonA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFk6AAK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFk6AAK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A35C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765554773;
	bh=DeZh4YdlSs7Muux807MWSid2OCs9HxYbRyGoI4C3Wdc=;
	h=To:Subject:From:Date:From;
	b=lFk6AAK9FDCnHoFBB7CmXFkBaakXL/nn7b81YLIeubOHGF8EAFIENPJXlxUmRxf0D
	 c9U13GHwuqDMyUQh2lksEnO64wvvC2zjWOoz5xTMUtFmWsuk1mGop4Zwd3Fm4JMY6h
	 fv0KpM5mFjwTZLpKpP3NnvCuQp59dTPjXpl9qRlPXWVpZPWPVkqvjbv8Z56ejfFz/1
	 ozPQX1tC3j/2qlUeqPMWHE/BKipaeCyb70xvK3R0mPiu+q22dPaRs/mBU8Pv4HEPB0
	 +vgl7SmTryc+zYS8g6F+yu6m1WrIjk07F/UHv0pHQ8D15ek5GjD72lgLuoqboirblI
	 Ie+pvpe2lLlUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D77D59D71
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555477359.16217.16216487156650293745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf565b42b521be413922086abe365dcea48d38d6d77fcf70201b3e5903071f8
Date: Fri, 12 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765554773
