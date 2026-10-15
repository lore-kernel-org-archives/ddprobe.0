Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425EC5187E0
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792069834; cv=none; b=puOxVVfUXObX/fVpDMp4nkpoLUcnlrgbtf4n9AkOEdSGH0hKAO+JFUOqFQZBOo3kknclANqnT1duqlMNLGqJuHU+QhA2V3BNJbY2wSjdrPth6AGXm+iCrDplYBUTDDaJlYXiv/feMfIsTVy60qDS3zCMM4soMHtEmVhlBpWO8wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792069834; c=relaxed/simple;
	bh=nA4wZFFkGZB0j8BzcCrVIRhuBSs5wxamX1nynsUuCPA=;
	h=To:Subject:From:Message-Id:Date; b=qEjfPcsQp5xD/MtnIvoSmm9Dp/GVN+j5EUC2Jvpy2l+83UjLR3ohoHU4SJBrvCRBqMzBF346387N5LCZJMn/kMrjMCf2E3DJ96fPvIJb7itc/PDQrQ3WRIIU1EfqOJn7Mc/jEsUf0eKcRKlvF2opnD8kcaFFwR33tvWhNg6oeR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2+1TLC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2+1TLC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B9CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792069833;
	bh=nA4wZFFkGZB0j8BzcCrVIRhuBSs5wxamX1nynsUuCPA=;
	h=To:Subject:From:Date:From;
	b=s2+1TLC+NqktDkqu9lNeiedd6/baX4783def73cTvutcKluugvrpQGp5Up1deJOa9
	 IYMobyZxb5jPhaFGCSszXIVyJxlaKmdlK22du7cRu1XwJBMLlQw4qiX3JpOHnnCPOT
	 gaTsf6XbXrteeuQIRNCs9H/cDauuVCpjO2K8J7fJzwWtjjT3uaKQeq5uWdyq5bfE/R
	 e6pZCaeNmHhvcs/moVQ3PSRs1a+PqTxNOcDXUCh8qylox03eeYYX7hgIAIqyX/5yzO
	 XiHFdYtnt8nOF9utcelv7VJ34948b+oS/YxuPXFZEOMJQ9MNsnvFL/qmuD/4evXO/4
	 D7fLD8SxBJYYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA8CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206983368.27744.15242541249743971644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be54983c7ae1c502d640b07908d6af2fc8c959ee47f2a569fe367c9da52e957
Date: Thu, 15 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792069833
