Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C1D1F94F
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787354434; cv=none; b=lpCxPZFyPDd7TbLg2r70zZfhg6oDMfgcnCwmy1R/mr22spLJvrOmW9LDxsy7dsO54iambKi85Cr1VrZR1DIqfOBaup2oXjhH6DaljqxSNnHZfrh4l8WYCM8k5ORIQKTZnydeyVNtYmAMR+Bna71IRODX7aKte6/tgyqKdwjcqzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787354434; c=relaxed/simple;
	bh=pe2m76d0TcYNojUe4cVT+qv0IBvduOrpqIFM1LhKHeU=;
	h=To:Subject:From:Message-Id:Date; b=evjh4E/k0pGadHgaeqgOBccUso12ITP5V9VbKZ1gNUOoYsZuAqvkHBZ2Am3/hKklDv/CMWkVSOe96BP2SQDJhPXA658Uwm2S+8s0GK9vw6hIsay5c3y4902n4FmyVeE0Nf9ZsAt3qPEsy9zWquS38ero8V+LKWPpuneBPKYkumY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4/TUDJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4/TUDJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D373DC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787354433;
	bh=pe2m76d0TcYNojUe4cVT+qv0IBvduOrpqIFM1LhKHeU=;
	h=To:Subject:From:Date:From;
	b=d4/TUDJAXkRqN7pevc71kkl/FXMvKDkBkjf5iqxorB+9vpuX4HUbNgoYM5uvFQV0q
	 AVKrYCAbMS7FrGmK63qPmv5VZjAQ+D9cIZ6VsZokbTa8ETZplyHCleq1KUgiaGUN2s
	 Fs/iXwpZKkoQiVr72e5aRnFKw8hLDOmUkoP6kPFSyhcChXUi04vwMsLVXbSmnkEuxb
	 QOAt+CJXMBf7V+k5Jn9yKlbvH5ZoXY1IpcDGk1UHqZMyDIFAQH9JU0TkwhFqmFwEs7
	 hJUpLzB1nOIv0Aw3f50tGtv2Gb7BtliJDfcvNCaMfpdNMFgv2Qq6EH7lT9WgGM35Ur
	 1sZM7IfUJqaoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA2AC5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735443369.17210.4920627335633081543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b350a610e82823865b6b142928ddacc7ef52f4b689aee1607b00013de9d5817
Date: Fri, 21 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787354433
