Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E608A348C54
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789565435; cv=none; b=bx17fz7Gw265gHn/ThNft6ZUKXYM0thueOAaTs+UDK/IIVbONVoZ+j49DYRoSxsiYotu5ZXWxj3Pa5qghAx//X6xtu4cpzllfde5a6pWK1hgeeH4ApJCySyjlKo/47Lj9ZZ3IAFJxsOBAWgn1Do6gnIERPFq2I91jEblmXY8CFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789565435; c=relaxed/simple;
	bh=XhLVnQZmrgJPo1gPCPlYGdnECjXNQOr0ZDzsjNRU8bQ=;
	h=To:Subject:From:Message-Id:Date; b=pNw0dE490fnBmA3lBjS9n5/okoMn9Tkm5hwNEbDdMX8IRhKA+ZBb0QpMgJvjroyMphC6juGyJTiBOHUHAwRetApL5jwHCBorOUKrzi+AflKdAbT3jg2Sm38ddSLHibtbgjQk+QJiLHnNf1VuigzFbYwGIn2RobTZQGJo4pvoWqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnSj69MF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnSj69MF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BC3C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789565433;
	bh=XhLVnQZmrgJPo1gPCPlYGdnECjXNQOr0ZDzsjNRU8bQ=;
	h=To:Subject:From:Date:From;
	b=SnSj69MFdSWgLCpKxyO5a/ksTVeg/m2PIzks0MZf+lYU/5U9cLJOg2JWgqsj6Ehh9
	 KhBr3Q6pKsmm04FiO2YkXTzZ48ApiqNXHclPg99oJyRH4YgGOUCR59WWeD+9tXQubC
	 UlK0HjzSeiDhRMTn1Rp/NT+s2LMgpyZzb1WmNlgn56RvrUCmRC8VI/KENtIX7MHct4
	 EceIgcSNI1i8UItx1qXduBKCG1EoTvd3JBphP31L9FcfaphyGBtDn5l3TWce0nr2ZV
	 o9PrwinRXJ0gRueCSkAYe9sUOErm4rzyU0+qEnJUB7po5Qqk0DDlTBa2V8PUq+VPd4
	 omyhp1qUhHTUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC660C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956543369.9551.14421490904020565329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6d45316f6f53dffa874178f75af19ab40d5df4d1c1c4057c32e6338934dd19
Date: Wed, 16 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789565433
