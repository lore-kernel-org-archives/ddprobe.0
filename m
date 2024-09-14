Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177E346B5
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726292754; cv=none; b=LmYUGU7RQPz6C52KJtR2tNqfxjZGsbFkMgEX1Rdvvsls9UQUtAS+EDuSLK2drtIBy/uJ3YYSvH9q+v65Ix898DvXBMQJ0728usIXW2Niat1wUWofwtF6/FgtgzPQYy1c9f0qxFbR21AePCn73KXNJjgKSL1v+HE5aaYZ8MID3WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726292754; c=relaxed/simple;
	bh=UO6UwRLEKSmY1O4cJGSXp6bZnDM/651dKbMiVYYP4bE=;
	h=To:Subject:From:Message-Id:Date; b=gTQfJK2epNaGvpdqurop+uo/Pk+M+ewNxgXFFagRRsKoAlVYSwSrMQdPYPbJnHgptCnK3Ym9XuEG5aQ2palbrGLl/0q+em/DE2ShuVJ17c9aker12AEWCq0tfa14GtMVOS+oxLZxS/Y0jQw9t3XuDpNks93LKgnnOLRh4st7GVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xm0kv0kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xm0kv0kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6632C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726292753;
	bh=UO6UwRLEKSmY1O4cJGSXp6bZnDM/651dKbMiVYYP4bE=;
	h=To:Subject:From:Date:From;
	b=Xm0kv0kp84coFJlCfOxpVVIQIV6X/ve/pYmhV/JBxkPwhD2/kBgYnAqBwtkHzutvy
	 2BjA42naOfcgEtcJ0dRC5FjRtenP5g+5oFyfmGAngFn8/UPul3lmNrxUGWWWE8A5/J
	 2WESZHk7WZrx7tSMvpAd1UerCLjo/CxWeeKtX/ecWkjr+5rxlE9tZGMQ18/f8Vf3pK
	 qhYVglgEr8NqgCiMptyXZsrZ6btWGxPJyovFbinw+K16wUohLtGZd7sGLPvjkrwVjp
	 0fdu7zbYerEJj/xrILiDmfIEmsUvPiXaU3x2bewP19YaIxrP0SWRBJcQZDd7hhT/SE
	 gi1knOe+df1ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B37FC6190
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172629275361.8428.7450332214216593855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589edb31fcdc867ac0c2933d3636b5a3afc567aa0e84edb08053b843f245ccbc
Date: Sat, 14 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726292753
