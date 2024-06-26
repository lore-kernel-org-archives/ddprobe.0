Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FF115B7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719429803; cv=none; b=VhGFH8lTSS43X+zdq4xQ4ibqohMVDqMnTupbmyZybFs0BrjtrdfmOTgXrNSl5hE1OYC0q6bHqtXJThXh7GiaNvJqe+l6gKxQrAfzuD/4GRB4OSqgMeWJd0Hr/Yd13rEuMYDq9H55pkmfGf8WImNYqBbav/Ym6RGTMyhUFor50Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719429803; c=relaxed/simple;
	bh=PreY6sabr8KsIClT4QNYycEzyQlUCPex60vhBXejE2I=;
	h=To:Subject:From:Message-Id:Date; b=V36ak3HwMhoaTYaPDRk1R47Wg/YU+ro4UCXQUeXJpdeCFn/u6wqO9ghiG7XXuersAf/D0iMzN7w9TPIVDjIapERTrwiovksc17kc+itKBwk42sLnbficyZFxEq1guodJD3ljXz0nHnJ4KU6qPpNOUSP41QXspjRvuM6qofg00us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WutsnaF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WutsnaF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7904C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719429802;
	bh=PreY6sabr8KsIClT4QNYycEzyQlUCPex60vhBXejE2I=;
	h=To:Subject:From:Date:From;
	b=WutsnaF5ffkUqX2w/HeWJUdPNuJvh5t9Q8H/TAJPyyYyjUB0BSscmB+gWGCIHZ6vo
	 lsIav5lOT2p3LVAJLKeyaMaVHHRXufneDX9dutYCV9mnzR6SAzdFf36GMvv9dOlHhN
	 PIvAuQaZBpCj/5cEsVr2kiltaD60anupq/aVxz1y0a7+f6uJaigRqn4PM4YteJvjdQ
	 lDO8zRur8DsAynZcWVoavkjwa0hEG/RhKQqdUpvMupDxlC5fdOyReBCZKTglODDp0U
	 fMfwU03pzuZfwrLNx9LDqV53OoJEsyU0CnuueNmYtTB/pQF789Kia26oFQid4eSDYI
	 ZV07EPhSxQcVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CE1C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942980279.23125.12931605898955087906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24cdaba63097cc005a753e9e0fdd9911879d517a35cc665be7b44cac318ba57
Date: Wed, 26 Jun 2024 19:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719429802
