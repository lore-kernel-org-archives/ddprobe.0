Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2FC22D4E9
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760339394; cv=none; b=RyGtmJkaY7aoslRwYlKgqGc12yXA4H4pZc+c1I0l+cULdTLkBbbXCxE6fFlHVoVIZaQInKtmn2kF5UXbRevSEtjOU3SBPP8ECBaKY6d51CbPZ+caChKgZxEOhvty+iZjtEuO4A0TpPMDuVgPmpPTub0tNwTyY/mzNkoggo+VbKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760339394; c=relaxed/simple;
	bh=aJdSaGZxe90EG8nXX4pJUvrUCx3WNH2xt6u74YeWQA0=;
	h=To:Subject:From:Message-Id:Date; b=crzRiFQ7UGTvKlKsBKYjoQRyFic5VmgcqDXPX4AUKcsMhcIC5dpJmp71vt/7vK6QROJ/ZLCgdUwQw6Zc2Ca/vEkEo1sQGyXaOIaarOQAkholXniCuWiCNyB3zmKXmZ05/mUEUtbvPVhQGOz0i3eLPVOtn4qBdC11lTGsE27Ab4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK5oaVO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK5oaVO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5A1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760339393;
	bh=aJdSaGZxe90EG8nXX4pJUvrUCx3WNH2xt6u74YeWQA0=;
	h=To:Subject:From:Date:From;
	b=IK5oaVO+UIUcgyzHCtr+VbF+5HrOvTomLn+j2vRINQF/3h2r8r0VRUMhaK8Omy5ZB
	 vHefldgGYgpy8EwR1PA6VepW5e+kLpAq+oVIxC+1C5ErSjkmRlE2d5e20GlF+cnEFO
	 XbAdYb2NgOqV7pOt9w/mfe+0f+uoMiDJdn6iXS0jqG7IDki6RenFIa9Qyni7w/H1og
	 1odfXDWYwIR5rbD047YUa7KX3zbxwU+e7wI7qB7l0KpNUgFKRh+l/WZM3siD/io0z6
	 jkeVDeS96lZU+C0F1lNpjwLuc8VSIfNoprCyoR4cn0pm7Xvv5AstCFqi0CALb98zUv
	 n8YGqg9DEer0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F066CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033939357.26862.11342215708196762094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a651385e6e2d6780c512f93841333910869fee0b2d5c217e9519610d8df0a75
Date: Mon, 13 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760339393
