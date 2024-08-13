Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5541991D8
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723551954; cv=none; b=eUQ9Z2T0RJSv7B+pMTkjCRjFaHhb5qH7hUtwNDhf5Y1ay6DyftELpK5pFkX50SBgzom1XmiUnlsgY02LHJnKIB7ztECLuFv4qBDzza2PV6Fpc6LDgKosZeE/U01xH1W2YciZqO0vQMt4u/SnKz54ICCy0AC3N5cyArkDEgrH2E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723551954; c=relaxed/simple;
	bh=QUdUPCb75RGEukqSy9AWKVjtOvlM2UADeCxENKVYapw=;
	h=To:Subject:From:Message-Id:Date; b=KLttPlLhyfpvCBmBcmz6BZQNBsEfYX90G6bqxK66xhakvGyKtBZEt6CxzYTRPxcb/RsVvCjIVOmys0cr67xfsgPbud0GI/ZOUaza7zTIPWeifQqDVe8OzQxVg8pJ5DtUaPklP4sR3FdpU2XW7xR+UPtZTM0sWIJF8czRl1P+ink=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNdhQJM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNdhQJM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7998C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723551953;
	bh=QUdUPCb75RGEukqSy9AWKVjtOvlM2UADeCxENKVYapw=;
	h=To:Subject:From:Date:From;
	b=LNdhQJM+ZI4tcsQh70dJBPFa7KvsNWdA7r9Fh4ZDhjnadcY8yvrPv0Cxn130m3MfK
	 ZmEEhH/wx79/GtF47lFa71WeqTwWfQjJKREwna1QKlwQ5gtJIEMaSP3XPteVg+VyQo
	 6tzJjjnqp5pWYwPZ9d0ss6+lcQ2GlzggHQi9yAUVc/efpGgqGRw58fo6xAvOnhmcVa
	 +l0WsDk0L1oLjXWJloe5CVA+ITRvarbAKHYup4WTE9wJ6gEXg1C+dvoh30HAgavMLR
	 htxesy14AHPWI1vjhHnjDCiB2kEirKM/J51LR0I2vpUR5VHKSRY9kMwrIpYhRWTZ6f
	 IRL7hmuP8ir8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975CBC52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355195361.28168.14794144112668679840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f852ae90d6beca9d86eea3d401420cf86cf5278bad47bb31d34feea0873b29c8
Date: Tue, 13 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723551953
