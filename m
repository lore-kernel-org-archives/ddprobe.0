Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F96339A8
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771013094; cv=none; b=anvxHlfbRQnLuQt0dLuUczE7Y3ttVnDYCv0wGWc9P0gC3G2qhtZXvyNKjkjt0jSO9kN/E+HCwjopNG9T/NPLY16vcNBOFSb3wRn9XOXmy07pEbQjAKktoOLXLoOln8TafF8OKbVWFjKhRQobWQdNVWJ2yhLxJQR8vxd05fLw7Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771013094; c=relaxed/simple;
	bh=D6YRrVfNbAt7gSYy2hRGgeB4Wmxu4+TmnON6eUZhs08=;
	h=To:Subject:From:Message-Id:Date; b=s5OQ8jFbB2lLMpZA0fgwf//ZLnvTM8eHzkNB3ebFQKYsRXuX/Ie4od0aHmq1ZpyTgjjZLSaaa4VUZ4SIyucM0gnLaIvx+TBfzoB/zJ2+wXIaPH+vpmxBN0ozJaMm13dPPhLkZqI9cjz2a/NEiWfxAwKIwv+KW6BRS9SBH/ohz2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONOJnapL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONOJnapL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92F8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771013093;
	bh=D6YRrVfNbAt7gSYy2hRGgeB4Wmxu4+TmnON6eUZhs08=;
	h=To:Subject:From:Date:From;
	b=ONOJnapLh6tF0XLCTnbwqX2mTIZeky+Vdgfplbyw9w113wFUcB0C1D4vpi4DKEDWc
	 ThNVkriM0SetZ8UBG7IGeT1U9cQBaoNXw+t6I4h+FzmGjcIpLA7MZGeFvdOX40e/BL
	 5FXRcJHiIl7nzKvpyzyywczTV/+HUaqAG5YmmtcDtXtpGFUp41nIBti0h7ZPvsPhQZ
	 U4WadhopRCnHh12KEthz3vUkkNbq5e4bMHe5xVRiyIzhvhgFNXxurp/xmcx2F1ETfZ
	 3fgz3IJeOO89TwE0rj7djsoC8Xp/oeFv0BzbU/eiCye5bZFEhDTlMJxETOZDFLxR/N
	 2Ha7UbBL7Oerw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9885CEF99DB
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101309358.8337.8006343837938490827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb49a47005d22ca4a0854fc86bfc88935b38b33e5fca2e2e5c136b7f26fe55e6
Date: Fri, 13 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771013093
