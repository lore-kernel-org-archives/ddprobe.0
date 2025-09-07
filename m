Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60ED2139CE
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757232593; cv=none; b=EbLFhDKatr7iX+xt+6C4EU6FcpTmUCokFQQj8uEo+AEUG7xCemiYYm2w3hP7n+h6iRnI4VYzITTe+3H2dwqx2wlwh9y7eA3HK3uROAy4MevE//s4DUzp7F3oAs+9b7Z0UGJUhbez3uNdSKgepoLYd7tPcOrc0ncFmkT239xwZnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757232593; c=relaxed/simple;
	bh=mEpe11LG0BzocVlwLmWYhRwD5ZYXZHiVWhmwsxDD/AE=;
	h=To:Subject:From:Message-Id:Date; b=NcsiHyOnTwvVNq9IOqJUgaxH5pJAnFcnPROc7JyakAAzvt42GCrmOZbStydHKNT+eJqaA5VgXrrlItZW9LWxoBxSHzeb5uf/DABoNjEyi6Y9yiLWB0xK8fMucVfYJPPa0EH8KarZhhDf6D2JBdcyAkiXTnQDFalJMwcAJzxlfB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDnZdJh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDnZdJh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4F3C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757232593;
	bh=mEpe11LG0BzocVlwLmWYhRwD5ZYXZHiVWhmwsxDD/AE=;
	h=To:Subject:From:Date:From;
	b=TDnZdJh4e5/OG4gF0lT6ZLFAH4mhq6z0t8ETeE/rnfOCXQMtiA+mjTBeL8qoxv0UD
	 TTuaVOmb0FsMBcq0api+NcVvVFOKg+UnMS6Zk24J+31tNhIBvyxUgbBGupG6QLILf4
	 xt9xrqVzVz8UdrRbMGSJtLyP4cQs6/m5TYVE5Mu1hAFhPr/IHrrFj4pwvDfA9sX4Ma
	 TzDrOEyCWzI0B4IWT0eYdzDOB7IzzdZ7LKRlSeDd/NrazUFrpKyLU3JGXFYJMBcfqZ
	 2HUvuMWW0c/i3ZVNriC1oT1IxO4dKbgdplDzkvlUXOU1QP5wCYAP3iYXq6RzGwy5qD
	 D6CfxD7lGOaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9FCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723259357.2869.9232905214805539327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6140bb1ddf79f2baf5661d1f34fd12d3d9465f7362a440fc6dea4d1c9ce59394
Date: Sun, 07 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757232593
