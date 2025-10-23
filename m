Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C4530ACEC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761218394; cv=none; b=dKodOCldWul9UDZMmGkoZmtGL8kKzarWJ1GQYVLkVIfzyQZrFUsSvj0P7z00AB2VDh9gDkkjGAVcwqEbd4+bYRaj0Vknm1Xwi9XQGRAT+Q/Mnye5woR1HQmZQXaYVy/3MD0DZuYu/JeopMqbIG0vdYPmiPV4Q7rdvSsmuT/QRD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761218394; c=relaxed/simple;
	bh=bdakalQv/YOwYusi/Njg+6wJB585iLddtie5T4LEtlQ=;
	h=To:Subject:From:Message-Id:Date; b=TOtX1cvLNoE6/MSeWaxGIo/qyAOvo6hQPiKrw1Mgei2++yvM/gDmEKFTjqc1nBfVigYuXL8OQPe7H0kDVBBwJ6uBYaFOsQCCDFxOcweWdo7G3aMrc+FzTduJ7PXUxQBiio+YexcoqDM+m4tPhm6v374zHTllB0UtrguSqNTRlTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klszG0JQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klszG0JQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1843C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761218393;
	bh=bdakalQv/YOwYusi/Njg+6wJB585iLddtie5T4LEtlQ=;
	h=To:Subject:From:Date:From;
	b=klszG0JQxCRigPblxL5VtcG5e+cZFitIzk/ar+DICenIDhLMBa/+8yHefi7z7XVCz
	 7X9O30DdUXB4Wf4qjLaFFBAiQKKDTjo77Ya4doLq5hMvRw2801qNxCQ0dZgSQlzxJ9
	 NV3xz3CC1aA8WffE0nd5bnRsSf/G+i1VbwSyQiU9PDziIiB0jJD2bBvq8UIm9/CZVI
	 D9U4B8VdvTlM5kL4ZE0uvx5DcIUxwmNYpmPzINAAqr0uzIw9eudOx0fSraknU16zPb
	 jsMRafwj7q6LtPS0Sm0lo2ffaR9h1MWiN2rwxWu9olVKHp1XzkMnsEseQ89/GPHxbO
	 Z4yJvo7/a3Ucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58ECCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121839358.31285.15605207955882758852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63cc3eca8f34a962e1171ddcf7f6247cf63e47f9fd9031c5ddeee465468c9fe5
Date: Thu, 23 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761218393
