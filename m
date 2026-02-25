Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15699278779
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772059494; cv=none; b=o9sZWoNRf/G0i96CMyktPGHA8Bq7qeteIiS8CzUp0RdYtYv8Xo8iejCFXe3ls0h2YFup3ksEtOW8enCs8zpBj1oRXmzZReKGHc695GoLlcYXYWtLnVBlEdbFHSNI9xbaMSa7jpwGulrpSokItnvkjnY0Hq22GKONh02tES3SRIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772059494; c=relaxed/simple;
	bh=eTTX5QUfzRTMkJyVwIHZclhz1eKBLB9CtJNj4hEo7PQ=;
	h=To:Subject:From:Message-Id:Date; b=eC4tRvlqQGhm+DVPew0/BENp7iupqlx+Zq39F1nN8nrbYa3t5+uTVIlf/G6j1c1cNTwHCNEaKZB97cyWNpSNWgEkImfkea3bb3n5mqJqnE7LXlzn7ddoGtuxpNOgqGdj607VMee+6lQWlm6Y6asgTLRMyjysznKPVfmfS3VJO4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6e9rJSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6e9rJSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A1FC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772059493;
	bh=eTTX5QUfzRTMkJyVwIHZclhz1eKBLB9CtJNj4hEo7PQ=;
	h=To:Subject:From:Date:From;
	b=C6e9rJSe7kDn16T/ayF4ZXnXQP7r8xuUPVNZfGYYQul4zjEeSLGHZhDuS0cUiwMbs
	 oNTyH8dJp1aeh4fyqph2X2H7EDVLqBYevw+qrxU64W7Sfah6ZihEhTaixXYbPSH2WC
	 Jj7TylczZ91QfdMKHCMbw5T9s1nsoke3pkoFbQeDykAZYa3zeVd0TYBYvr+tyveidp
	 nrjVL3/Un9nW87gwXji83K79GDUaVFmAna/DJ0gDMBMvfX/U9bEphYXzjBsO70jedk
	 ykTW6350MUHyLAJHMjlCE3Vd4gCdeeS02aLs1VQwh4qDwh4BMIvRc1/2e1G9wwQpVZ
	 6eezmhV8zMnew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92469FD45FA
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205949358.17740.4395542071666418543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94f8bc155e7fc84782f70d25cac28f247ed425ac245b6c3a423ec7c902b20a1
Date: Wed, 25 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772059493
