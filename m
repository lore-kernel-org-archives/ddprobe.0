Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA183BB48
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 23:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718063303; cv=none; b=Onw9c9ZTUJGQ6ePk0idGBfC+Z50Kbdn3oLYTZIZS3hG9VLHwtgp5IYLdvWqSo7mXTm7cl+5WBgdFC6jUkSxJSCMdqL6XilpKs+eekyJNfBbWvKEm9Eaw1SNO5vd02/T60VZBSPQYPkDlTmL4KY6TwqOYVSXcjSPjKliWAlHFp4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718063303; c=relaxed/simple;
	bh=Q+YBlWuxDP8bL80gnyvK14bxzae6lOKvMBO3VCP0Mm0=;
	h=To:Subject:From:Message-Id:Date; b=McMJl+w6QiIr0fhqo7r5ObdUnRmU24FLIGd4hlh9m51WVoW47HgYQXFW++jucr/DgpOdDHWa1Z1PAxFl5FPTcq++NLqNz7zPDFv/AykCrUgEsXPX+rSctU3A6whGX08Spk8DssnQvgomCtukaWQuDgpXQgdPb6NdhFJvYNvnHq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vlwi6wOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vlwi6wOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E17D4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 23:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718063302;
	bh=Q+YBlWuxDP8bL80gnyvK14bxzae6lOKvMBO3VCP0Mm0=;
	h=To:Subject:From:Date:From;
	b=Vlwi6wOhOioea5UYlaIIQIpPAfhIf4GsUm9uw0QedmJCVTc0IIjDZF/+wVz0xlpMw
	 WA5teI0y+8arwgh6ib7yKP2fLYYtAxQaedVqxaZu60W6QZ0P297MUjY3f2yNghoPLa
	 +VilsNUqVK/box5fs5D8QBwEhe7q36RFLtOdw7YGN4rjkwrYUYo+o+vBh40Frqers0
	 0AnjyDHG5nrp4GXaH1NjB461e+sn7RqS1JrNPfi/MzftvbsUfqzdgZ8J9Wn+yeuLMx
	 V0yknKJoW98vB+/W3r5OluDsVg2ipcGo+VkAPeMgK5WY7jwUlotmWB3g72oi0D+5I3
	 VSs/sNoLSj4nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD2A9C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 23:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806330280.8636.2993123391771607430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f48bb043387e64dfdabd909f9d4f0c4df41b1ca7a9bd99f97bb7489c1cf1c44
Date: Mon, 10 Jun 2024 23:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718063302
