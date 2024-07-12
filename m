Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659DB624
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720757243; cv=none; b=Jaww9X/0bfFrBM19PGEr/cHQ1pNPthJB0+QPA4h5DKFcQ/z5p79JXby/2tRoI6G3M6ms3jw8qzaPL4IttngWv5ocFI9sk16Lu5uEZljMNTjwC7QmFYtUIdOuNoZic/OFp9z+foL/JH3VYxLVZtMbcfWg1fG8iywDiYZCSj/wSss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720757243; c=relaxed/simple;
	bh=AfIYtg65oRiAYaKxUU+x6UvZq1Bqyu54FnFr/IXtzsA=;
	h=To:Subject:From:Message-Id:Date; b=SlJQWRlHik6DpOJfzhJOSHOHcFXBVW/qNKYhy5rbdjCT2mZA0dZiP98lXRfASK6rz7Ds4ubHf4Irl5eBuQ/irBl0GlCW+Debg8DSVadL7BMh1jeV9muaYgkWp1QcwtzF3rrm4Yii7dvHG+mXiRR5LNTG56Ygt6AHj8bWanL2nUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhJus3YT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhJus3YT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E63C0C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720757242;
	bh=AfIYtg65oRiAYaKxUU+x6UvZq1Bqyu54FnFr/IXtzsA=;
	h=To:Subject:From:Date:From;
	b=HhJus3YTzA5D9/g8Ild/sCeYZeXuWUggEh3IowSKeq4tJwL6A7dVkdL0DM71etROQ
	 SKlN9pKhbhRto29wBmc8eok25PwY1sBap83VJgph14SSIq5hDqKgYzI0O/wM0fwywU
	 p1EYMi/U45yfcGY4jsdqAaW1F1mMmLTvbQ03zPOL5j11lTNXOqlnZp4Y0Rw96TFeZ3
	 Vg9CmT4EuSvB2O8pcwwC+lin5ZATp237580eVhTiS8TbLeEAqewTkH2Ci+IQb4zOIb
	 RePjriv9Z/39CsLG8f8R2yqsxx6HmdkjhnXR1Rv9SM9+q48nN6NP0yMB9CWE4nbMux
	 SZnZSRzrgFbkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD2CC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075724277.29921.10824773416235733480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741523146590fe6ca1cb1db2b15a03bc150ac11718cf7a89dd75102863e42194
Date: Fri, 12 Jul 2024 04:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720757242
