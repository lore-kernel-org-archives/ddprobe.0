Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DD8E555
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763827314; cv=none; b=AERc57CtvAGdQugruoS2lsi3Q3JREzQ/NrjydFAxIH7Fyy1mZiIK2KDZEeU6m44nYjgsE6DS5OL+6fo15i2pQVgswHqeIR14XECNT4V7sVkyf11qEvFz+O+57D/I8lmUqeNjXwXnio1Od9chkKYGwmVFWjTrF+gYeXuP+ja3Up8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763827314; c=relaxed/simple;
	bh=K11yBMhSp93B7JUwv5KP9hjoFrFyVZTogz/tNr/0+0U=;
	h=To:Subject:From:Message-Id:Date; b=mUA8kRSlPkfyBYb0QC6gTL7lVCH7RHaIaVMRKtWTsmwcmVVxhC1dk9mxATgGYtCyosjoy/5u2Sx5wN0wRVBYUlOQdaLxhy3fU7+BV+ju2QUQbqdVttmRp43WJerRJx7lR++r/4pJ/jgOrTq3EUK5hh5FDkUb5bYJQtmeNWFrjIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/YKpsWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/YKpsWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E13C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763827313;
	bh=K11yBMhSp93B7JUwv5KP9hjoFrFyVZTogz/tNr/0+0U=;
	h=To:Subject:From:Date:From;
	b=n/YKpsWAnJoXwRXxYnVnnogpvDEhwk2/zRYpf7TiBs8m7kRt6ic74zaG1K8R15R0U
	 2/lIaV9sOtqk0tVc1Kpf4aYSmEM4ZR4tVlF+4mQHYVkUvNyibYbj0qfXCVLbwEYb4+
	 0XZi3uxxuvpi5o2/kWVSnvN2WSkE5RWtQhXe0QbBuG2EfiJLxROEYEot67KDLGxkpN
	 PqBC/9JnIgHaSchZh+FVjQLdjKXwImREWjA+HSopr8bt420aZIrfkApXKUv+F4gC9d
	 tnGBkYBB/jJNDAOyPHStsls7MLtRUvmBoRqphAEFeiYBTXgdCtoUrwib4Wp1pTrDos
	 eQgqtwAKDdm5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9292BCFC51F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382731358.9603.4029703732254745598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4516172dec940a661e4d4481ec65375abcbf47977be8fff2a6004e9d47e01dfb
Date: Sat, 22 Nov 2025 16:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763827313
