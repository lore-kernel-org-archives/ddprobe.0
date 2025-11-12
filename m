Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B1414A9B
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762906794; cv=none; b=TATtq6DK1QlYIRnokgTSlNDrg1KKV9D1AmepdBH9n3woGkIp8GxFxY9rGALOrCu/pjN29YqunRMwkuaxzPY+tkCoi4C2mCVLZFs8jYjW2hKZ4erYnFwH5UX/sheAm1K6BGxv1vMt6JfM9VfQWcX+TNJ7dljWz6UhVQo+vnenOoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762906794; c=relaxed/simple;
	bh=DwiXFmnftJluA0LAYTscIm8ri3JK4jX690xokl3fSZc=;
	h=To:Subject:From:Message-Id:Date; b=GDNpkXrUnV63rAmQgYikwJfDU8z2z1d06ZzsKdUJi5w3KC7VNTID2FsUjU5VM2hfQ31IUX42uGYSIJXTUT23TPZqtdzvebWxQaxLHxnnhuWbUgnuRKBy6/FCuFj4fWFnQupn0tmFUDhf8X4jAe/JMzFrdyfQjbVk80pzrSNXIqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P++k9w/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P++k9w/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A365FC113D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762906793;
	bh=DwiXFmnftJluA0LAYTscIm8ri3JK4jX690xokl3fSZc=;
	h=To:Subject:From:Date:From;
	b=P++k9w/smYcXP6UxaIhUt9Nt1TTbpDqlHS1goRbTynnjaVCtnPc26YURWGFg6tOca
	 4UACtzgdXzD7EtjLFXP6VvrLUuEXhGRmGkQ1FwkOikKvnzvhMkBdHIoT+kaXOZgxP8
	 8TyYf2F552r+n1pG8MHbQ4HRcHH24/ryYDY7Dcp995tSWY/sTL5V6DNT6UbStbSsCZ
	 a3mzcpQuAC9rXLlvsHcOzty5rLWF6QKlLU7wfMc6JQAwGnTjkJmey5/CTe78/DrTBV
	 mxLWGfs64+bbyFAiVt6zmsoyl5eCrFZsBARw3jDIflIoFfZg0oFPw6oaf8/H84n+bU
	 bdKU2nLrx31IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966F3CCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290679358.14154.8126873309911155772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af483833c3215eaf30a70324444de448ab0cdf18ea2f79f59a4a49c01b33b67
Date: Wed, 12 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762906793
