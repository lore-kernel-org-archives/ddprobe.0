Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2977A14A60D
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726617354; cv=none; b=g9qvszZo3ieTnJafmFE0H7lYR6y50b95d8vrHld5lAaU3QgVrrNoCl+obtORvNL7S21oKh/QLuxAfewICWiJyrR2Qh72tEe/sWEP78d8IWL93y4Fe8XgTlinrn4LV3jBG/b+egX0Lq8WcCZLZQOtiCxWr+k2EGk13kO4UXUdZow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726617354; c=relaxed/simple;
	bh=0yyz9eQ41eQ9Z1N47L8LtKzaOb6A/i4FYTggOUoGZdo=;
	h=To:Subject:From:Message-Id:Date; b=AvicidHdJ8U3XTx1fxs6VVrAcS6FVwnDxvtuO0rSIlZIT2/x9PnNH6ogGD5BMccMotA9qUhK2TIBzodVgQYfvX0n8/Kb8ukcwssbkY9VKmae96KkGUDtgdiW7EwDn3NePC6V/18DbMWeIdPnIK7KCLa2D6uYUd+hUhIdsdNePiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEUNqI0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEUNqI0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5659C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726617353;
	bh=0yyz9eQ41eQ9Z1N47L8LtKzaOb6A/i4FYTggOUoGZdo=;
	h=To:Subject:From:Date:From;
	b=JEUNqI0w1UGPyX9wfNg21MIv+y8xvFNENyCnSODwmhAy+ooWQ83aTLzEZptX0Wcm3
	 erRou+YfnIDDwJZdmCR7X1r0C9cFR2CTK+P7rmZwogaibUuXYTwzeFxRY8dTTuOvw2
	 DdXDPd5LIAYL3Yr6EZWi3AXQvCVH1iXAKT9jKzCqf/KqQ3+hD2coeP56Ub4aOja3vf
	 WtrftTTP+TQ0F7JWORpZsGNCqIJ6q4yAWmQTlo4Mgm3y9zgiLMLV39qghRUfsphUT+
	 sQt7LKMnjlVfq58ukJ1LS3bsDKLDkk5WmiLbb0hJlB5CO791ZplRu7c9TuhH0eVuki
	 8ZM4U7PaZuRVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C3FCAC590
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172661735359.27402.5315745690565438942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba0f255d99e6b0db748e9813c2caecd98540b12f4ef5cccfac64eb042dc8363
Date: Tue, 17 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726617353
