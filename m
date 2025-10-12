Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373B62AEE4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760302194; cv=none; b=E4X/jovDonwLd6U8pG/1hzZdVepi3V3O2fM1zYOU6umm+iZagbOBSiGzwX0jl6Znh4daglK+pse5vzIQbY0jkPdbTaZirm26Ch/eAnqYDsl3tFyr0JoGsqnI1r0URLAFoVqUSF5HynqDFQjGjjqxTPWZvT+TTaJXVbzqKCkJ9KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760302194; c=relaxed/simple;
	bh=swM+XPAp+YlZRSqhdkvINI0Wf8Rf3tBOpI2KSXhm5mo=;
	h=To:Subject:From:Message-Id:Date; b=NI/AWYtPq/6IRKc3Bx0i4Nhy1q5FS49gvXK/FlBbW+LOFbzxymI6KX1KpbVieFExh2SCXfk0PbJ+6Jtd8Ab+UT77JibuA97KHMotcX1LsvUHC0m9uUD1iQBMC3Z1d5uUh28+uFuAhJIrmeJfnMHeSlYV5qs1lV/AnlZnLf0Gc0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsXxViVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsXxViVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760302193;
	bh=swM+XPAp+YlZRSqhdkvINI0Wf8Rf3tBOpI2KSXhm5mo=;
	h=To:Subject:From:Date:From;
	b=XsXxViVGX2rYvHOW7gdagkI+LYYJhnE5SsboNB2g62TYJIMhqLqiX36ROVmy8rRIB
	 eTVw1XBCK77Pl/O4HXC00p6qyHAbsY6C4p2Rv7TlU2tHs+2txIwPGy0r+K1lk3Fik0
	 GVzk/SIiIZ33wtPF6qvXDurzTae9UQQG/q29JP9L6hka/uglhTqb4+LsoGBLCAuNer
	 i6fmncmRFXdappocXyToYxPaQoWQMNkjEiYp/DEC5HIwqV3YS8+6Y24O18kaJjr7jJ
	 XEF7O9eFYqh54eZs4ksBVjkc9ooSYWnAnQBR2Zw1FCtg92DWntFLgQ1B5/YJe4BXEb
	 hKSKcqL3Flfyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F6CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030219357.31283.14541823285549357964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f84d635de250b61302c5ceb0b9a42d1919c2cd5294e6d1244f87d12271acf2
Date: Sun, 12 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760302193
