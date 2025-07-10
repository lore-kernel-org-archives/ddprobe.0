Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3112328A1D3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752131994; cv=none; b=LK0ilmmq7rxE+JU96k0dplw2HbQq7/gseaXhjROju1tOsrs8iAzatxcgXCQE7zFGR+SyfMapR9rbqH5qsXKtV+bJAc+LmkR63TdXiIlnmh8EeCIX1tVsxZs2ji6NDPtLj+ekjWLu97MSLs4u/QpPHjryPsuhpcdC4Zb9IfMXQE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752131994; c=relaxed/simple;
	bh=KLfrIGZLkEVx4C4GVSDNoGYNuBYyK02Nt1BdGVN5phs=;
	h=To:Subject:From:Message-Id:Date; b=FuRdW4Uym0m/MVWnNNHIH6aGH0zB1zFx2I6rZeFKu8+3REsaau+JrSATl7BvdcibxcHP+oqGop+Sr8juelI3emwcJs6xencNswInmA7aD0soG87lQDFhkVrmPXCjWaCvmSxH1VEC/+/vjslikTSQN80ZHGupR7iEsmSvCG05v4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0S4yJn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0S4yJn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A370DC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752131993;
	bh=KLfrIGZLkEVx4C4GVSDNoGYNuBYyK02Nt1BdGVN5phs=;
	h=To:Subject:From:Date:From;
	b=Z0S4yJn28JlRmFh5arrZL1BFwOXbQdt+Fkisewp7WPVmRSmil5SAN9U0oWAM8Iuxv
	 s7r1MuIGvIcOt3Dq/ovbUWlpZcsGSlw8qYZ9QYbOvlTi81Wi6Rtszy+sAXBiEjDflV
	 N4Nl5RPyeXSx8rUU/DSmnHyQIMj5LD5R3ZDgmzxO+2d69dCzdcftLCOPWcycfpw4j4
	 ZHbYZxIW97xE8RmnPk7S778f4zyz/xcAYNfaJDLVTm8G/jnRsS5q18Gk6vCcWs32w3
	 Ghl6qMF7ve2do9q8P2YxBc3+GGdsPljbc7GAhVtK0XciukAXEeu/IArR+Tl/tYQ9v+
	 DVNEVJGq4q3JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C29C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213199358.21435.11707701936341756438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f2fd97e253a0c7cd55909edbb491e900538e469b9a2ab5ea0dd9deb1078081
Date: Thu, 10 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752131993
