Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096ED1C1F22
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756203595; cv=none; b=Mo30z0wezckCKI1dNnGcfJhTVy3dWOig59OsLHfzIOsBaznR/aFlsNJhFSjPEgdAnZhzINMPoC/M+oJ7TQrf4T03C/EMCw99RPzfkwufCjyWp5W6ypW6eccPw4l6uzjxYh00z8h9UBapD0bthBtpnzEo3KPUXPJ7BRdYaciTtEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756203595; c=relaxed/simple;
	bh=7K9cy4ldrnkQmNwmozKOeFiP/yAcKs1uvCW4nx4PfgE=;
	h=To:Subject:From:Message-Id:Date; b=degoOxCsfGjtJckbJcbH4Y9n4icV4vz6zP710NR07+SbqsQv3dzwCVssODqWUF6IyDPjV24qAz7if4k+2gh31NUVBZXAKLsShDHPnixiU+t+Vf3vxEL2Y/gRghjqvV5e+iOubkC+r0Ki7b6Wrht9W4PiHlutdP1NuWSi7AcrDSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBAvlBDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBAvlBDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC4DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756203593;
	bh=7K9cy4ldrnkQmNwmozKOeFiP/yAcKs1uvCW4nx4PfgE=;
	h=To:Subject:From:Date:From;
	b=mBAvlBDStQ1pv/ok5g3mvDUGkJMcwCOrI3GOHbU4bavebk810lKQHfsFkcGS+v3CK
	 AUUUaMImW3UZu+n6CYrcA17CQTDQtqcdI/x/zu/ekCFfees9uvE3b9w+aLeaED7BzH
	 vQlNKglVKAVukaNA5EgxA1bbxfr+YrQ+Qi16RZcCFK2s3FB16EbUBaiHguEzuqYNJl
	 PNmPOiE0oLokLSXblVpRy/OtA2WsiQEIhUIVooljZC6yPMgvWcbalVBhEgnDb8kG1o
	 dUx2yt/aQwaX7U9gRxw47nh5umcXdtX6Nad+wiKxVzuc71KujuTs75lc/5dcAW8Q6N
	 fdAVQ9UsMsDjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E0CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620359357.18550.2983762917035615543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da83310a2ed8c53ac2e9d09ea6184c3d516c075fc85cb71dd4daa0646315e7ff
Date: Tue, 26 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756203593
