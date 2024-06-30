Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD4674402
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719786863; cv=none; b=Pi95tcXtKQ1CR5cWeh2RV7kjLzi7HMhJFhqrNHcAQQPfGCE4p1HukjQNZvc5HrK9hXVfRqZKdk/+v0LwaagbweIeDN0IKYtdh4pXKqY8lyjuZ0ht+Sqw6jQgGm1rEfHnzw/4hyAamxjvVFSHKAbLUdyrubxgTUHWHfFZQVdMh4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719786863; c=relaxed/simple;
	bh=FEzYuEY9MHu/iiy/0DHnryKmJgLKTwamgt/q8rn/1wc=;
	h=To:Subject:From:Message-Id:Date; b=lIDd3rzI+Cz1ac9c+Q8QhEMCNb3wp9tjNZP8L3A2IS0wXUvf5PiykbFC2eh2+Kz5XHrCYUjo+2fC7Z9duDuB/4NiRtOeC1LFiat+o2GZlGxW9cXyQVhJAKlMIMUGEpAXK6A+rFmHdo4/C3S6AalPk0IvxzzWUUtwuBrC1iMVaHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYdYdrpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYdYdrpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E40C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719786862;
	bh=FEzYuEY9MHu/iiy/0DHnryKmJgLKTwamgt/q8rn/1wc=;
	h=To:Subject:From:Date:From;
	b=VYdYdrpvwt8lZhOruy1eAKFr9Tx6Q0Z10P9Fzge+876DxNobzsw0NIWZQeZh9TVzU
	 CPCltj9X+rRqxNW9xxvmafmNITSDlYu4AcFZUBMdMcUebyOfCbYtDeW0x/rgRbiHmJ
	 IICffOACi36jz0MINqqmL6oWbV5SdTrkj1qh0dFRkSxPYDpJsx80AknhDakNDe/iZF
	 qTwXQCyRO5QDHad24ehVpZOvFBaVSYzTjWoG+2lRCQQwHa2w7B86rmO6J9Wmg4doyP
	 8qf78peWYv43lQLkaNdsvEjM3lqUIycbqxM0i06SlAHIMUVgTHLtCiuij6pQQ75K5x
	 Sl8by3ZzcwmUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD61FC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978686280.23548.9133832928236864892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384e0c1595b053339f56f6d1384f089f097d230de42cd93283436470f3402625
Date: Sun, 30 Jun 2024 22:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719786862
