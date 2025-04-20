Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1AC1E47B7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745176194; cv=none; b=MseR5My1lJJhXXd943n1jhDsXoJ6n/kBpABZcBQSG+a+jKOt+9GoCWMQoC78JwmmmEJE1KqpcsUUtiqlZPSz7nQI/51bl1DNA+DUwQ7dEe74SbAhuekpiZUv4KAZ1Am6zbKDsfx/TWlJMgh/RUd0XvzxSaoHqYhBhO4w/aGDkvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745176194; c=relaxed/simple;
	bh=puPfzMFYjOuf9BJqGD2ExY+3ASJPM5FgTKQE8+FgYo4=;
	h=To:Subject:From:Message-Id:Date; b=m4eUqn1V4mjEgBNDYDnPv3CXupBvQ7ZThOw56Pg6MpeHGiWpWVg3+JjLqleKX4TY+HsmbvFnwPK2LLe9UrjvFZhO6ME+m/GSOAQljOhpopGUQ554rR6q3qA0fxYcX6VdipJcU6LUhWVJJ3kV7NMKyK/XF4XFoZsLFTsSzJn06Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3RaIahb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3RaIahb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08D7C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745176193;
	bh=puPfzMFYjOuf9BJqGD2ExY+3ASJPM5FgTKQE8+FgYo4=;
	h=To:Subject:From:Date:From;
	b=H3RaIahb4xJI1f/D4Qqqds5dz+d0hPG/FeHdYi9wJ/SkH6tvNoggq1d6VZxgCNu9l
	 G/yDhkh4oCgMYeSIlcWFohC3mXiWbsWnQOsNMA3bhc+LlU3/ycABvnf3y9DkDaM4i6
	 voroTOGWOZVP0sfpQnqZrDAuq4MeEx31blRQdFz0t3WleNv9AAvAgiODc5AgnFXfuf
	 ZnDSTfw+CsRkiPDmbQmzsqaqICCzMzQweOCdu8VFvyn7vdNUxX2pzDBsRz4nwGmUXC
	 qP6D1LX2JmOfQaqTV4XDwVAQwV16Hjgjj9pdg3yUFoRbPtbtOOVsmV7vGai578jIEz
	 2MZq3XEOchteg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E606C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517619361.5383.1536369674576783465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c8c8f95e484d159f75399ae61b1e834a7bba9783577d8d74d812273348901e
Date: Sun, 20 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745176193
