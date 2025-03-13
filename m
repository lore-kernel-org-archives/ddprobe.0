Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A631FC0FD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741851534; cv=none; b=sWCW/syimK2s1wmzNV5Bw9VE4/rHTWDgxRGieKMxnm0KiQc0HaH5Yn61IhgzlQoeu3YpInnBYWuJDEL6cjFLA7BsMir8mes59L3g2sHsPBVsRlmUr13S9H+suY/8IyMBbjoeimQoBN6NuM1eHjzsyPUwKkNxjJo72stpwGHd6os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741851534; c=relaxed/simple;
	bh=FGTkX6irO69XrJzVxJtKdXQE3LtJ4enFV9pgfM4w5O4=;
	h=To:Subject:From:Message-Id:Date; b=kLCnD3JLBW+tt+C+p2m9l/CGtOgWQ7VuOCrRXMFauoa6ZW8hQgjYi4OBcLVBSI1yC1t7ZauTjdl0EPFWgolDU6bEfPElQVX6YLO7VebvpYGnHASocivWgnBIzM4qiIK6k3EKxZHp1BjScHTkRBoGo3KFgBjjuCVLe5z2Vge3Fec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzrrqAzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzrrqAzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12D5C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741851533;
	bh=FGTkX6irO69XrJzVxJtKdXQE3LtJ4enFV9pgfM4w5O4=;
	h=To:Subject:From:Date:From;
	b=tzrrqAzCikP4HbpSlg7SYpP90ANmVK2JlnojsD4TeS66Lk4nsA5s2TteIygGBHVtd
	 bbJVi/kRsFf6ZieXsiij8dVNzvzDKfvFeumZTmkrrByAQQ2LUafVhS5ITceYnNbPmP
	 lxgO6mkbFKNSR5Vr2eWEmaF48ESwBJ0PqeYAKCU7ibT/NZVyOFEJRJyzhasbMNn6OA
	 IwlCeN/H2qzZsaV530PjQWntudGIl6BAroBiV1egmluyXdZ7MTWtVaSCX0abpImdKT
	 rvuDjC9FC13x4cIht6vtfPDAhYjwhdZ+5snD4Y6QfRwxnpGgSded3/Y1NUIqb2a+s1
	 KHpTSnZocAaOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9708AC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174185153360.15870.13965672140043782748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12d866b148769266c5cfd540124bfa520da393df8047b5dc6ebebf5ad04ff23
Date: Thu, 13 Mar 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741851533
