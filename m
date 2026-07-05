Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346F713D539
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783228114; cv=none; b=lc6aB2pG7odRO+kIL4ltIhBmDDE9Yd8SAz6YO8xOOHhxQjX71Cmgt9zsow5gWKyH9H4+y1PHyXfqVUM5RCfEW+C2H/u5U84GM8jHKFZi7wHnBR/s3y2MCqCMfR2aSZzVDkrCZulipaAqeocP/cOF3xbO3+lqaXKivjRtTp6+faY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783228114; c=relaxed/simple;
	bh=vy6hAJBYTJHGWUKUHt9R95czx4Ww5sxkkXe08ZE2uFE=;
	h=To:Subject:From:Message-Id:Date; b=mXUEzAZLIFf9eBXOoPq3Cp9YPT/o5O6vHHn9RYn2JGqtyQdr7M1tbSB1r24OA3IyQgGerKHvAsKWqsbTg+90fN/JofrLbuK4XVetRfci/9+0nblYAHuNfao/ixxP2iCycAz+NEqXc8rl9p7LGnQQM0bcD8jsvaC0Zi0N5SGaBdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uls+XAEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uls+XAEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99A4C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783228113;
	bh=vy6hAJBYTJHGWUKUHt9R95czx4Ww5sxkkXe08ZE2uFE=;
	h=To:Subject:From:Date:From;
	b=Uls+XAEV/3jFg8avZkSLXkB/pe3kSlZBh0br5AtWO44W91+n7FhxX63Sc7KjL0mGt
	 3tQz1VkI1lDPZJ0KSLxBViAytZCSyGeUmJOB17s6YQAdz/+FOEc3SS8wcjAEw4PPY4
	 vXtgueZugpvSNErsCO2SEzlJnRBbhNqJs6sIgBNz7n/BgwWi9nA+R4dNbDzG0Gao40
	 EmxPaoFD2Nr6Ba9Ar+Fgq5L9PV54jT3yXR28mXww3JEeXAhReSE05/k46IBZyQwxiI
	 V4JOn6ay+gf4DXIrriXURLAosWjUE6skTmBlWwnI/ZSydH3o28Dum4OjmIDrDAkjpK
	 gIxvJ7JVY8h0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CD5C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322811368.6786.14559171229596765041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae8f1c0834e2845da5bb7eee03bbb7a3d4a3c5787aa5c31385baca6695d761a
Date: Sun, 05 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783228113
