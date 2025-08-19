Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF052C11F3
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755607194; cv=none; b=AdZNXU8HlPEESK3hvcngzdBXFjegfoQBMgftOa+CvEqsxJxuf7kqs3n/ZkLl0VSJNlPStvNHaQvF02k9/UlnyW5yJE7lIIBW1lLszcFRkGuNMrJpVsQ+L/60gKodO3jKD5f4DzgiJ6AHezwFLfkFiMtUi9JIIOkwbNBG2g2NOic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755607194; c=relaxed/simple;
	bh=C4YSvYTQrQ+YR7AN69N5INpHCifJsLIHR5VZ1yvt2Bw=;
	h=To:Subject:From:Message-Id:Date; b=rfCtKJOmJdHYiao5er1KJ8zJ2dMnDx8SAWgxb7rAcQlX+wZ1PPKR2Iq8rcbf1fo0El3h+qkfNu/lG3T13sv9mkgFi55JMEZX1Jhj1veFhxJGxKLJnzGAyqBWv+plzo+FRZzGBcO0lCMnCCww2dgMzhMJZOBiceAnW3mSU0Ys7mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdXSIyO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdXSIyO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E428C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755607193;
	bh=C4YSvYTQrQ+YR7AN69N5INpHCifJsLIHR5VZ1yvt2Bw=;
	h=To:Subject:From:Date:From;
	b=VdXSIyO91Px6c904ao6kkd/TECNl1+noROjC7VyYUhCrBs8SZyMDaZJxKkpiWjcq1
	 sVFq91cImb8dPNPJ629ePBXyahURAeElJTaQpH3rS7nMokDBI3greW6HX9sUEGXhJK
	 +LBfw0T+Wh6LDk8gzTQoyLWM9iQ5OXMdagpFpOTh4laOtkywjF0NuLbUmQQAQG+Usm
	 othInzDE0nAlwT6oq0lldNG99LPei+pHq4LCpWJrJC6U1H9gDr9T3GmGTcnAtdsrXp
	 jI3jLzKFcfIdmBoPRJvw5oFhp7dfXcOV/qJ6LqvbnJ+6KRwUoyvtrjAUxt9iVKpDsY
	 3OjGoVQzEYJuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059CCA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560719358.2206.465365842443310946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a464847b95e254cbd958018c2d8bd73b2a7f96b0fe2928d50e9365a08140048
Date: Tue, 19 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755607193
