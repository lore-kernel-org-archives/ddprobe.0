Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFB51A3AB4
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725303354; cv=none; b=WGFS2YE3rY+8uD7l1w26ryMcPlRDa8dN2/Pg+vqtm+tZ+EDI34lb/yl0EooeuHR8FCLWVayu3xO+6e2J//p+WunZWq4nwg+Q+TbMqbZ6hvbToS7raofPkg5Mc6xY658M5KuJIF6HxvqCtMMEae6bnztBlDBjkzBvjDfvPpaXHHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725303354; c=relaxed/simple;
	bh=lZph0iV39Gd7PLtRwBo1IyYKDSdc0TyYfE8CCENdJg0=;
	h=To:Subject:From:Message-Id:Date; b=L70nG51gEx1pQPGrpeH8VN+tHxrn+nldt4DLsfnGjwFJzGQqhlOOwO7LkBffNKRScrSef0XRPO5hrMpstvU1MDnZ9loVfxhhjY1HfD75p2FDiePvDuVWF4pDNtlF9anS2+xxkugWFXr9/Zhkjcf+z/Ig2Vi+ogZ+qgNjMScFKC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCalNI3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCalNI3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8E7C4CEC7
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725303353;
	bh=lZph0iV39Gd7PLtRwBo1IyYKDSdc0TyYfE8CCENdJg0=;
	h=To:Subject:From:Date:From;
	b=rCalNI3p7JV6UJtBeLYIXJwNEt3Dx3qwdrIlDqaXbidqee1emndU3U3E2dRya0Osg
	 W+J2tLmwVsxHOk9zq1IrAivYe7ENY6bA0numblZf8f5vS8vddWVId5VF4GGQrzm8Sw
	 Z06OrR/SqKi4SwHf2HNKVylqAbX8RsoHs5fiQrPEzE4nEQj17scAv6a0mHDWVY05UT
	 b6zcFALbxUxOlN+UWY4jdfrq+K+5kMfOYOTQ3m16EdvU4f52Zr1VWco0RULKvHc/yh
	 h+zCNgcoFF6E0wgcpOh38FhqLIdutR1K02idJ5dRoCdH5KZWAq4eDTVrc8F4lfelZh
	 0Mv57bWBH1dIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98954CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172530335361.580.8716751620780458956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9731b30b233b5ab478e82d1f921c6a48084fb836275352a60349d26bd63a20b4
Date: Mon, 02 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725303353
