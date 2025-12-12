Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0F11891A9
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765506774; cv=none; b=pEpNQHLGjzR67eujHzeJHZ29Ind4A/L5ZBHWp7/v4lyr5NvYWk5WIr9jhw1AA6vpEh8QlO0jWeW3B3vXdF4Bb6+73RohOqfGBdO3zEhMfCybessZxaq9axZsUrB95m7zIr9wg1wJqddhXZPtWyksF+ci7JX/2ypGdFZUc+UCNBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765506774; c=relaxed/simple;
	bh=6AbMFCGLXXT6agaqRxzyAzeqjmo2Cyg6RsJ9EmBX5ck=;
	h=To:Subject:From:Message-Id:Date; b=P4I0pEG2dhIi+iMi23dR49qhhnjWKwxPJZRqS7Uli27BNjd2ZCCSBAGHxhsSAD8IOVfsaNCOJBdp0Wmesuj5kmj1ilZcOK1gS42fvicpEsV6OOpNnGEJFVYpQhVfvFJFgqWiZgzKE8qKyRCJ58d6kVUeVtHtlAAedjuWh/R7P6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiNYpJzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiNYpJzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A2AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765506773;
	bh=6AbMFCGLXXT6agaqRxzyAzeqjmo2Cyg6RsJ9EmBX5ck=;
	h=To:Subject:From:Date:From;
	b=qiNYpJzC+G0lI6wVT4bitwGP7it0I6kAqWIHlFd0PR7xvx/MHMBCBV5HFbf4qYnI/
	 Le5JXp7kJgUzlDkAGcDthMgH2+ojvIa5kSoAhlG59FOMDYUqynGtyfwBA4+tXkEHbU
	 drxzHd4QRhnfNIKIFbPgFxQqXayME0rQzsqkovCYPZf+hdDObsqVSl/9QNvhXX7ouR
	 UoDA3jofK6cgPs8J53R34FUxf4Q3lWD9ZGOIJ+qix4rn9OFzf6PA0oVAqF14B10UVB
	 YUASUr/xhf1mbg8objw5y265MExpBtJZtkdy1kd4AQeHoDlKzfaRB8rcKa11AHyfqR
	 KN9olSQ7QWd6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBED43368
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550677358.10992.6160488053497099696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd06b335262a85e356fe4c9146b2aa73cc0b74906c8abe3014bef7d2d7c4d7cf
Date: Fri, 12 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765506773
