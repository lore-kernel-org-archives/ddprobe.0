Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C55288AD
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782877714; cv=none; b=PPnyhfzGt31OY+gJvJN2aFuXCPdN3OydJbxVEyvb6iKHuK+FB4icLMMh5oTPBQl9R31Tm+8OOBm2papnJs/6O/IPhYHY0oOlz8kXGaJ1vfHuCW2znj7Qk2gICxgSykWnWFc4HJ4wgcR0UjEnoCVNx8t4ZNUFEt3vuS33BdXysW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782877714; c=relaxed/simple;
	bh=nfUeXP3MALuHf+CXFmC6K0owzbFw9ypRIFgmx01atKg=;
	h=To:Subject:From:Message-Id:Date; b=YWGxii8U4Ik0upQGPJphjV8HYag1iRYZwONEfeCq1W9xgGWY0J5p2z42PvD/A7nt8CzxKkkrSJD6xpXFFFCUuhBv3bB5aEP1vmBPO5Ek+ZqgqiWcbe8tBzSStFJQEEyn8FKThWq7RXpLggqYQCDxbpjPREiLWu1L6fYRaKnGWdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCfQUGdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCfQUGdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0768C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782877713;
	bh=nfUeXP3MALuHf+CXFmC6K0owzbFw9ypRIFgmx01atKg=;
	h=To:Subject:From:Date:From;
	b=uCfQUGdyxnDufqUeQrT7ZjcPUcnOp5uBKzoFKLebTdMAG5pUcbglPAeF41noH2isj
	 18jt2Dvdkytx0Ve6o1SjLNE5zVlw6X2sPygyYgw504/V/niQBg+FiKZ6rS5kn8tlUn
	 7d+jwj11pvoGjEAlCq55Rfz4BK05SAPt2M2pyN/JH/bzVJZsPQYu6e0r0yQowToT3j
	 XIxnzF+Y99bFHL9ZTx1VibZ3plMy953j1CuFngiEUt0WgyOsVo3zNvgo6xvzA1acl1
	 XFM5UdZb1+98Otus+hW4Y6IvC8DMFhXYyjtVeqBc3S2gT1HdBEjZ+fvOzFNwYlHUAB
	 /lg7GmV5k222g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A945AC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287771368.23614.1368150798772883141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af9d5ae97dc5b9ba283ff2d1fdaed593a3e359aaac7bc9f9180caa50c33df31
Date: Wed, 01 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782877713
