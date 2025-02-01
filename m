Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B1857C93
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738440954; cv=none; b=ZJO4VwnGPC6xDXKFjw9cwOnwmJ3rEuWhG/lW9v2HM6GGC5bWH3g5LgcdYI6y8s1gIbYMfTz32RqUlASRdZ/OM04ILBsmxKWl7slbzh2PFkdJfFcehvNJIDeAfriWsEaJUK7lpJswiY2AcSfTz7Zecma7u6SVXHODUrIGDb7blP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738440954; c=relaxed/simple;
	bh=B0BW+sdhD6EkYQx1ogLH9rDszx5FgI/ihtSQG9Xs4Ag=;
	h=To:Subject:From:Message-Id:Date; b=eDnzJuUbdFGhzPw3BcMTkJX5tkv6RfGQogsBjTmlDrZlgpLTcosDDtbz+B/Di7xLaPwZGEI3k/1sp6lMq2rf1VwKc7CpI0l5iqht3pEtUOU4mSvOYcJ4nwdizlSrcfnaZUC0k3lUYTcrK1upKD1GvDjZw1XMc5fJYVSWQYGDfHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUSYQcWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUSYQcWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26B3C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738440953;
	bh=B0BW+sdhD6EkYQx1ogLH9rDszx5FgI/ihtSQG9Xs4Ag=;
	h=To:Subject:From:Date:From;
	b=pUSYQcWlC+p9HtZxdcuBVBnmoLhLSPwj+lU0n9+bM2o7+fUUNxh1jRXyRpvSIfqZC
	 MTisx5nVfmcS+i8egM22YwKQ4LOEEtjyo2Wp3N3NdxQM7qA4oyGiwI8nWLsXC0RRWN
	 VMooEJ9nIXyXLUDuCbdC1RUhtHfRPT9Ey0LAYBOQ8GysAZWOntTeP6qz0zOw4JYcms
	 Ae+EduHffDSar7kbPbDGAUP9f/spnqSeq8W21IICZ1q6WiqypnbxD+3LoIzrL1Vk7M
	 uD+rRCf89KZwea5Ju2cPd1A7yO3CyDQhepdH7AIzezoIeerEthmHAQ29LZ7pwNg1Nt
	 gAPWDWwHpzsGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B822DC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844095369.27931.4943176316405231365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8087a4fb1e322db42943c6e9f62936a4cda26e03a3065d838c457b9795fb459f
Date: Sat, 01 Feb 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738440953
