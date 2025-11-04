Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34D032F77C
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762273194; cv=none; b=I+QTH7Dqu7+wA7oW6KCng4rP7yewcjGJmbwwQfqtO5hiKUve+v+rGsBGmxrhiKxqcHqdwXzEaUOCtHp2VRwSe82+Fj4aH+1m3Dr5pk8t1Jol1FPKwqZOujRVRjVrqj386HMCYISkzo03LXSX9tQpDfcdUFnQi9cyTv8DdUszigY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762273194; c=relaxed/simple;
	bh=LJt8umB0M5aSPY0aTcncAQVJocYO0qU5LTUHQLek0d8=;
	h=To:Subject:From:Message-Id:Date; b=s+n2DbEdsg8mqe4XIgc7KWSp8n/4TQ0ceaHy0/rDbXSNFhRYKHctSpr5N+Of12MQaxVrMqp6qZVpPWOHPSqTUC5Lu6424Nz5qivxrkscA3njqIb1WjVkIj+XVlI595sAeMgjzrOD/BYxVql3a4/r+Qd7cHy7XLCHclTa4gbYaoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzTFN6pJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzTFN6pJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5F6C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762273193;
	bh=LJt8umB0M5aSPY0aTcncAQVJocYO0qU5LTUHQLek0d8=;
	h=To:Subject:From:Date:From;
	b=FzTFN6pJXNcq3oQJ6NdTGa52kwtwxtnc54u/gIL5mo/h/LvxpDqeEOJqiI3TCaoo+
	 IGZq3SG3S/R6qaQ3gLtzaotzA72fUSKkDAuvQrFCwCmHtJHPti/lkXa565xn8BhmEl
	 UwvvOP8LcFgnTwMJ3ZsZCINNxdHamzu0NU7pcQyootS9/4az6HEqnFa0phlFVWoaO6
	 q3UWe5ypfnJwk0EMyIJhz5fM7KCRgPfcvGV06KjXdmhe3TRjUwCtW48JcGUp1HPZzm
	 Twg9OieKnj6uiukeMsU+9UN49E5u2v7bFk5NyDt6ralbX29Wg0qc7P2C2V3OnOe3ru
	 0DK0RuZBoL2iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB98CCFA07
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227319357.28871.7993481295220792673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ebf53d8c4bd698f80da45c5e6ffcb825b4a387b721fcc9cd10d1a711c89979
Date: Tue, 04 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762273193
