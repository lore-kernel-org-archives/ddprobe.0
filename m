Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2968D2E9EB0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752069594; cv=none; b=jcfykrGaEIcDH9SDmKpQDS/CCxVYerGSsCtfnrFM39lwitJepiciU2ENqvhk2rZQGCXwAaiMTb0agzNXRtd00Ei/vPEC/kFBSrM6o8cnV288IWx6kNSvzyHP4OP6Gyrl/lRK0jL1JCP2/D5Q5L3tKyaAJw64HVxMTvczWYK9hbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752069594; c=relaxed/simple;
	bh=mwDTYYO48H/uucyGaMhNED/gJkxb55QOfykJU7foPAk=;
	h=To:Subject:From:Message-Id:Date; b=PkkmIkE7TyZ34aIZJbnjRQWscN7009NsbWvgziESfpg7W9uGrOaZc5f7E7R6ue2cnlvK0IEJWypTypcLih+PWCgXPCNRL21hBYQXE3lbofHnpVOnKnP0LNeLJNIgKK4lu0zuWpbwFm+5S2qiwbmwTHW63RByEBM8PZURvR1MSq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAdEWTb3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAdEWTb3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA433C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752069593;
	bh=mwDTYYO48H/uucyGaMhNED/gJkxb55QOfykJU7foPAk=;
	h=To:Subject:From:Date:From;
	b=uAdEWTb359Gk5XBSkHnYZbnDm7FpHwIUjIMEsq/GUGFK9TQARUB9QcJ3ETNWCWuEQ
	 xXTjjUwzhSotzuN0lek9XeQv41gkUBwjLVj8slSDaxYZjQ14wWr63W/87Uj9l4Fkhs
	 YKBhepy5Ebj7ozcUMovuexWL3qyu5XBLYDqwYAt/gwrNHsmDrywmJh3AHDfKqKxtEN
	 dZVHzzIcg/QI3/SDlLjqh1hPZbnR8BN4aoqjKpIYyVuWgSUZGoxStGAFC+ViLzWXVI
	 oFrChM4zlKAKFbSRoVECQ8rSVfsU6jIwqGGl0w0j9olnrsh/Z1kE9CQ5wh3DLU12Y0
	 S3okq10nXh3Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8B5C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206959362.1678.13312757086574014124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af91b31c4870a71a19bac8eaf9e34321cbe6a6896aeee13e068ac92f28dbc03
Date: Wed, 09 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752069593
