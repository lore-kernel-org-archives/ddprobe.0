Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03355200C0
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706361497; cv=none; b=SnbqQh3hwqsUTijGuzHLNbxdcZPonK/z8fabD6zH5t7FH5P13MxSFdM29Hy0bN6NOM5BNA3nbMSqQ+TssAbopLE4Mgv4CkcKorOawxw9OA4J3etEagni0mMSMcywkJRMVa8axofHmIy1b4bOpEeQKkiepODxq981JzaWvioAt18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706361497; c=relaxed/simple;
	bh=KunYcunOxSlrloxNLzxTHxggnBdePf0k3NBpZNRoUWI=;
	h=To:Subject:From:Message-Id:Date; b=GVfO8V+a/ZFw+geSkp79xwL2sHZa6u3SVaZuVk+Qnw/dXnT/FfsyReHDk9ylrtfW2IMYQri3hou+CUWkdpPzOnXOKvJJwSFVU6i52CD7grEnvuKo3527gQjC560LEQUamFhZ9zWaIdZ9vy8rNEh0JdfLlukD5yVReJgyUdKkZeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEiI64Bo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEiI64Bo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFB6C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706361496;
	bh=KunYcunOxSlrloxNLzxTHxggnBdePf0k3NBpZNRoUWI=;
	h=To:Subject:From:Date:From;
	b=TEiI64Bo7enfSjC65ogtLcVeYE0CqDVIOIVVt5gK5sCWA6lETjIfeJRigakAdsuRO
	 MOj+mfIucwJtOVS8Ho+xgq8CrEK9lpK0a5T04SHyS2SqxQEA02TPb+nsf/L1dxVktv
	 9ngWY9CWjyjNQEwDbyG3X76wN7i1QRjurz4gjnxOaFn+ntan+3CchB8jR41trlwftN
	 QnzAbmnUasGEJVU4O7sPIeonaehPqoaEjwWEda/5MvT1kGov9ezp5b8zHnLBM/d4JM
	 aH0lDBAiVLQOXv9hlDXbqFFmhc2ApPYSxAv8lbC84oF2z7mBzRVsCQeoLtDANdDBx1
	 6DRNg+xyDOU7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFA3C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170636149636.11066.10686879612726706238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5287ff3c86272d113d4b3de06d3410622d9540cad488054b31fdb57742a9830
Date: Sat, 27 Jan 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706361496
