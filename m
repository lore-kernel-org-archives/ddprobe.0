Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63524EDB
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718022443; cv=none; b=YZWym1meAn2WrYVG4HMp92SANaFYAlVTTcOXgPNSGZ1MNFoWWHvfXxQIeFrmDttVkBufil0NJrsA4tHL8WdNi6YqAapuw4S0lU6w2ijeS5HCH/VbqbPWIJGrkzw8BlCSydMlR1kiFnjZmEb1MnL3Eh2tdflvOvxeQU3xRnduugU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718022443; c=relaxed/simple;
	bh=rGGvBoTOJgaWdM1B/opHkruMgU0voPoaER49/NJxCwE=;
	h=To:Subject:From:Message-Id:Date; b=AVjxPCfEoSoF6tR74lSYFZfaL7Lkl22WFC5hUzcRdMkA+ydg4XWVrxOiRyymgdqkkqCDg1xPR46y5V9flhbGgU+CbK6x9s3sauVzwldjfRSR0lcoIyLBYLWIXyLXnc0wNq4wJcw50aiaQm/0tX8zBHb0BLOrtbGCq02TmnPSDiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXrAex4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXrAex4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5687C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718022442;
	bh=rGGvBoTOJgaWdM1B/opHkruMgU0voPoaER49/NJxCwE=;
	h=To:Subject:From:Date:From;
	b=pXrAex4RXdV5PKdZgbrsR2EIyett9E3qTzpTlXb2NNRCuP1W/iRu7VAMdydSRNlvA
	 VMRFWVdsXIsiK7A0U30CROPHACP2WfreWC8jp4oGvr0WF9YdBEM/biuBvO0m5doFk1
	 /imRAKi894J3Lx01OggOrzPB8XmljjLXfTOuUcvene11uepD/UB4uA3QRi6w0CBQlm
	 r0groMbUveD6JP0eMb66n7yqkbJ765YDjRI0tj1PfnOKJsMve5Y6Q9GDt7YopGcU6t
	 F0U6lXkxuVbWIl7ZpTt6sF5IOaxV9aSOK0NrqPfHBrpgGwrXscjduMdONixeBzG/En
	 UPnAItB2e20Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE29BC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802244277.28789.8979384827155528191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e4c768742867be7c0d9caeaece042cca511f6bdef09a54e4dfb8a3308732ad
Date: Mon, 10 Jun 2024 12:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718022442
