Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512B1AD2C
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718115503; cv=none; b=YNRe2+PrC25gjp+hmXSurNedaGYTScVlL6q+6lm5NHNGP6dMhbb82tDJZnoC6aV6cvDaWfmXunAlO68Md8CUnTU9zq2oNb0VSKeKO8JvuQDv0vx7TpfSe5BrBFW9sP4PIZ7plj0Da99dc5+BSJWX2voRToa4dbqdErdcnkmWfhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718115503; c=relaxed/simple;
	bh=g3RvqAJrOZLSkkYAJDturFa98/QT3z78xIX7seQO8Bc=;
	h=To:Subject:From:Message-Id:Date; b=ITESZ0ooHQQS3Pfma3DDKGmFWTgeWPV7E+6pH+4mr51F3UD3oSv/PlErT48lvh+5iuSIy9oPoov0aBGciYvnsU3AU9xnexMMwmUyeTCbR9AnZtvOqMdx8fYjMA49U7TZ6EBJmsShStmyq77nNkZx4mcIk5Kd/yMEgWAQtZbwExo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orgEJy6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orgEJy6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE791C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718115502;
	bh=g3RvqAJrOZLSkkYAJDturFa98/QT3z78xIX7seQO8Bc=;
	h=To:Subject:From:Date:From;
	b=orgEJy6+dxXViKLeGfycs9XidowxAfyuOoLIMxbJTSG92yX5mUqWoADhVsKO/9zkc
	 O76RE8miJ1S2Jz48ynLy1KMKbn/xJ0QKnuvI2VEaaUNJcB0YwkxLsiEvgBORN5VGI0
	 YTcT0ObV2yfThhOFNRg01lSmEEPTbdLDWOHn+Hf+TLwQAZHGzsQ1SH9siJFRoCBaxB
	 DEB9lt/jobG4DtqzwR3zeIkgnvCy4XpFLuBKutMfZ1s5Sd4poQpRPFyd1dJswoiu1n
	 C9JNuulEXbAqKpy4ct8iU6VmPArLdf7FAEwUIyFJYONP8OzuKi3gnmag/5j8JW0Kj/
	 zOv++dbWHQSUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D82C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811550275.19845.14327550656119434354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98fe7f7d2356b8c3e140bf2841e4ea884c75ebfe3bb49cc69515c2c9946e1eb
Date: Tue, 11 Jun 2024 14:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718115502
