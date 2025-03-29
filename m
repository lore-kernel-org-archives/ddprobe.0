Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381ACEEB2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743232194; cv=none; b=RF7/Eex9EhU1k0FdIIDUdZQxgWCINaRJGL7Xjd0Ngh1WGYhSly3Ks4vNh+eWimTqXkBPsMFj9nymClL0Z/JjmwEIdMMgnb/ON6QRdrchgdcTgwsh/GjCNtARkeIcMCc2DzyI7z6D35x7ft5VKjEFciYpbjro6CPx+qz3+ysZb70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743232194; c=relaxed/simple;
	bh=TlE9UQXP2lkV2D8+t/6S+U8WHBiufGHhkmoJgrDS17M=;
	h=To:Subject:From:Message-Id:Date; b=O5Z2B+0eqG/gvHHyCs2bbHW6KkS7MrpklE3rHWAikwitsasF8M004sdepkC3Yl0AhceKDBdK+qlx1M7Gi4IuTVv8r/KwmpxVZg/ucI6qsD2euc2cIGZbxAR4+BHAKa082tbDxukYhh3PEchxjfSmdFZk2rnWdaNnzdbvRmXg1vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCbrqfJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCbrqfJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1489C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743232193;
	bh=TlE9UQXP2lkV2D8+t/6S+U8WHBiufGHhkmoJgrDS17M=;
	h=To:Subject:From:Date:From;
	b=PCbrqfJ0zjqU3yz37VAgKTGK/ajokg6/UOFJiWVbFshfrz1V3LmSqEDp/K0kNJlkx
	 pnS9HdB2fFtRV07rbqu3pYhhKaOskDIUHI5gf6v8tAHUxOwk0pBcbyO3FdbRpFe3UQ
	 qzFkpmh78cGDVe+aZwwQdXcQjH3IX7PUdmjL4r8m7wF0zkhIqKql9Vk2uvJqnhYgJn
	 4hRXpEVZE86zEWYVia24VLP0SMgJDQr3LvK5nbm2cadTr+IlfVHlK8eSzaatHPesNZ
	 0XLKZZ4Kk5yjbEoqTm7XmWqNJo53GMiPCwon4gQB/za0Ak3GGspIY4ur9vsBak0n+i
	 gOuWerqNNWcxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993EDC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323219360.24345.18236192472690193469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa29f24c4daa8b68d58e2783f87fde9a3b266942b559aaf52e807d8e0421d510
Date: Sat, 29 Mar 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743232193
