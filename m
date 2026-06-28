Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C9A40D579
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782647314; cv=none; b=PIeE6+aK5/pse63naHVeUeV18EG07ORrNMDqj18R3x+Nw4VfuRMGTgUQkJQN6y3R6rs0+8YRIe+rjgxHf2dADuLWz70EVCkVceXACWeJAeLwN+TZMz9H5MK/GRE8FwGjizASSQoW0ZU5hsoyX1sDFwojLSce9wZVc7IlM0g8OAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782647314; c=relaxed/simple;
	bh=5mFCJPwRT7MyCQgC/4yH9wYs65l1T7KMaJI5f7e7DkE=;
	h=To:Subject:From:Message-Id:Date; b=EAM+yGU+ECDZub3QLk6PcP2McckbZ+CFole8N3BP49IfVvowt0zdzjOrQgOAIF4HlflvusncdDWJrR4z24C3/yG4oFtpgWMuoQ5mnCUfXPCgcCqwEAjak3sCMU7LTN6ZyiCDzpWk9ptq+9+4HgULLE8gsUe5Rj5YT9Ou+W+jy3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJq63UZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJq63UZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA13AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782647313;
	bh=5mFCJPwRT7MyCQgC/4yH9wYs65l1T7KMaJI5f7e7DkE=;
	h=To:Subject:From:Date:From;
	b=DJq63UZl068nzyCv7NVQf7mTW8MyPbIZGusDS3LBg39ruA0pg58U65mLvHw6n44cE
	 Yt4zzIFHge/xUb7KitSqFPr+defQ1vjHHJfcqTojakNSQpanRapkTd8H7UZnntWAJx
	 2qiigASUxmd+mH5ZMxCcKh2AZtlmi42Kvz3JsegAkFZse5kA05Dcl/+y6qgmYwLhP2
	 /dPK9FUnHtIFS79XQO/q0PheKXNlsAH26ny1k0UObIrk+A0+J4s6xyzBnU9xeEXFDX
	 n49CslVrASH6xledHhqHAI3ZzgTa31v9KjIJEc3P50rVq+rGEuzesZbPbzZYJ6SmPC
	 yHaxIvBO6KC6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0695C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264731368.15880.6213526400598981449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227da3a26acdb891cb811ae5028dc5d375aaf657700d21ec2d2b8685e8068a5a
Date: Sun, 28 Jun 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782647313
