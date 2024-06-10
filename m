Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BB13BB48
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 23:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718063903; cv=none; b=eJHxqMD+VYsgEdBlEGRtKoLDby/8zyLozm3IEs+tKt5eCKifHC/gGCK2sFWOw4BvR+YnaDb61IBH1+nrExFFiGSqqzkQViXZNnv16OfKq/JyooOojIHJvxPCP4KfjqP3v++/9SdGVhbP+Lmd66omgGk4DiV9I82p0MpW+l0PA1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718063903; c=relaxed/simple;
	bh=zyjivsLTBugXi4xH+2zeaNPuJQch9TziJ/TJ53WL5SQ=;
	h=To:Subject:From:Message-Id:Date; b=W81sHUwwemDEdDz9vUAKaBtdf44cPGZffuaMa5OI8ng175SzuHU5mQGRigeg2rhiKdxvRIqDQzlKMtPVpqEW62wudaiQxzmd72bdlTrMjRn2KuagLX+odhoeAxS9R/QzsZj3s5ZkTRtw1+rw31fVTCl3mNdbzTJxBQ3OLinZbHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTeQsGxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTeQsGxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A26C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 23:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718063902;
	bh=zyjivsLTBugXi4xH+2zeaNPuJQch9TziJ/TJ53WL5SQ=;
	h=To:Subject:From:Date:From;
	b=JTeQsGxLbm/QgRld/Lj5RiSH1xB09Jmi8Ere0UsnnYEfUziggBeJQ4y8Nk8wwEw3+
	 +upc3ZxeZeoQTIXNZRIgLUqsXlqoJRA4m0NncbzUR4RWP80Et597cD/uQ3Sgf+IF9D
	 Ei3KX3Yr8M0JPeic39QAGgE4jOARqMhcuZZ4lZ9iNkPQHCkz7bsZO65L4GQmJj/Xwh
	 knOERrOjJZOlssmJBHEAgjyZQwUC5Ze33/SGuFPpapd14efAwvdH0HZu2dG0gD7X5q
	 /fWr/JmsMh1m1MteyrRqZsaPyOW2khEJ/ADZCSs1b4gH7B5bA3d337LXsvZDM3HqJ+
	 XPb/RtHulYe4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5B8C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 23:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806390276.25398.6552287483475594842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931ccb71d8ce8684bd9081c1f4421f5506eba4293420d03595ac33d369e7d523
Date: Mon, 10 Jun 2024 23:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718063902
