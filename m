Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF8036AB50
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769888634; cv=none; b=Xc9iIm/RAlikC9Ae7txZaI/zFFM3+uQIAKaDV3R9UG4qCPfn2w044SoLfyeNlJQGYnhJCyOfHM9uUUhAH7HkdxDfMHV8iJEmmsxSw0Megkz0e76enWzB7jqy1ak4Y8bbBGvIge0/EoIBknnCcaf7xzD3PTeUFTrOCBY3qTL4Zqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769888634; c=relaxed/simple;
	bh=eHY3YnhuUymkR9Mx9fOxZxSmtqzjZmt35Ahb8vdDAPQ=;
	h=To:Subject:From:Message-Id:Date; b=laqI82wapdwVSyIQ4nVY4GwcWmU1EmnOZ32xbCesm7DdWGgj/vwYC1In9rIdFmD+I7/qNeVX+t69wn7a0Cg28gkfO+Jm4U4jGHTNG94gz4ljad6IvnP14x6Q73zcNgIn6Xta2gQKPvWj8HWZvP1Mb3MUIjcoJQ1EwHXv4MPvBgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVAURHtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVAURHtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB142C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769888633;
	bh=eHY3YnhuUymkR9Mx9fOxZxSmtqzjZmt35Ahb8vdDAPQ=;
	h=To:Subject:From:Date:From;
	b=JVAURHtzoI/gJCyuJJCLE0SxXtC/Aipy6PQw1oSE0a6tGD7qHNhadWd/x3M86PTHa
	 pqNse0Jr9AKerkvq9+ktJ4+MRiGG+SCgMq0jP2MvzwwBfrHOvHvJ9YgkTF2wZNMxvk
	 zQ7PgH2arbddxdSPsyCHPe8tujAp91CvOAByNWsgaYHr7o2vMWxbO+tfaUZEWwfBag
	 d4ifXzHh9nYpCIcXDAIecMCYU6isCncm2w4q8tlwBtai92RYSe5Q+MZdJoiN4enIQi
	 OKo2eca3HOzmcs8gI4knCJo4bERaw3szdA31/HZRIA/m27SU6dO2RK4vXqopvv73Df
	 n8eH5dA7lUPNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92261D7976A
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988863357.23194.14426647557637730053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ad4e175941b2001bfbb48269e269ae420c153794af2f5cae208ef4d332f1d7
Date: Sat, 31 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769888633
