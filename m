Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FBE23C50F
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755529194; cv=none; b=TTvWywPXVzowcZMIEGnvkGWYIJqecX4Ld2EriA54OvOIMK3sxkHZmSJqqlEnA77LFB1Z/XqugGNZXSaL0rVPwBLoZz14i6HMevPGFGFbAo3LGUk0tKBL71nfABYoWpO8g+STImfIP+NxkpsQHr5l7KZWqaG2b+dNo70MW8fsxtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755529194; c=relaxed/simple;
	bh=UOO1zyhrbWhYAioXQPZ87aZvJn/zjMlH6CaxFJr/p2Y=;
	h=To:Subject:From:Message-Id:Date; b=u5IOV4XmE/d7/c0o+haXUQnf1emGLI24rWppMj1XaUf0uhIem9mg0WqfMJ7m+UdNI0Wb3gZmR+RInvIxLowkxYQeTdCGj4op41C08CO9gMngQsthpoTL91mKsHsqqp1u4NeSF7dUHYggobcPKRfkohC55j0GGOSFrHNOwWQ34LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/LWWqj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/LWWqj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81DAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755529193;
	bh=UOO1zyhrbWhYAioXQPZ87aZvJn/zjMlH6CaxFJr/p2Y=;
	h=To:Subject:From:Date:From;
	b=Y/LWWqj20MkyAF5ibxRL1AUsqC9lbYqYFPUmKvS6ANTvPWImngKepNCLmuGpTTn/P
	 YmFr4kCVCcveHKRSYvJiabHOsM6k3y4mzL6eW2cUljT/fgpbl4qhpxDKWx7vEhZg3K
	 OOEDKsHjQW+7QubveUItYERXkF9YDTrbzktMgGfwpgnkt+K0GQPuzBhWtV7ulLOSHm
	 8U+l+/RHJexQ51HdEvV5JFAko9a76OAYLDeNziBvY4EYhPn2gU6auyLFuHaKNpQrWJ
	 zrxq2xxgnaMGXvTDBhIHH3dmA7LD5zVqmgsxSV4Jg7wUyfK/R7uwbiMQBaiInnCzNc
	 O8S8Tkqpt6qCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D9CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552919358.5141.17528458587047703980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fd3e7405863523b83ddd9eccdfd8ab3fc74205ab11e19133af58cb9ef81163
Date: Mon, 18 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755529193
