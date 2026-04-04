Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748BC35836E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775292934; cv=none; b=hNwm4JMRhVZw+kQyVnqNqhBaCn3U6ciU55DgOEg/23l66RGusYNMsuVEToTPsx6j1UyrIkZU31ITQD5RdTa9dt1jR3j+LPzd1YhZjKiDKyRJW/oFd/30fNnx5mg8+OfGCv1Eo1Fyi/E0YIhcMQCk0GBcvu94WzLbSsq0vNA4kgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775292934; c=relaxed/simple;
	bh=aj6AnruKMcGWGLqYtofMiGnyB1nRvLqoj9kj6FAWDRs=;
	h=To:Subject:From:Message-Id:Date; b=W1c7084HgP18cv20VZTMSLe7RVpNHX6/Sk859et7zHwIOGowGxqerkRnVxv1+br5Sijv1AAG3eQ1tabC+WKAFR+MQsd74Tj7gBAta5WMsNCFxqI1NBy71jXj92Qtn1fYSJs+5FukNhiv0izbWmkegR0iFYH5DbYVsVeWjqzkdJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMED0owf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMED0owf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD2EC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775292933;
	bh=aj6AnruKMcGWGLqYtofMiGnyB1nRvLqoj9kj6FAWDRs=;
	h=To:Subject:From:Date:From;
	b=CMED0owf4YaTBWRqbSZS9sGlycU4gqsDHBF3jgHRR7xaBQWtHjEIJ5w1hn8sLEuRD
	 QyYz60Pn1cwDKwiHunDzhyG5aiI3UB9cs3ReW68rh6dYHRiIvFwdT09SwoJN/6lxsB
	 OwgivTpJhXdmIgMsg7Ha7ArmHOIRexmfrORBbk49y/GS2hL2VnfuURm0Rw9wUW0lE4
	 eoTyMUPR3Y5gYLQ6/WaDe3O0midHTHgbfgr+66C22a0wY9fpnBi5xbUo5wXTfjhtbG
	 xrkusL4khr17zB7eRuo1oiUNe67tOw+BnH3kKotkzKGbZ5AUmCa9rZok5PaOyA8tuV
	 Z8LXyz13x9uiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BD1E88D8D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529293371.13845.14101990980786503374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cccd10f5ddfb284d3fabc30da7e41e3c8b4cfe3150502c087cb3682cc13ba52
Date: Sat, 04 Apr 2026 08:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775292933
