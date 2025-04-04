Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480941EE7A7
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743784195; cv=none; b=mNTQHa5QYw8+wPPkS5Ve54aLhO1biAlZEOqSOui4RaPOql7XUy3JXqejiaUA0Wd0Y3xs7uGUU5MUc0FktOzpMrLjdYj98VU+5GourWGGrhyUbz1l3vsNmExY1R47HGAK1fcXHxA3QXdtSEo46zWQ3QZiNk1gG+K2auWDzbRDDg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743784195; c=relaxed/simple;
	bh=ztf24bj8TViQHw9yRXkNiyVJsYr3waHz47nwIJLtLDE=;
	h=To:Subject:From:Message-Id:Date; b=LhV4QgOw19PhbcaVMrZOQoLJPlLQSpBTsxul+wRcwQzlXBycROgm7oZYlE9bBaNknxqayI52clfxw5MyHuBUEUz1J4KThaxhbeKu71DZeeu7ODUaJOqu6boPh/EZaer48GyZcXaXlAI5yQcDe9X315K8VVaRLNVJYMy1CfzKvzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+YhEbq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+YhEbq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6DAC4CEE8
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743784193;
	bh=ztf24bj8TViQHw9yRXkNiyVJsYr3waHz47nwIJLtLDE=;
	h=To:Subject:From:Date:From;
	b=R+YhEbq+5oDRRqKZuf0TUK7qLRjw/y4mGJNvMuYUTgDhejS7lUs5Ti/UxHrsca7Wh
	 2sTUzuI5LmrxN1eRnSGQ/m6WmcOiFmLfapsCG4TJp++X5cxXSWmXJg3uGRvI/Xf3xp
	 XtiZ809sbF3fMaWJcIknJi04fyBrrJ+psD/VPfQLFKQ6nJSR4NuBgqRPoMIW8U63K8
	 sBDxKXbMr3oZYWcL/VNFki5NgkWn38wt58ra9+PC2j82KvjLe2u7oKy5mWBQCU8ODp
	 fPw8uD/l5n/iKaYbBT4DkCe3BjKDk6LhKKuR4vAubPKYbkCb9BwQZ1FGWTBDDNWUy7
	 w8OA1GGu/2VpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AFFC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378419360.29244.8472826189927056967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8146782990007b3bcd5941421affc8c6a7f107769399008a026f574a0a33dbc6
Date: Fri, 04 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743784193
